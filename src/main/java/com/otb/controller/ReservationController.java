package com.otb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	@RequestMapping("/reservationinfo")
	public String reservationinfo(@RequestParam("revinfo") List<String> revinfo) {
		System.out.println("[reservationController.reservationinfo]");

		System.out.println(revinfo);
		
		return null;
	}
	
}
