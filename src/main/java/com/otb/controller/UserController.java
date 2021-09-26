package com.otb.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.otb.sevice.UserService;
import com.otb.vo.UserVo;

@Controller
@RequestMapping(value="/user", method = {RequestMethod.GET, RequestMethod.POST})
public class UserController {
	
	@Autowired
	private UserService userService;
	
	// 로그인 폼
	@RequestMapping(value="/loginForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String loginForm() {
		
		return "/user/login_form";
	}
	
	//로그인
	
	@RequestMapping(value = "/login", method = { RequestMethod.GET, RequestMethod.POST })
	public String login(@ModelAttribute UserVo userVo, HttpSession session) {
		System.out.println("[UserController.login()]");

		UserVo authUser = userService.getUser(userVo);

		if (authUser != null) { // 로그인 성공하면(authUser null이 아니면)
			System.out.println("[로그인성공]");
			session.setAttribute("authUser", authUser);
			return "redirect:/main";
		} else { // 로그인 성공하면(authUser null이 아니면)
			System.out.println("[로그인실패]");
			return "redirect:/user/loginForm?result=fail";
		}
	}
	
	// 로그아웃
	@RequestMapping(value = "/logout", method = { RequestMethod.GET, RequestMethod.POST })
	public String logout(HttpSession session) {
		System.out.println("[UserController.logout()]");

		// 세션의 값을 삭제한다.
		session.removeAttribute("authUser");
		session.invalidate();
		return "redirect:/main";
	}
	
	// 회원가입 폼
	
	@RequestMapping(value="/signupForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String signupForm() {
		
		return "/user/signup_form";
	}
	
}