package com.otb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/message", method = {RequestMethod.GET, RequestMethod.POST})
public class MessageController {
	
	// 메세지 함
	@RequestMapping(value="/inbox", method = {RequestMethod.GET, RequestMethod.POST})
	public String inbox() {
		
		return "/message/inbox";
	}
	
	// 메세지 쓰기
	
	@RequestMapping(value="/write", method = {RequestMethod.GET, RequestMethod.POST})
	public String write() {
		
		return "/message/message";
	}
	
}