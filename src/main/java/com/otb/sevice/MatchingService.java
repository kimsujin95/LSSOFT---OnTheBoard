package com.otb.sevice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.otb.dao.MatchingDao;
import com.otb.vo.MatchingVo;

@Service
public class MatchingService {
	
	@Autowired
	private MatchingDao matchingDao;
	
	// 매칭 리스트
	public List<MatchingVo> list() {
		System.out.println("MatchingService: list;;;");
		
		List<MatchingVo> matchingList = matchingDao.list();
		
		return matchingList;
	}
	
	// 매칭글 쓰기
	public int write(MatchingVo matchingVo) {
		System.out.println("MatchingService: write;;;");
		
		int write = matchingDao.write(matchingVo);

		return write;
	}
	
	// 매칭글 읽기
	public MatchingVo read(int matchingNo) {
		System.out.println("MatchingService: read;;;");
		System.out.println(matchingNo);
		
		MatchingVo matchingVo = matchingDao.read(matchingNo);
		
		return matchingVo;
	}
	

}
