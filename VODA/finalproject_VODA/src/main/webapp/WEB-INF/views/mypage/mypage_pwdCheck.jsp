<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>

<!-- HEADER -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
	
    <!-- my CSS -->
    <link rel="stylesheet" href="${path}/resources/css/mypage/mypage_main.css">
    
    <!-- my CSS -->
    <link rel="stylesheet" href="${path}/resources/css/common/btn.css">
	
<div class="container p-0">
        <di class="row">
            <div class="col-sm-2">
                <jsp:include page="/WEB-INF/views/mypage/mypage_sideMenu.jsp"/>
            </div>

            <div class="col-sm-10">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12" style="margin-top: 40px;">
                            <form style="margin-bottom: 3px;">
                                <h5 style="font-weight: 600;" >개인 정보 조회</h5>
                                <hr style="margin-bottom: 100px;">
                            </form>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-12" style="margin-top: 30px;">
                          <form style="margin-bottom: 50px;">
                            <span id="span01" style="font-size: 0.9em; font-weight: 500;"><center>본인 확인을 위해 비밀번호를 입력 해주세요.</center></span> 
                          </form>
                        </div>
                    </div>

                    <div class="row" style="text-align: center;">
                        <form action="${ path }/mypage/pwdCheck" method="POST" style="width: 100%;">
                            <label>비밀번호&nbsp:&nbsp</label>
                            <input type="hidden" value="${ type }" name="type" id="type">
                            <input type="password" style="border: 1px solid lightgrey; border-radius: 0%; height: 34px;" name= "userpwd" id="userpwd">
                            <button type="submit" class="btn btn-logoC" style="height: 34px; margin-top: -3px;">확인</button>
                        </form>
                    </div>

                </div>
            </div>

        
        </div>
    </div>
    <!-- 내용 전체 컨테이너 끝 -->
<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>