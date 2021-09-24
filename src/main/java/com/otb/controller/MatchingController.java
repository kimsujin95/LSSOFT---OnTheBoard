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
		System.out.println("MatchingController: list;;;");
		
		return "/matching/list";
	}
	
	// 매칭글 쓰기폼
	@RequestMapping("/writeForm")
	public String writeForm() {
		System.out.println("MatchingController: writeForm;;;");
		
		return "/matching/writeForm";
	}
	
	// 매칭글 쓰기
	@RequestMapping("/write")
	public String write() {
		System.out.println("MatchingController: write;;;");
		
		int write = matchingService.write();
		
		return "redirect:/matching/list";
	}
	
	// 매칭글 읽기
	@RequestMapping("/read")
	public String read() {
		System.out.println("MatchingController: read;;;");
		
		return "/matching/read";
	}
	
	// 매칭글 수정폼
	@RequestMapping("/modifyForm")
	public String modify() {
		System.out.println("MatchingController: modifyForm;;;");
		
		return "/matching/modifyForm";
	}
	
	// 매칭글 삭제
	@RequestMapping("/delete")
	public String delete() {
		System.out.println("MatchingController: deletr;;;");
		// deleteForm == modal
		
		return "redirect:/matching/list";
	}

}
