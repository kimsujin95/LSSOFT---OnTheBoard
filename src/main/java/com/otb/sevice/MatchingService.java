package com.otb.sevice;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.otb.dao.MatchingDao;
import com.otb.dao.UserDao;
import com.otb.vo.CommentVo;
import com.otb.vo.GameVo;
import com.otb.vo.MatchingGroupVo;
import com.otb.vo.MatchingVo;
import com.otb.vo.ReplyVo;
import com.otb.vo.SigunguVo;
import com.otb.vo.UserVo;

@Service
public class MatchingService {
	
	@Autowired
	private MatchingDao matchingDao;
	
	@Autowired
	private UserDao userDao;
	
	// 매칭 메인페이지 - tab_content 지역/게임 리스트
	public Map<String, Object> tabContent() {
		System.out.println("Matching Service : tabContent;;;");

		Map<String, Object> tabContent = new HashMap<>();
		tabContent.put("sidoList", matchingDao.sidoList());
		tabContent.put("themeList", matchingDao.themeList());

		return tabContent;
	}

	// 매칭 메인페이지 - 시도 코드에 맞는 시군구 리스트
	public List<SigunguVo> tabContentSigunguList(int sidoCode) {
		System.out.println("Matching Service : tabContentSigunguList;;;");
		System.out.println("시도 코드 : " + sidoCode);

		List<SigunguVo> tabContentSigunguList = matchingDao.tabContentSigunguList(sidoCode);

		return tabContentSigunguList;
	}

	// 매칭 메인페이지 - 테마 코드에 맞는 게임 리스트
	public List<GameVo> tabContentGameList(int themeNo) {
		System.out.println("Matching Service : tabContentSigunguList;;;");
		System.out.println("테마 코드 : " + themeNo);

		List<GameVo> gameList = matchingDao.tabContentGameList(themeNo);

		return gameList;
	}
	
	// 매칭 리스트
	public Map<String, Object> list(List<String> keyword) {
		System.out.println("Matching Service : list;;;");
		System.out.println("키워드 : " + keyword);
		
		// 매칭리스트
		List<MatchingVo> matchingList = matchingDao.list(keyword);
		// 매칭에 참여중인 멤버 리스트
		List<Integer> matchingMemberList = new ArrayList<Integer>();
		for (int i = 0; i < matchingList.size(); i++) {
			int matchingNo = matchingList.get(i).getMatchingNo();
			int matchingMember = matchingDao.matchingMember(matchingNo);
			matchingMemberList.add(matchingMember);
		}
		
		System.out.println("Matching Service : list;;; - 매칭멤버리스트: " + matchingMemberList);
		
		// 매칭리스트에 사용할 맵(매칭리스트, 매칭참여중인멤버리스트)
		Map<String, Object> matchingListMap = new HashMap<String, Object>();
		matchingListMap.put("matchingList", matchingList);
		matchingListMap.put("matchingMemberList", matchingMemberList);
		
		return matchingListMap;
	}
	
	// 매칭글 작성 폼
	public Map<String, Object> writeUserInfo(int authUserNo) {
		System.out.println("Matching Service : writeUserInfo;;;");
		System.out.println("사용자 작성 번호 : " + authUserNo);
		
		// Map - 글작성자 정보(로그인유저), 글작성자 나이계산(DB), 게임 리스트, 테마 리스트, 지역 리스트(sido, sigungu)
		Map<String, Object> writeUserInfo = new HashMap<String, Object>();
		writeUserInfo.put("authUserInfo", userDao.selectUser(authUserNo));
		writeUserInfo.put("gameList", matchingDao.gameList());
		writeUserInfo.put("themeList", matchingDao.themeList());
		writeUserInfo.put("sidoList", matchingDao.sidoList());
		writeUserInfo.put("sigunguList", matchingDao.sigunguList());
		
		return writeUserInfo;
	}
	// 매칭글 작성 폼 - 게임 전체 리스트
	public List<GameVo> gameList() {
		System.out.println("Matching Service : gameList;;;");
		List<GameVo> gameList = matchingDao.gameList();
		
		return gameList;
	}
	
