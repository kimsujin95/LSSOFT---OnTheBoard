package com.otb.sevice;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.otb.dao.MatchingDao;
import com.otb.dao.UserDao;
import com.otb.vo.MatchingGroupVo;
import com.otb.vo.MatchingVo;
import com.otb.vo.UserVo;

@Service
public class MatchingService {
	
	@Autowired
	private MatchingDao matchingDao;
	
	@Autowired
	private UserDao userDao;
	
	// 매칭 리스트
	public Map<String, Object> list(List<String> keyword) {
		System.out.println("매칭 서비스: list;;;");
		
		// 매칭리스트
		List<MatchingVo> matchingList = matchingDao.list(keyword);
		// 매칭에 참여중인 멤버 리스트
		List<Integer> matchingMemberList = new ArrayList<Integer>();
		for (int i = 0; i < matchingList.size(); i++) {
			int matchingNo = matchingList.get(i).getMatchingNo();
			int matchingMember = matchingDao.matchingMember(matchingNo);
			matchingMemberList.add(matchingMember);
		}
		
		System.out.println("매칭 서비스: list;;; - 매칭멤버리스트: " + matchingMemberList);
		
		// 매칭리스트에 사용할 맵(매칭리스트, 매칭참여중인멤버리스트)
		Map<String, Object> matchingListMap = new HashMap<String, Object>();
		matchingListMap.put("matchingList", matchingList);
		matchingListMap.put("matchingMemberList", matchingMemberList);
		
		return matchingListMap;
	}
	
	// 매칭글 작성 폼
	public Map<String, Object> writeUserInfo(int authUserNo) {
		System.out.println("매칭 서비스: writeUserInfo;;;");
		
		// Map - 글작성자 정보(로그인유저), 글작성자 나이계산(DB), 게임 리스트, 테마 리스트, 지역 리스트(sido, sigungu)
		Map<String, Object> writeUserInfo = new HashMap<String, Object>();
		writeUserInfo.put("authUserInfo", userDao.selectUser(authUserNo));
//		writeUserInfo.put("writeUserAge", matchingDao.userAge(authUserNo));
		writeUserInfo.put("gameList", matchingDao.gameName());
		writeUserInfo.put("themeList", matchingDao.gameTheme());
		writeUserInfo.put("sidoList", matchingDao.sidoList());
		writeUserInfo.put("sigunguList", matchingDao.sigunguList());
		
		return writeUserInfo;
	}
	
	// 매칭글 등록
	public int write(MatchingVo matchingVo) {
		System.out.println("매칭 서비스: write;;;");
		
		// 글 등록
		int write = matchingDao.write(matchingVo);
		
		// 등록된 글에 대한 매칭그룹 생성(매칭번호=그룹번호)
		// 위에서 등록된 매칭글의 번호, 작성자, 매칭가능 인원 불러오기 → Vo로 묶기  
		int matchingNo = matchingVo.getMatchingNo();
		System.out.println(matchingNo);
		int userNo = matchingVo.getUserNo();
		System.out.println(userNo);
		int matchingPeople = matchingVo.getMatchingPeople();
		System.out.println(matchingPeople);
		
		MatchingGroupVo matchingGroupVo = new MatchingGroupVo();
		matchingGroupVo.setMatchingNo(matchingNo);
		matchingGroupVo.setUserNo(userNo);
		matchingGroupVo.setMatchingPeople(matchingPeople);
		System.out.println(matchingGroupVo);
		
		int createMatchingGroup = matchingDao.createMatchingGroup(matchingGroupVo);
		

		return write;
	}

	// 매칭글 읽기
		public Map<String, Object> read(int matchingNo) {
			System.out.println("매칭 서비스: read;;;");
			System.out.println(matchingNo);
			
			// 클릭한 매칭 번호로 글정보 불러오기
			MatchingVo matchingVo = matchingDao.read(matchingNo);
			
			// 작성자 정보 불러오기
			int userNo = matchingVo.getUserNo();
			System.out.println(userNo);
			UserVo writerInfo = userDao.selectUser(userNo);
			System.out.println(writerInfo);
			
			// 매칭에 참여중인 인원 수
			int matchingMember = matchingDao.matchingMember(matchingNo);
			System.out.println(matchingMember);
			matchingVo.setMatchingMember(matchingMember);
			
			// 매칭에 참여중인 인원 정보 리스트
			List<UserVo> matchingMemberInfoList = matchingDao.matchingMemberInfoList(matchingNo);
			System.out.println(matchingMemberInfoList);
			
			// Map으로 묶기
			Map<String, Object> readInfo = new HashMap<String, Object>();
			readInfo.put("matchingVo", matchingVo);
			readInfo.put("writerInfo", writerInfo);
			readInfo.put("matchingMemberInfoList", matchingMemberInfoList);
			
			// 클릭 후 조회수 1 증가
			int hitsUp = matchingDao.hitsUp(matchingNo);
			
			return readInfo;
		}
	
	// 매칭글 읽기 - 매칭 참가 신청 
	public Map<String, Object> joinMatching(MatchingGroupVo matchingGroupVo) {
		System.out.println("매칭 서비스: joinMatching;;;");
		
		int joinMatching = matchingDao.joinMatching(matchingGroupVo);
		
		// 그룹에 추가 후 그룹원 수 불러오기
		int matchingNo = matchingGroupVo.getMatchingNo();
		System.out.println(matchingNo);
		int matchingMember = matchingDao.matchingMember(matchingNo);
		System.out.println(matchingMember);
		
		// 그룹에 추가되는 유저 정보 불러오기
		int userNo = matchingGroupVo.getUserNo();
		System.out.println(userNo);
		UserVo userInfo = userDao.selectUser(userNo);
		System.out.println(userInfo);
		
		// Map으로 묶어서 넘기기
		Map<String, Object> joinMatchingInfo = new HashMap<String, Object>();
		joinMatchingInfo.put("matchingMember", matchingMember);
		joinMatchingInfo.put("userInfo", userInfo);
		
		return joinMatchingInfo;
	}
	// 매칭글 읽기 - 매칭 참가 취소
	public int outMatching(MatchingGroupVo matchingGroupVo) {
		System.out.println("매칭 서비스: outMatching;;;");
		int outMatching = matchingDao.outMatching(matchingGroupVo);
		
		// 그룹에 삭제 후 그룹원 수 불러오기
		int matchingNo = matchingGroupVo.getMatchingNo();
		System.out.println(matchingNo);
		int matchingMember = matchingDao.matchingMember(matchingNo);
		System.out.println(matchingMember);
		
		return matchingMember;
	}
	
	// 매칭글 읽기 - 매칭상태 변경
	public int statusComplete(int matchingNo) {
		System.out.println("매칭 서비스: statusComplete;;;");
		
		int statusComplete = matchingDao.statusComplete(matchingNo);
		return statusComplete;
	}
	

}
