package com.finalproject.voda.people.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.voda.common.util.MultipartFileUtil;
import com.finalproject.voda.member.model.vo.Member;
import com.finalproject.voda.people.model.service.PeopleService;
import com.finalproject.voda.people.model.vo.People;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/people")

public class PeopleController {
	@Autowired
	private PeopleService service;
	
	@Autowired
	private ResourceLoader resourceLoader;
	
	
	@GetMapping("people")
	public ModelAndView people(ModelAndView model, @RequestParam int people_no) {
		People people = null;
		
		people = service.findPeopleByNo(people_no);
		
		model.addObject("people", people);
		model.setViewName("people/people");
		
		return model;
	}
	
	
	@GetMapping("/peopleEnroll") 
	public String peopleEnroll() {
		
		return "people/peopleEnroll"; 
		
	}
	
	@PostMapping("/peopleEnroll")
	public ModelAndView peopleEnroll(
			ModelAndView model,
			@ModelAttribute People people,
			@RequestParam("upfile") MultipartFile upfile,
			@SessionAttribute("loginMember") Member loginMember) {
		
		int result = 0;
		// 파일을 업로드 하지 않으면 true, 파일을 업로드하면 false
		log.info("Upfile is Empty : {}", upfile.isEmpty());
		// 파일을 업로드 하지 않으면 "", 파일을 업로드하면 "파일명"
		log.info("Upfile Name : {}", upfile.getOriginalFilename());
		
		// 1. 파일을 업로드 했는지 확인 후 파일을 저장
		if(upfile != null && !upfile.isEmpty()) {
			// 파일을 저장하는 로직
			
			String location = null;
			String renamedFileName = null;
			
			try {
				location = resourceLoader.getResource("resources/upload/people").getFile().getPath();
				renamedFileName = MultipartFileUtil.save(upfile, location);
				
				System.out.println(location);
				
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			if(renamedFileName != null) {
				people.setPeople_original_filename(upfile.getOriginalFilename());
				people.setPeople_renamed_filename(renamedFileName);
			}
		}
		
		// 2. 작성한 게시글 데이터를 데이터 베이스에 저장
//		people.setPeople_no(loginMember.getM_no());
		result = service.save(people);
		
		
		if(result > 0) {
			model.addObject("msg", "게시글이 정상적으로 등록되었습니다.");
			model.addObject("location", "/people/people?people_no=" + people.getPeople_no());
		} else {
			model.addObject("msg", "게시글 등록을 실패하였습니다.");
			model.addObject("location", "/people/peopleEnroll");
		}
		
		model.setViewName("common/msg");
		
		return model;
		
	}
	
	
	
	
	@GetMapping("fileDown") 
	public ResponseEntity<Resource> fileDown(
			@RequestHeader("user-agent") String userAgent,
			@RequestParam String oname, @RequestParam String rname) {
		
		Resource resource = null;
		String downFileName = null;
		
		log.info("oname : {}, rname : {}", oname, rname);
		log.info("{}", userAgent);
		
		try {
			resource = resourceLoader.getResource("resources/upload/people/" + rname);
		
			if(userAgent.indexOf("MSIE") != -1 || userAgent.indexOf("Trident") != -1) {
					downFileName = URLEncoder.encode(oname, "UTF-8").replaceAll("\\+", "%20");
			} else {
				downFileName = new String(oname.getBytes("UTF-8"), "ISO-8859-1");
			} 
			
			return ResponseEntity.ok()
					.header(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_OCTET_STREAM_VALUE)
					.header(HttpHeaders.CONTENT_DISPOSITION, "attachment;filename=" + downFileName)
					.body(resource);
		}catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
	}
	
	
	@GetMapping("/peopleOnclickButton") 
	public String peopleOnclickButton() {
		
		return "people/peopleOnclickButton"; 
		
	}

}
