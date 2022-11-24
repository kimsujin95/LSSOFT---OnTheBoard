package com.otb.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.otb.sevice.UserService;
import com.otb.vo.UserVo;

@Controller
@RequestMapping(value = "/user", method = { RequestMethod.GET, RequestMethod.POST })
public class UserController {

	@Autowired
	private UserService userService;

	// 로그인 폼
	@RequestMapping(value = "/loginForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String loginForm() {

		return "/user/login_form";
	}

	// 로그인

	@RequestMapping(value = "/login", method = { RequestMethod.GET, RequestMethod.POST })
	public String login(Model model, @ModelAttribute UserVo userVo, HttpSession session) {
		
		System.out.println("[UserController.login()]");

		UserVo authUser = userService.getUser(userVo);
		
		if (authUser != null) {

			System.out.println("[LOGIN SUCCEED]");
			
			session.setAttribute("authUser", authUser);
			
			return "redirect:/main";

		} else {

			System.out.println("[LOGIN FAILED]");

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

	@RequestMapping(value = "/signupForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String signupForm() {
		
		System.out.println("[SIGNUP FORM]");
		return "/user/signup_form";
	}

	// 회원가입

	@RequestMapping(value = "/signup", method = { RequestMethod.GET, RequestMethod.POST })
	public String signup(@ModelAttribute UserVo userVo) {

		System.out.println("[UserController.signup()]");

		System.out.println(userVo);

		int count = userService.signupUser(userVo);

		System.out.println(count + "건 가입 성공");

		return "/user/login_form";

	}
	
	//회원등급변경
	@RequestMapping(value="/modifyUserGrade", method = {RequestMethod.GET, RequestMethod.POST})
	public String confirm(@ModelAttribute UserVo userVo, HttpSession session) {
		
		System.out.println("[UserController.modifyUserGrade()]");
		
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		
		int userNo = authUser.getUserNo();
		
		userVo.setUserNo(userNo);
		
		int count = userService.userGradeModify(userVo);
		
		System.out.println(count + "건 변경 성공.");
		
		authUser.setUserGrade(userVo.getUserGrade());
				
		return "/mypage/confirm";
	}
	
	//회원정보수정폼
	@RequestMapping(value="/modifyForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String modifyForm(Model model, HttpSession session) {
		
		System.out.println("UserController.modifyForm()]");
		
		int userNo = ((UserVo) session.getAttribute("authUser")).getUserNo();
		
		UserVo userVo = userService.getUserInfo(userNo);
		
		model.addAttribute("userVo", userVo);
				
		return "/mypage/modify_form";
	}
	
	//회원정보수정
	@RequestMapping(value="/modify", method = {RequestMethod.GET, RequestMethod.POST})
	public String modify(@ModelAttribute UserVo userVo, HttpSession session) {
		System.out.println("[UserController.modify()]");

		// 세션에서 로그인한 사용자 정보 가져오기
		UserVo authUser = (UserVo) session.getAttribute("authUser");

		// 로그인한 사용자 no값 가져오기
		int userNo = authUser.getUserNo();

		// 로그인한 사용자 no값 추가
		userVo.setUserNo(userNo);

		// userService를 통해 로그인한 사용자 정보 수정
		userService.modifyUser(userVo);
		
		System.out.println("수정된 정보" + userVo);

		// 세션에 이름 변경
		authUser.setUserName(userVo.getUserName());
		
		return "redirect:/main";
	}

}