	// 매칭글 등록
	public int write(MatchingVo matchingVo) {
		System.out.println("Matching Service : write;;;");
		System.out.println("매칭글 등록 정보 : " + matchingVo);
		
		// 글 등록
		int write = matchingDao.write(matchingVo);
		
		// 등록된 글에 대한 매칭그룹 생성(매칭번호=그룹번호)
		// 위에서 등록된 매칭글의 번호, 작성자, 매칭가능 인원 불러오기 → Vo로 묶기  
		int matchingNo = matchingVo.getMatchingNo();
		System.out.println("매칭글 번호" + matchingNo);
		int userNo = matchingVo.getUserNo();
		System.out.println("작성자 번호 : " + userNo);
		int matchingPeople = matchingVo.getMatchingPeople();
		System.out.println("매칭가능 인원 : " + matchingPeople);
		
		MatchingGroupVo matchingGroupVo = new MatchingGroupVo();
		matchingGroupVo.setMatchingNo(matchingNo);
		matchingGroupVo.setUserNo(userNo);
		matchingGroupVo.setMatchingPeople(matchingPeople);
		System.out.println("매칭 그룹 정보 : " + matchingGroupVo);
		
		int createMatchingGroup = matchingDao.createMatchingGroup(matchingGroupVo);
		

		return matchingNo;
	}

	// 매칭글 읽기
		public Map<String, Object> read(int matchingNo) {
			System.out.println("Matching Service : read;;;");
			System.out.println("매칭글 번호 : " + matchingNo);
			
			// 조회수 1 증가
			int hitsUp = matchingDao.hitsUp(matchingNo);
			
			// 클릭한 매칭 번호로 글정보 불러오기
			MatchingVo matchingVo = matchingDao.read(matchingNo);
			
			// 작성자 정보 불러오기
			int userNo = matchingVo.getUserNo();
			System.out.println("작성자 번호 : " + userNo);
			UserVo writerInfo = userDao.selectUser(userNo);
			System.out.println("작성자 정보 : " + writerInfo);
			
			// 매칭에 참여중인 인원 수
			int matchingMember = matchingDao.matchingMember(matchingNo);
			System.out.println("매칭 인원 수 : " + matchingMember);
			matchingVo.setMatchingMember(matchingMember);
			
			// 매칭에 참여중인 인원 정보 리스트
			List<UserVo> matchingMemberInfoList = matchingDao.matchingMemberInfoList(matchingNo);
			System.out.println("인원 정보 리스트 : " + matchingMemberInfoList);
			
			// 매칭에 참여중인 유저 번호 리스트
			List<Integer> groupUserNoList = matchingDao.groupUserNoList(matchingNo);
			System.out.println("유저 번호 리스트 : " + groupUserNoList);
			
			// 매칭글의 댓글 리스트
			List<CommentVo> commentList = matchingDao.commentList(matchingNo);
			System.out.println("댓글 리스트 : " + commentList);
			
			// 매칭글의 답글 리스트
			List<ReplyVo> replyList = matchingDao.replyList(matchingNo);
			System.out.println("답글 리스트 : " + replyList);
			
			// 매칭글의 댓글/답글 리스트 불러오기
//			List<CommentReplyVo> commentReplyList = matchingDao.commentReplyList(matchingNo);
//			System.out.println("댓글/답글 리스트: " + commentReplyList);

			// Map으로 묶기
			Map<String, Object> readInfo = new HashMap<String, Object>();
			readInfo.put("matchingVo", matchingVo);
			readInfo.put("writerInfo", writerInfo);
			readInfo.put("matchingMemberInfoList", matchingMemberInfoList);
//			readInfo.put("commentReplyList", commentReplyList);
			readInfo.put("commentList", commentList);
			readInfo.put("replyList", replyList);
			readInfo.put("groupUserNoList", groupUserNoList);
			
			return readInfo;
		}
	
