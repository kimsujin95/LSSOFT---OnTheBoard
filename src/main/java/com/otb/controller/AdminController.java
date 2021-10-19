package com.otb.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.otb.sevice.AdminService;
import com.otb.sevice.GameService;
import com.otb.vo.OwnedGameVo;
import com.otb.vo.ReservationDateVo;
import com.otb.vo.StoreVo;
import com.otb.vo.ThemeVo;
import com.otb.vo.UserVo;

@Controller
@RequestMapping(value = "/admin", method = { RequestMethod.GET, RequestMethod.POST })
public class AdminController {

	@Autowired
	private AdminService adminService;
	@Autowired
	private GameService gameService;

	//////////////////////////////////////// 매장 정보 등록 및 수정 //////////////////////////////////////// ////////////////////////////////////////

	// admin - 매장 정보 - main
	@RequestMapping(value = "/main", method = { RequestMethod.GET, RequestMethod.POST })
	public String storeInfo(HttpSession session) {

		UserVo authUser = (UserVo) session.getAttribute("authUser");

		if (authUser != null) {
			int userNo = authUser.getUserNo();
			StoreVo storeInfo = adminService.getStore(userNo);
			session.setAttribute("storeInfo", storeInfo);

			return "/admin/storeInfo";
		} else {
			return "/admin/error";
		}

	}

	// store-info 등록
	@RequestMapping(value = "/storeInfoInsert", method = { RequestMethod.GET, RequestMethod.POST })
	public String storeInfoInsert(@ModelAttribute StoreVo storeInfo, HttpSession session) {
		System.out.println("매장 정보 업데이트");

		int userNo = ((UserVo) session.getAttribute("authUser")).getUserNo();
		storeInfo.setUserNo(userNo);

		System.out.println(storeInfo.toString());

		adminService.registerStoreInfo(storeInfo);

		return "redirect:/admin/main";
	}

	// store-info 수정
	@RequestMapping(value = "/storeInfoModify", method = { RequestMethod.GET, RequestMethod.POST })
	public String storeInfoModify(@ModelAttribute StoreVo storeInfo, HttpSession session) {
		System.out.println("매장 정보 업데이트");

		int userNo = ((UserVo) session.getAttribute("authUser")).getUserNo();
		storeInfo.setUserNo(userNo);

		System.out.println(storeInfo.toString());

		adminService.modifyStoreInfo(storeInfo);

		return "redirect:/admin/main";
	}

	//////////////////////////////////////// 매장 정보 등록 및 수정	//////////////////////////////////////// ////////////////////////////////////////

	
	//////////////////////////////////////// 매장 스케쥴 등록 및 수정 //////////////////////////////////////// ////////////////////////////////////////

	// admin - 스케쥴
	@RequestMapping(value = "/schedule", method = { RequestMethod.GET, RequestMethod.POST })
	public String schedule(HttpSession session) {


		UserVo authUser = (UserVo) session.getAttribute("authUser");

		if (authUser != null) {
			return "/admin/schedule";
		} else {
			return "/admin/error";
		}
		
	}

	// schedule - 등록(ajax)
	@ResponseBody
	@RequestMapping(value = "/scheduleInsert", method = { RequestMethod.GET, RequestMethod.POST })
	public void scheduleInsert(@RequestParam("date") String date, @RequestParam("times[]") String[] times,
			@ModelAttribute ReservationDateVo reservationDateVo, HttpSession session) {

		int storeNo = ((StoreVo) session.getAttribute("storeInfo")).getStoreNo();
		reservationDateVo.setStoreNo(storeNo);

		System.out.println(reservationDateVo.toString());

		adminService.addSchedule(date, times, reservationDateVo);
	}

