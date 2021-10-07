package com.otb.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.otb.sevice.AdminService;
import com.otb.vo.UserVo;

@Controller
public class StoreImageController {

	@Autowired 
	AdminService adminService;
	
	//////////////////////////////////////// 이미지 등록, 삭제 ////////////////////////////////////////
	
	//매장 이미지 호출
	
	//매장 이미지 등록
	@ResponseBody
	@RequestMapping(value = "/storeImageUpload", method = {RequestMethod.GET, RequestMethod.POST})
	public void imageUpload(MultipartHttpServletRequest mtfRequest, HttpSession session) {
		System.out.println("파일 이미지 업로드 도착");
		
		//받아온 멀티파트 파일을 리스트 형태로 구성
		List<MultipartFile> fileList = mtfRequest.getFiles("files");
		
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int userNo = authUser.getUserNo();
		
		adminService.restoreImages(fileList, userNo);
		
	}
	
	//매장 이미지 삭제
	@RequestMapping(value = "/storeImageRemove", method = {RequestMethod.GET, RequestMethod.POST})
	public void imageRemove() {
		
	}
	//////////////////////////////////////// 이미지 등록, 삭제 ////////////////////////////////////////

	
}
