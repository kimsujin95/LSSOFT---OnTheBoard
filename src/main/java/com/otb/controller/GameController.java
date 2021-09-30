package com.otb.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.otb.sevice.GameService;
import com.otb.vo.GameVo;

@Controller
@RequestMapping(value="/game", method= {RequestMethod.GET, RequestMethod.POST})
public class GameController {
	
	
	@Autowired
	private GameService gameService;
	//@Autowired
	//private UserService userService;

	//게임리스트
	@RequestMapping(value="/list")
	public String list(Model model) {
		System.out.println("[GameController/list]");
		
		List<GameVo> gameList = gameService.gameList();
		model.addAttribute("gameList", gameList);
		
		return"/game/list";
	}
	
	//게임 읽기(게임정보 상세)
	@RequestMapping(value="/gameDetails")
	public String gameDetails(Model model, @RequestParam("gameNo") int gameNo) {
		System.out.println("[GameController/gameDetails]");
		
		GameVo gameVo = gameService.gameRead(gameNo);
		System.out.println(gameVo);
				
		model.addAttribute("gameVo", gameVo);
		
		return"/game/gameDetails";
	}
	
	//게임등록폼(관리자용)
	@RequestMapping(value="/gameUpload")
	public String gameUploadForm(HttpSession session, Model model) {
		System.out.println("[GameController/gameUploadForm]");
		
		//sql 수정요(user.xml)
		
		/*
		UserVo authUser = (UserVo)session.getAttribute("authUser");

		if(authUser.getUserGrade()==9) {
			
			UserVo userVo = userService.getUser(authUser);
			System.out.println("관리자권한 확인->" + userVo);
			model.addAttribute("userVo", userVo);
			
			return"/game/gameUpload";

		}else if (authUser==null || authUser.getUserGrade()!=9){ 
			System.out.println("권리자권한 전용페이지");
			return "/user/login_form";
			
		}
		*/
		return"/game/gameUpload";
		
	}
			
	
	//게임등록(관리자용)
	/*
	@RequestMapping(value="/upload")
	public String gameUpload(@ModelAttribute GameVo gameVo, MultipartFile file,  Model model )throws Exception{
		System.out.println("[GameController/upload]");
		
		
		
		int upload = gameService.gameUpload(gameVo, file, null);
		model.addAttribute("gameVo", gameVo);
		

		System.out.println(upload + "game uploaded");
		
		
		

		return "redirect:/game/list";
	}
	
	*/
	
 
}