	// schedule - 조회(ajax)
	@ResponseBody
	@RequestMapping(value = "/scheduleLookup", method = { RequestMethod.GET, RequestMethod.POST })
	public Map<String, Object> scheduleLookup(@ModelAttribute ReservationDateVo reservationDateVo,
			HttpSession session) {
		System.out.println("스케쥴 조회 도착");

		int storeNo = ((StoreVo) session.getAttribute("storeInfo")).getStoreNo();
		reservationDateVo.setStoreNo(storeNo);

		System.out.println(reservationDateVo.toString());

		Map<String, Object> reservationData = adminService.lookupSchedule(reservationDateVo);

		return reservationData;
	}

	//////////////////////////////////////// 매장 스케쥴 등록 및 수정 ////////////////////////////////////////////////////////////////////////////////

	//////////////////////////////////////// 매장 보유 게임 등록 및 수정 ////////////////////////////////////////////////////////////////////////////////

	// admin - 보유 게임관리
	@RequestMapping(value = "/storeGame", method = { RequestMethod.GET, RequestMethod.POST })
	public String storeGame(HttpSession session, Model model) {
		System.out.println("admin - storeGame --------------------------------------------------------");
		
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		
		if (authUser != null) {
		
			List<ThemeVo> themeList = gameService.getThemeList();
			
			for (int i = 0; i < themeList.size(); i++) {
				System.out.println(themeList.get(i).toString());
			}
			
			model.addAttribute("themeList", themeList);
			
			return "/admin/storeGame";
		} else {
			return "/admin/error";
		}
		
		
	}

	// 게임 리스트 - 페이징
	@ResponseBody
	@RequestMapping(value = "/gameList", method = { RequestMethod.GET, RequestMethod.POST })
	public Map<String, Object> gameList(HttpSession session,
			@RequestParam(value = "crtPage", required = false, defaultValue = "1") int crtPage) {
		System.out.println("게임 리스트 호출");
		
		int storeNo = ((StoreVo) session.getAttribute("storeInfo")).getStoreNo();
		System.out.println(storeNo);
		
		Map<String, Object> listMap = gameService.getStoreGameList(storeNo, crtPage);
		return listMap;
	}

	// 게임 등록
	@ResponseBody
	@RequestMapping(value = "/gameInsert", method = { RequestMethod.GET, RequestMethod.POST })
	public void gameInsert(HttpSession session, @ModelAttribute OwnedGameVo ownedGame) {
		System.out.println("게임등록 도착");
		
		int storeNo = ((StoreVo) session.getAttribute("storeInfo")).getStoreNo();
		ownedGame.setStoreNo(storeNo);
		System.out.println(ownedGame.toString());
		
		adminService.restoreOwnedGame(ownedGame);
		System.out.println("등록 완료");
		
	}

	// 게임 삭제
	@ResponseBody
	@RequestMapping(value = "/gameDelete", method = { RequestMethod.GET, RequestMethod.POST })
	public void gameDelete(HttpSession session, @ModelAttribute OwnedGameVo ownedGame) {
		System.out.println("게임삭제 도착");
		
		int storeNo = ((StoreVo) session.getAttribute("storeInfo")).getStoreNo();
		ownedGame.setStoreNo(storeNo);
		System.out.println(ownedGame.toString());
	
		adminService.removeOwnedGame(ownedGame);
		System.out.println("삭제 완료");

	}

	//////////////////////////////////////// 매장 보유 게임 등록 및 수정 //////////////////////////////////////// ////////////////////////////////////////

	//////////////////////////////////////// 매장 예약 정보 확인 및 수정 //////////////////////////////////////// ////////////////////////////////////////

	// admin - 예약 관리
	@RequestMapping(value = "/reservation", method = { RequestMethod.GET, RequestMethod.POST })
	public String reservation(HttpSession session) {
		System.out.println("예약 관리");
		UserVo authUser = (UserVo) session.getAttribute("authUser");

		if (authUser != null) {
			int userNo = authUser.getUserNo();
			StoreVo storeInfo = adminService.getStore(userNo);
			session.setAttribute("storeInfo", storeInfo);

			return "/admin/reservation";
		} else {
			return "/admin/error";
		}
		
	}

	//////////////////////////////////////// 매장 예약 정보 확인 및 수정 //////////////////////////////////////// ////////////////////////////////////////

}
