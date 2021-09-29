package com.otb.controller;

import java.util.List;
import java.util.Map;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.otb.sevice.StoreService;
import com.otb.vo.StoreVo;
import com.otb.vo.UserVo;

@Controller
@RequestMapping(value= "/store", method= {RequestMethod.GET, RequestMethod.POST})
public class StoreController {

	@Autowired
	private StoreService storeService;
	
	//매장 리스트
	@RequestMapping("/storelist")
	public String storelist() {
		System.out.println("[StoreController.storelist]");
		
		return "/store/storelisttest";
	}
	
	//매장 상세정보 페이지
	@RequestMapping("/storeinfo")
	/* @RequestParam("storeNo") int storeNo, */
	public String storeinfo(HttpSession session, Model model){
		System.out.println("[storeController.storeinfo]");
		
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		System.out.println(authUser);
		int userNo = authUser.getUserNo();
		System.out.println(userNo);
		
		Map<String, Object> userDataInfoMap = storeService.userDataInfoMap(userNo);
		System.out.println(userDataInfoMap);
		model.addAttribute("userDataInfoMap", userDataInfoMap);
		
		return "/store/storeinfo";
	}
	
	//매장 
	
//	//매장 정보 테스트 페이지
//	@RequestMapping("/storelisttest")
//	public String storelisttest(Model model) {
//		
//		System.out.println("[StoreController.storelisttest]");
//		
//		List<StoreVo> storeListtest = storeService.storeList();
//		
//		model.addAttribute("storeList", storeListtest);
//
//		System.out.println("[StoreController.storelisttest.storeList :" + storeListtest + " ]");
//		
//		return "/store/storelisttest";
//	}
	
	//매장 검색
	@ResponseBody
	@RequestMapping("/storesearchlist")
	public List<StoreVo> storeSearchList(@RequestParam(value="keyword", defaultValue="") String keyword, Model model){
		
		System.out.println("[StoreController.storesearchlist]");
		System.out.println(keyword);
		List<StoreVo> searchlist = storeService.storeSearchList(keyword);
		
		System.out.println(searchlist);
		
//		model.addAttribute("searchList", searchList);
		
		return searchlist;
		
	}
	
	
	
}
