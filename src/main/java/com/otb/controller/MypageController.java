package com.otb.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.otb.sevice.MypageService;
import com.otb.sevice.UserService;
import com.otb.vo.MatchingVo;
import com.otb.vo.UserVo;

@Controller
@RequestMapping(value="/mypage", method = {RequestMethod.GET, RequestMethod.POST})
public class MypageController {
	
	@Autowired
	private MypageService mypageService;
	private UserService userService;
	
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
	public String matching(Model model, @ModelAttribute UserVo userVo, HttpSession session) {
		
		System.out.println("[MypageController.matching()]");
		
		int userNo = ((UserVo) session.getAttribute("authUser")).getUserNo();
		
		List<MatchingVo> matchingList = mypageService.list(userNo);
		
		model.addAttribute("matchingList", matchingList);
		
		return "/mypage/matching_history";
	}
	

	//프로필수정
	@RequestMapping(value="/modifyProfile", method = {RequestMethod.GET, RequestMethod.POST})
	public String modifyProfile(HttpSession session, Model model, @ModelAttribute UserVo userVo, MultipartFile userPathProfile) {
		
		System.out.println("[MypageController.modifyProfile()]");
		
		int userNo = ((UserVo) session.getAttribute("authUser")).getUserNo();
		
		UserVo userInfo = userService.getUserInfo(userNo);
		
		String userNickname = (userService.getUserInfo(userNo)).getUserNickname();
		
		int count = mypageService.modifyProfile(userNickname, userPathProfile);
		
		model.addAttribute("userVo", userInfo);
		
		System.out.println(count + "건이 수정되었습니다.");
		
		return "redirect:/main";
	}
	
	//프로필수정폼
	@RequestMapping(value="/modifyProfileForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String modifyProfileForm( HttpSession session, Model model) {
		
		System.out.println("[MypageController.modifyProfileForm()]");
		
		int userNo = ((UserVo) session.getAttribute("authUser")).getUserNo();
		
		UserVo userVo = userService.getUserInfo(userNo);
		
		System.out.println("Profile: " + userVo);
		
		model.addAttribute("userVo", userVo);
				
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
