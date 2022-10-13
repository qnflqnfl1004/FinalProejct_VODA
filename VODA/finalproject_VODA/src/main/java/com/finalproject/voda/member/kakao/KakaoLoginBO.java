package com.finalproject.voda.member.kakao;

import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.util.StringUtils;

import com.github.scribejava.core.builder.ServiceBuilder;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.github.scribejava.core.model.OAuthRequest;
import com.github.scribejava.core.model.Response;
import com.github.scribejava.core.model.Verb;
import com.github.scribejava.core.oauth.OAuth20Service;

//카카오 로그인 연동 Business logic을 처리하기 위한 BO Class
//인증 요청문

public class KakaoLoginBO {

	// 카카오 로그인 정보
		private final static String KAKAO_CLIENT_ID = "822adf4bc1d88bd6002dc7d6858ddd77";
		private final static String KAKAO_CLIENT_SECRET = "RQ5GoSaGaeUnr2s6N4M31VhbDn2RUGEX";
		private final static String KAKAO_REDIRECT_URI = "http://localhost:8088/voda/member/kakaologin"; //Redirect URL
		private final static String SESSION_STATE = "kakao_oauth_state";
		private final static String PROFILE_API_URL = "https://kapi.kakao.com/v2/user/me";

		public String getAuthorizationUrl(HttpSession session) {
			String state = generateRandomString();
			setSession(session, state);
			OAuth20Service oauthService = new ServiceBuilder()
					.apiKey(KAKAO_CLIENT_ID)
					.apiSecret(KAKAO_CLIENT_SECRET)
					.callback(KAKAO_REDIRECT_URI)
					.state(state).build(KakaoOAuthApi.instance());
			return oauthService.getAuthorizationUrl();
		}


		public OAuth2AccessToken getAccessToken(HttpSession session, String code, String state) throws Exception {
			String sessionState = getSession(session);
			if (StringUtils.pathEquals(sessionState, state)) {
				OAuth20Service oauthService = new ServiceBuilder()
						.apiKey(KAKAO_CLIENT_ID)
						.apiSecret(KAKAO_CLIENT_SECRET)
						.callback(KAKAO_REDIRECT_URI)
						.state(state).build(KakaoOAuthApi.instance());
				OAuth2AccessToken accessToken = oauthService.getAccessToken(code);
				return accessToken;
			}
			return null;
		}

		public String getUserProfile(OAuth2AccessToken oauthToken) throws Exception {
			OAuth20Service oauthService = new ServiceBuilder()
					.apiKey(KAKAO_CLIENT_ID)
					.apiSecret(KAKAO_CLIENT_SECRET)
					.callback(KAKAO_REDIRECT_URI)
					.build(KakaoOAuthApi.instance());
			OAuthRequest request = new OAuthRequest(Verb.GET, PROFILE_API_URL, oauthService);
			oauthService.signRequest(oauthToken, request);
			Response response = request.send();
			return response.getBody();
		}
		
		private String generateRandomString() {
			return UUID.randomUUID().toString();
		}

		private void setSession(HttpSession session, String state) {
			session.setAttribute(SESSION_STATE, state);
		}

		private String getSession(HttpSession session) {
			return (String) session.getAttribute(SESSION_STATE);
		}
}
