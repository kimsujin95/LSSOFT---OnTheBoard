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
		
		System.out.println(storeList);
		
		return null;
	}
	
}
