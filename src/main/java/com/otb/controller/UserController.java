package com.otb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/user", method = {RequestMethod.GET, RequestMethod.POST})
public class UserController {
	
	// 로그인 폼
	@RequestMapping(value="/loginForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String loginForm() {
		
		return "/user/login_form";
	}
	
	// 회원가입 폼
	
	@RequestMapping(value="/signupForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String signupForm() {
		
		return "/user/sign_up_form";
	}
	
}