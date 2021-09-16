package com.otb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/admin", method = {RequestMethod.GET, RequestMethod.POST})
public class AdminController {

	//admin - 메인 화면
	@RequestMapping(value = "/main", method = {RequestMethod.GET, RequestMethod.POST})
	public String main() {
		System.out.println("admin - main --------------------------------------------------------");
		return "/admin/main";
	}
	
	//admin - 예약 관리
	@RequestMapping(value = "/reservation", method = {RequestMethod.GET, RequestMethod.POST})
	public String reservation() {
		System.out.println("admin - reservation --------------------------------------------------------");
		return "/admin/reservation";
	}

	//admin - 스케쥴
	@RequestMapping(value = "/schedule", method = {RequestMethod.GET, RequestMethod.POST})
	public String schedule() {
		System.out.println("admin - schedule --------------------------------------------------------");
		return "/admin/schedule";
	}

	//admin - 매장 정보
	@RequestMapping(value = "/storeInfo", method = {RequestMethod.GET, RequestMethod.POST})
	public String storeInfo() {
		System.out.println("admin - storeInfo --------------------------------------------------------");
		return "/admin/storeInfo";
	}

	//admin - 보유 게임관리
	@RequestMapping(value = "/gameList", method = {RequestMethod.GET, RequestMethod.POST})
	public String gameList() {
		System.out.println("admin - gameList --------------------------------------------------------");
		return "/admin/gameList";
	}

	//admin - 보유 게임관리
	@RequestMapping(value = "/status", method = {RequestMethod.GET, RequestMethod.POST})
	public String status() {
		System.out.println("admin - status --------------------------------------------------------");
		return "/admin/status";
	}
	
}
