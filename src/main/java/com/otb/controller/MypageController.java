package com.otb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.otb.sevice.MatchingService;
import com.otb.sevice.UserService;
import com.otb.vo.MatchingVo;

@Controller
@RequestMapping(value="/mypage", method = {RequestMethod.GET, RequestMethod.POST})
public class MypageController {
	
	@Autowired
	private UserService userService;
	private MatchingService matchingService;
	
	//메인
	@RequestMapping(value="/main", method = {RequestMethod.GET, RequestMethod.POST})
	public String main() {
		
		return "/mypage/mypage";
	}
	
	
	//이용내역
	@RequestMapping(value="/history", method = {RequestMethod.GET, RequestMethod.POST})
	public String history() {
		
		return "/mypage/user_history";
	}
	
	//북마크
	@RequestMapping(value="/bookmark", method = {RequestMethod.GET, RequestMethod.POST})
	public String bookmark() {
		
		return "/mypage/bookmark";
	}
	
	//매칭
	@RequestMapping(value="/matching", method = {RequestMethod.GET, RequestMethod.POST})
	public String matching(Model model) {
		
		List<MatchingVo> matchingList = matchingService.list();
		
		model.addAttribute("matchingList", matchingList);
		
		return "/mypage/matching_history";
	}
	
	
	//회원정보수정
	@RequestMapping(value="/modify", method = {RequestMethod.GET, RequestMethod.POST})
	public String modifyInfo() {
		
		return "/mypage/modify_form";
	}
	
	//프로필수정
	@RequestMapping(value="/modifyProfile", method = {RequestMethod.GET, RequestMethod.POST})
	public String modifyProfile() {
		
		return "/mypage/profile_modify";
	}
	
	//활동내역
	@RequestMapping(value="/activity", method = {RequestMethod.GET, RequestMethod.POST})
	public String showActivity() {
		
		return "/mypage/user_activity";
	}
	
	//사업자전환
	@RequestMapping(value="/business", method = {RequestMethod.GET, RequestMethod.POST})
	public String convertBusiness() {
		
		return "/mypage/convert_to_business";
	}
		
	//사이드바
	
	@RequestMapping(value="/side", method = {RequestMethod.GET, RequestMethod.POST})
	public String sidebar() {
		
		return "/mypage/sidebar";
	}
	
	
	
	
}
