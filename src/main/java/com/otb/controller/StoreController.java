package com.otb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.otb.sevice.StoreService;
import com.otb.vo.StoreVo;

@Controller
@RequestMapping(value= "/store", method= {RequestMethod.GET, RequestMethod.POST})
public class StoreController {

	@Autowired
	private StoreService storeService;
	
	//매장 정보리스트
	@RequestMapping("/storelist")
	public String storelist(Model model) {
		System.out.println("[StoreController.storelist]");
		
		List<StoreVo> storeList = storeService.storeList();
		
		model.addAttribute("storeList", storeList);
		
		return "/store/storelist";
	}
	
	//매장 상세정보 페이지
	@RequestMapping("/storeinfo")
	public String storeinfo(){
		System.out.println("[storeController.storeinfo]");
		
		return "/store/storeinfo";
	}
	
}
