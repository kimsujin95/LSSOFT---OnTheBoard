package com.otb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/game", method= {RequestMethod.GET, RequestMethod.POST})
public class GameController {

	//게임리스트
	@RequestMapping(value="/list")
	public String list() {
		System.out.println("[GameController/list]");
		
		return"/game/list";
	}
	
	//게임 읽기(게임정보 상세)
	@RequestMapping(value="/gameDetails")
	public String gameDetails() {
		System.out.println("[GameController/gameDetails]");
		
		return"/game/gameDetails";
	}
	
	//Game Register(temp)
	@RequestMapping(value="/gameRegister")
	public String gameRegister() {
		System.out.println("[GameController/gameRegister]");
		
		return"/game/gameRegister";
	}
}
