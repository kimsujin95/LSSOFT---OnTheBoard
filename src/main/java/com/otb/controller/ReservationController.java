package com.otb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.otb.sevice.ReservationService;

@Controller
@RequestMapping(value="/reservation", method = { RequestMethod.GET, RequestMethod.POST })
public class ReservationController {

	@Autowired
	private ReservationService reservationService;
	
	@ResponseBody
	@RequestMapping("/reservationinfo/{storeNo}")
	public String reservationinfo(@PathVariable("storeNo")int storeNo, @RequestParam ("checkedTime[]") String[] checkedTime, @RequestParam("matchingNo") int matchingNo) {
		System.out.println("[reservationController.reservationinfo]");
		
		for(int i = 0; i < checkedTime.length; i++)  {
			System.out.println("checkedTime" + checkedTime[i]);
		}
		
		System.out.println(matchingNo);
		System.out.println("매장번호 : " + storeNo);
		
		return "1";
	}
	
}
