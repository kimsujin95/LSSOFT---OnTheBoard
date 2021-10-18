package com.otb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.otb.sevice.AdminService;
import com.otb.vo.StoreImageVo;

@Controller
public class StoreImageController {

	@Autowired 
	AdminService adminService;
	
	//////////////////////////////////////// 이미지 등록, 삭제 ////////////////////////////////////////
	
	//매장 이미지 호출
	@ResponseBody
	@RequestMapping(value = "/storeImageLookup/{storeNo}", method = {RequestMethod.GET, RequestMethod.POST})
	public List<StoreImageVo> imageLookup(@PathVariable("storeNo") int storeNo) {
		System.out.println("이미지 호출 도착");
		System.out.println(storeNo);
		
		//이미지 호출
		List<StoreImageVo> storeImageList = adminService.getStoreImageList(storeNo);
		
		return storeImageList;
		
	}
	
	//매장 이미지 등록
	@ResponseBody
	@RequestMapping(value = "/storeImageUpload/{storeNo}", method = {RequestMethod.GET, RequestMethod.POST})
	public List<StoreImageVo> imageUpload(MultipartHttpServletRequest mtfRequest, @PathVariable("storeNo") int storeNo) {
		System.out.println("파일 이미지 업로드 도착");
		
		//받아온 멀티파트 파일을 리스트 형태로 구성
		List<MultipartFile> fileList = mtfRequest.getFiles("files");
		//이미지 저장, 저장한 리스트 호출
		List<StoreImageVo> addedStoreImageList = adminService.restoreImages(fileList, storeNo);
		
		return addedStoreImageList;
	}
	
	//매장 이미지 삭제
	@ResponseBody
	@RequestMapping(value = "/storeImageRemove", method = {RequestMethod.GET, RequestMethod.POST})
	public boolean imageRemove(@ModelAttribute StoreImageVo storeImage) {
		
		System.out.println("이미지 삭제 도착");
		System.out.println(storeImage.toString());
		
		boolean removeOk = adminService.removeImage(storeImage);
		
		return removeOk;
	}
	//////////////////////////////////////// 이미지 등록, 삭제 ////////////////////////////////////////

	
}
