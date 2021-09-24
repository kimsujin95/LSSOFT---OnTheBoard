package com.otb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.otb.sevice.MatchingService;
import com.otb.vo.MatchingVo;

@Controller
@RequestMapping(value = "/matching", method = {RequestMethod.GET, RequestMethod.POST})
public class MatchingController {
	
	@Autowired
	private MatchingService matchingService;
	
	// 매칭리스트
	@RequestMapping("/list")
	public String list() {
		
		return "/matching/list";
	}
	
	// 매칭글 쓰기폼
	@RequestMapping("/writeForm")
	public String writeForm() {
		
		return "/matching/writeForm";
	}
	
	// 매칭글 쓰기
	@RequestMapping("/write")
	public String write() {
		
		int write = matchingService.write();
		
		return "redirect:/matching/list";
	}
	
	// 매칭글 읽기
	@RequestMapping("/read")
	public String read() {
		
		return "/matching/read";
	}
	
	// 매칭글 수정폼
	@RequestMapping("/modifyForm")
	public String modify() {
		
		return "/matching/modifyForm";
	}

}
