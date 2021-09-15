package com.otb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value= "/store", method= {RequestMethod.GET, RequestMethod.POST})
public class StoreController {

	//매장 정보리스트
	@RequestMapping("/storelist")
	public String storelist() {
		System.out.println("[StoreController.storelist]");
		
		return "/store/storelist";
	}
	
	//매장 상세정보 페이지
	@RequestMapping("/storeinfo")
	public String storeinfo(){
		System.out.println("[storeController.storeinfo]");
		
		return "/store/storeinfo";
	}
	
}
