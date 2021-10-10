package com.otb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.otb.sevice.ReservationService;

@Controller
@RequestMapping(value="/reservation", method = { RequestMethod.GET, RequestMethod.POST })
public class ReservationController {

	@Autowired
	private ReservationService reservationService;
	
	
}
