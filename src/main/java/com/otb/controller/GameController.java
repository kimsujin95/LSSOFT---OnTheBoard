package com.otb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/game")
public class GameController {

	//게임리스트
	@RequestMapping(value="/gameList", method= {RequestMethod.GET, RequestMethod.POST})
	public String gamelist() {
		System.out.println("/game/gameList");
		
		return"/game/gameList";
	}
	
	//게임 읽기(게임정보 상세)
	@RequestMapping(value="/gameDetails", method= {RequestMethod.GET, RequestMethod.POST})
	public String gameDetails() {
		System.out.println("/game/gameDetails");
		
		return"/game/gameDetails";
	}
}
