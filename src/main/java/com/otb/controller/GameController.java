package com.otb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/game")
public class GameController {

	@RequestMapping(value="/gameList", method= {RequestMethod.GET, RequestMethod.POST})
	public String gameList() {
		System.out.println("/game/gameList");
		
		return"/game/gameList";
	}
	
	@RequestMapping(value="/gamedetail", method= {RequestMethod.GET, RequestMethod.POST})
	public String gameDetail() {
		System.out.println("/game/gameDetail");
		
		return"/game/gameDetail";
	}
}
