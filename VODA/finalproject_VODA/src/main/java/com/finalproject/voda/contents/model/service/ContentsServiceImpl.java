package com.finalproject.voda.contents.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.voda.board.model.vo.Board;
import com.finalproject.voda.common.util.PageInfo;
import com.finalproject.voda.contents.model.mapper.ContentsMapper;
import com.finalproject.voda.contents.model.vo.Contents;
import com.finalproject.voda.contents.model.vo.ContentsPeople;
import com.finalproject.voda.contents.model.vo.Likes;
import com.finalproject.voda.contents.model.vo.Rate;
import com.finalproject.voda.contents.model.vo.RateLikes;
import com.finalproject.voda.contents.model.vo.RateResult;
import com.finalproject.voda.contents.model.vo.SearchPeople;
import com.finalproject.voda.contents.model.vo.SearchResult;

@Service
public class ContentsServiceImpl implements ContentsService {
	@Autowired
	private ContentsMapper mapper;
	
	@Override
	public int getContentsCount(String type) {
	
		return mapper.selectContentsCount(type);
	}

	@Override
	public List<Contents> getContentsList(PageInfo pageInfo, String type) {
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		int limit = pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);			
		
		return mapper.selectAll(rowBounds, type);
	}

	@Override
	public Contents findContentsByNo(int no) {
		
		return mapper.selectContentsByNo(no);
	}

	@Override
	public RateResult getContentsRateByNo(int no) {
		
		return mapper.selectContentsRateByNo(no);
	}

	@Override
	public List<ContentsPeople> getContentsPeopleByNo(int no) {
		 
		return mapper.selectContentsPeopleByNo(no);
	}

	@Override
	public int save(Rate rate) {
		int result = 0;
		
		if(rate.getRate_no() != 0) {
			// update
			result = mapper.updateRate(rate);
		} else {
			// insert
			result = mapper.insertRate(rate);
		}
				
		return result;
	}

	@Override
	public int getCommentsCount(int no) {
		
		return mapper.selectCommentsCount(no);
	}

	@Override
	public List<Rate> getCommentsList(PageInfo pageInfo, int no, String sort) {
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		int limit = pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);	
		
		Map<String, Object> map	= new HashMap<>();
		
		map.put("no",  no);
		map.put("sort", sort);
		
		System.out.println(sort);
		System.out.println(no);
		System.out.println(map.get("sort"));
		System.out.println(map.get("no"));
		
		return mapper.selectCommentsByNo(rowBounds, map);
	}

	@Override
	public List<SearchResult> getContentsSearch(String keyword) {

		return mapper.selectSearchByKeyword(keyword);
	}

	@Override
	public Rate getMyRate(int rateNo) {
		
		return mapper.selectMyrate(null);
	}

	@Override
	public int delete(int rateNo) {
	
		return mapper.deleteRate(rateNo);
	}

	@Override
	public List<SearchPeople> getPeopleSearch(String keyword) {
	
		return mapper.selectPeopleSearchByKeyword(keyword);
	}

	@Override
	public int findLikes(Likes likes) {
	
		return mapper.findLikes(likes);
	}

	@Override
	public void likeUp(int mNo, int cNo) {

		Map<String, Object> map	= new HashMap<>();
		
		map.put("mNo", mNo);
		map.put("cNo", cNo);

		System.out.println("map=mNo" + map.get("mNo"));
		System.out.println("map=cNo" + map.get("cno"));
		
		mapper.likeUp(map);
		
	}

	@Override
	public void likeDown(int mNo, int cNo) {
		
		Map<String, Object> map	= new HashMap<>();
		
		map.put("mNo", mNo);
		map.put("cNo", cNo);

		System.out.println("map=mNo" + map.get("mNo"));
		System.out.println("map=cNo" + map.get("cno"));
		
		mapper.likeDown(map);
		
	}

	@Override
	public List<RateLikes> findRateLikes(Map<String, Object> map) {
		
		return mapper.findRateLikes(map);
	}

	@Override
	public int likeCheck(Map<String, Object> map) {
		
		return mapper.likeCheck(map);
	}

	@Override
	public void insertLike(Map<String, Object> map) {
		
		mapper.insertLike(map);
	}

	@Override
	public void updateLike(int rate_no) {
		
		mapper.updateLike(rate_no);
	}

	@Override
	public void deleteLike(Map<String, Object> map) {
		
		mapper.deleteLike(map);
	}

	@Override
	public void updateLikeCancel(int rate_no) {
		
		mapper.updateLikeCancel(rate_no);
	}

}
