package com.otb.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.otb.dao.MessageDao;
import com.otb.vo.MessageVo;

@Controller
@RequestMapping(value="/message", method = {RequestMethod.GET, RequestMethod.POST})
public class MessageController {
	
	@Autowired
	private MessageDao messageDao;
	
	// 메세지 목록
	@RequestMapping(value="/message_list.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String message_list(HttpServletRequest request, HttpSession session) {
		
		String nick =  (String)session.getAttribute("nick");
		
		MessageVo messageVo = new MessageVo();
		messageVo.setNick(nick);
		
		ArrayList<MessageVo> list = messageDao.messageList(messageVo);
		
		request.setAttribute("list", list);
		
		return "/message/message_list";
	}
	
	// 메세지 목록
	
	@RequestMapping(value="/message_ajax_list.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String message_ajax_list(HttpServletRequest request, HttpSession session) {
		
		String nick = (String) session.getAttribute("nick");
		
		MessageVo messageVo = new MessageVo();
		
		messageVo.setNick(nick);
		
		//메세지 리스트
		
		ArrayList<MessageVo> list = messageDao.messageList(messageVo);
		
		request.setAttribute("list", list);
		
		return "message_ajax_list";
	}
	
	@RequestMapping(value="/message_content_list.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String message_content_list(HttpServletRequest request, HttpSession session) {
		
		int room = Integer.parseInt(request.getParameter("room"));
		
		MessageVo messageVo = new MessageVo();
		
		messageVo.setRoom(room);
		messageVo.setNick((String) session.getAttribute("nick"));
		
		//메세지 내용을 가져온다.
		
		ArrayList<MessageVo> clist = messageDao.roomContentList(messageVo);
		
		request.setAttribute("clist", clist);
		
		return "message_content_list";
	}
	
	//메세지 리스트에서 메세지 보내기
	
	@ResponseBody
	@RequestMapping(value="/message_send_inlist.do", method = {RequestMethod.GET, RequestMethod.POST})
	public int message_send_inlist(@RequestParam int room, 
									  @RequestParam String other_nick,
									  @RequestParam String content,
									  HttpSession session) {
			
		MessageVo messageVo = new MessageVo();
		
		messageVo.setRoom(room);
		messageVo.setSend_nick((String)session.getAttribute("nick"));
		messageVo.setRecv_nick(other_nick);
		messageVo.setContent(content);
		
		int flag = messageDao.messageSendInlist(messageVo);
		
		return flag;
	}
	
}