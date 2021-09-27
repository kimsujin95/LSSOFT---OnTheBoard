package com.otb.sevice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.otb.dao.StoreDao;
import com.otb.vo.StoreVo;

@Service
public class StoreService {
	
	@Autowired
	private StoreDao storeDao;
	
	//매장 리스트
	public List<StoreVo> storeList(){
		System.out.println("[StoreService.storeList()]");
		
		List<StoreVo> storeList = storeDao.storeList();
		
		return storeList;
	}
	
	//매장 키워드 검색
	public List<StoreVo> storeSearchList(String keyword){
		
		System.out.println("[StoreService.storeSearchList]");
		
		List<StoreVo> storeList = storeDao.storeSearchList(keyword);
		
		return storeList;
		
	}
	
}
