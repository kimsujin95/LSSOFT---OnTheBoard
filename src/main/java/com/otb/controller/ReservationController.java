package com.otb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.otb.sevice.ReservationService;
import com.otb.vo.ReservationDateVo;
import com.otb.vo.ReservationVo;

@Controller
@RequestMapping(value="/reservation", method = { RequestMethod.GET, RequestMethod.POST })
public class ReservationController {

	@Autowired
	private ReservationService reservationService;
	
	//예약 내역 확인용 모달창에 예약정보 보내기
	@ResponseBody
	@RequestMapping("/reservationinfo/{storeNo}")
	public ReservationVo reservationinfo(@PathVariable("storeNo")int storeNo, @RequestParam ("checkedTime[]") String[] checkedTime, @RequestParam("matchingNo") int matchingNo, @RequestParam("selectedDate") String selectedDate, @RequestParam("storeName") String storeName, @RequestParam("revType") String revType) {
		
		System.out.println("[reservationController.reservationinfo]");
		
		//선택한 시간대 출력
		for(int i = 0; i < checkedTime.length; i++)  {
			System.out.println("checkedTime" + "[" + i + "] : " + checkedTime[i]);
		}
		System.out.println("매장이름 : " + storeName);
		System.out.println("매칭_그룹번호 : " + matchingNo);
		System.out.println("매장번호 : " + storeNo);
		System.out.println("선택된날짜 : " + selectedDate);
		System.out.println("예약방식 : " + revType);
		
		ReservationDateVo revdate = new ReservationDateVo(storeNo, selectedDate);
		
		ReservationVo reservationInfo = reservationService.getreservationinfo(matchingNo, checkedTime, revdate, revType);
		
		System.out.println("예약컨트롤러_예약정보Vo : " + reservationInfo);
		
		//Map<String, Object> revInfo = new HashMap<String, Object>();
		//revInfo.put("reservationInfo", reservationInfo);
		
		
		return reservationInfo;
		
	}
	
}
