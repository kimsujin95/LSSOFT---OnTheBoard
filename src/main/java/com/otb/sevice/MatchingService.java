package com.otb.sevice;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.otb.dao.MatchingDao;
import com.otb.dao.UserDao;
import com.otb.vo.MatchingVo;

@Service
public class MatchingService {
	
	@Autowired
	private MatchingDao matchingDao;
	
	@Autowired
	private UserDao userDao;
	
	// 매칭 리스트
	public List<MatchingVo> list() {
		System.out.println("MatchingService: list;;;");
		
		List<MatchingVo> matchingList = matchingDao.list();
		
		return matchingList;
	}
	
	// 매칭글 쓰기폼
	public Map<String, Object> writeUserInfo(int authUserNo) {
		System.out.println("MatchingService: writeUserInfo;;;");
		
		Map<String, Object> writeUserInfo = new HashMap<String, Object>();
		writeUserInfo.put("authUserInfo", userDao.selectUser(authUserNo));
		writeUserInfo.put("writeUserAge", matchingDao.userAge(authUserNo));
		writeUserInfo.put("writeGameName", matchingDao.gameName());
		writeUserInfo.put("writeGameTheme", matchingDao.gameTheme());
		
		return writeUserInfo;
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
