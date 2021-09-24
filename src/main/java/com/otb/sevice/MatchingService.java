package com.otb.sevice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.otb.dao.MatchingDao;

@Service
public class MatchingService {
	
	@Autowired
	private MatchingDao matchingDao;
	
	// 매칭글 쓰기
	public int write() {
		
		int write = matchingDao.write();
		
		return write;
	}
	

}