	// 매칭글 읽기 - 매칭 참가 신청 
	public Map<String, Object> joinMatching(MatchingGroupVo matchingGroupVo) {
		System.out.println("Matching Service : joinMatching;;;");
		
		int joinMatching = matchingDao.joinMatching(matchingGroupVo);
		
		// 그룹에 추가 후 그룹원 수 불러오기
		int matchingNo = matchingGroupVo.getMatchingNo();
		System.out.println("(추가)그룹원 수 번호 : " + matchingNo);
		int matchingMember = matchingDao.matchingMember(matchingNo);
		System.out.println("(추가)그륩 멤버 : " + matchingMember);
		
		// 그룹에 추가되는 유저 정보 불러오기
		int userNo = matchingGroupVo.getUserNo();
		System.out.println("(추가)유저 수 번호 : " + userNo);
		UserVo userInfo = userDao.selectUser(userNo);
		System.out.println("(추가)유저 정보 : " + userInfo);
		
		// Map으로 묶어서 넘기기
		Map<String, Object> joinMatchingInfo = new HashMap<String, Object>();
		joinMatchingInfo.put("matchingMember", matchingMember);
		joinMatchingInfo.put("userInfo", userInfo);
		
		return joinMatchingInfo;
	}
	// 매칭글 읽기 - 매칭 참가 취소
	public int outMatching(MatchingGroupVo matchingGroupVo) {
		System.out.println("Matching Service : outMatching;;;");
		int outMatching = matchingDao.outMatching(matchingGroupVo);
		
		// 그룹에 삭제 후 그룹원 수 불러오기
		int matchingNo = matchingGroupVo.getMatchingNo();
		System.out.println("(삭제)그룹원 수 번호 : " + matchingNo);
		int matchingMember = matchingDao.matchingMember(matchingNo);
		System.out.println("(삭제)그룹원 멤버 : " + matchingMember);
		
		return matchingMember;
	}
	
	// 매칭글 읽기 - 매칭상태 변경
	public int statusComplete(int matchingNo) {
		System.out.println("Matching Service : statusComplete;;;");
		
		int statusComplete = matchingDao.statusComplete(matchingNo);
		return statusComplete;
	}
	
	// 매칭글 읽기 - 댓글 등록/출력
	public CommentVo commentWriteInfo(CommentVo commentVo) {
		System.out.println("Matching Service : commentWriteInfo;;;");
		
		// 댓글 등록
		int commentWrite = matchingDao.commentWrite(commentVo);
		System.out.println("댓글 등록 정보 : " + commentVo);
		
		// 등록된 댓글 정보 불러오기
		int commentNo = commentVo.getCommentNo();
		CommentVo commentInfo = matchingDao.commentInfo(commentNo);
		
		return commentInfo;
	}
	
	// 매칭글 읽기 - 답글 등록/출력
	public ReplyVo replyWriteInfo(ReplyVo replyVo) {
		System.out.println("Matching Serivce : replyWriteInfo;;;");
		
		// 답글 등록
		int replyWrite = matchingDao.replyWrite(replyVo);
		System.out.println("답글 등록 정보 : " + replyVo);
		
		// 등록된 답글 정보 불러오기
		int replyNo = replyVo.getReplyNo();
		ReplyVo replyInfo = matchingDao.replyInfo(replyNo);
		
		return replyInfo;
	}
	
	// 매칭글/매칭그룹 삭제
	public int matchingDelete(int matchingNo) {
		System.out.println("Matching Service : matchingDelete;;;");
		
		int deleteMatchingGroup = matchingDao.deleteMatchingGroup(matchingNo);
		int deleteMatching = matchingDao.deleteMatching(matchingNo);
		
		return deleteMatching;
	}

	// 텍스트 검색
	public List<MatchingVo> getSearchList(MatchingVo matchingVo) throws Exception{
		return matchingVo.selectSearchList(matchingVo);
	}
}
