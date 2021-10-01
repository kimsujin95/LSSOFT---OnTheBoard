package com.otb.sevice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.otb.dao.MatchingDao;
import com.otb.vo.MatchingVo;

@Service
public class MypageService {
	
	@Autowired
	private MatchingDao matchingDao;
	
	public List<MatchingVo> list(int userNo) {
		
		System.out.println("[MypageService.list()]");
		
		List<MatchingVo> matchingList = matchingDao.mypageList(userNo);
		
		return matchingList;
	}

}
