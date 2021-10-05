package com.otb.sevice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.otb.dao.AdminDao;
import com.otb.vo.StoreVo;

@Service
public class AdminService {

	@Autowired AdminDao adminDao;
	
	//매장 정보 호출
	public StoreVo getStore(int userNo) {
		
		System.out.println("서비스 - 매장 확인");
		System.out.println(userNo);
		
		StoreVo storeVo = adminDao.selectStore(userNo);
		
		return storeVo;
		
	}
	
	// 매장 등록
	public void registerStoreInfo(StoreVo storeVo) {
		System.out.println("서비스 - 인서트 스토어 인포");
		System.out.println(storeVo.toString());
		
		adminDao.insertStoreInfo(storeVo);
	}
	
	// 매장 정보 수정
	public void modifyStoreInfo(StoreVo storeVo) {
		System.out.println("서비스 - 업데이트 스토어 인포");
		System.out.println(storeVo.toString());
		
		adminDao.updateStoreInfo(storeVo);
	}
	
	
	
}
