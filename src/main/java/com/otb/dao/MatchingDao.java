package com.otb.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.otb.vo.CommentVo;
import com.otb.vo.GameVo;
import com.otb.vo.MatchingGroupVo;
import com.otb.vo.MatchingVo;
import com.otb.vo.ReplyVo;
import com.otb.vo.SidoVo;
import com.otb.vo.SigunguVo;
import com.otb.vo.ThemeVo;
import com.otb.vo.UserVo;

@Repository
public class MatchingDao {

	@Autowired
	private SqlSession sqlSession;

	// 매칭 리스트
	public List<MatchingVo> list(List<String> keyword) {
		System.out.println("Matching Dao : list;;;");
		
		List<MatchingVo> matchingList = sqlSession.selectList("matching.list", keyword);

		System.out.println("Matching Dao : list;;; " + matchingList);

		return matchingList;
	}
	
	// 매칭 메인페이지 - 시도 코드에 맞는 시군구 리스트
	public List<SigunguVo> tabContentSigunguList(int sidoCode) {
		System.out.println("Matching Dao : tabContentSigunguList;;;");
		System.out.println("시도 코드 : " + sidoCode);
		
		List<SigunguVo> tabContentSigunguList = sqlSession.selectList("matching.tabContentSigunguList", sidoCode);

		return tabContentSigunguList;
	}

	// 매칭 메인페이지 - 테마 코드에 맞는 게임 리스트
	public List<GameVo> tabContentGameList(int themeNo) {
		System.out.println("Matching Dao : tabContentGameList;;;");
		System.out.println("테마 코드 : " + themeNo);
		
		List<GameVo> gameList = sqlSession.selectList("matching.tabContentGameList", themeNo);

		return gameList;
	}

	// 마이페이지 - 매칭 리스트
	public List<MatchingVo> mypageList(int userNo) {
		System.out.println("Matching Dao : mypageList;;;");
		System.out.println("사용자 번호 : " + userNo);

		List<MatchingVo> matchingList = sqlSession.selectList("matching.mypageList", userNo);

		System.out.println("매칭 리스트 : " + matchingList);

		return matchingList;
	}

	// 매칭글 작성 폼 - 게임 리스트
	public List<GameVo> gameList() {
		System.out.println("Matching Dao : gameList;;;");

		List<GameVo> gameList = sqlSession.selectList("matching.gameList");
		System.out.println("게임 리스트 : " + gameList);

		return gameList;
	}

	// 매칭글 작성 폼 - 게임 테마 리스트
	public List<ThemeVo> themeList() {
		System.out.println("Matching Dao : themeList;;;");

		List<ThemeVo> themeList = sqlSession.selectList("matching.themeList");
		System.out.println("테마 리스트 : " + themeList);

		return themeList;
	}

	// 매칭글 작성 폼 - 시도 리스트
	public List<SidoVo> sidoList() {
		System.out.println("Matching Dao : sidoList;;;");

		List<SidoVo> sidoList = sqlSession.selectList("matching.sidoList");

		System.out.println("시도 리스트 : " + sidoList);
		
		return sidoList;
	}

	// 매칭글 작성 폼 - 시군구 리스트
	public List<SigunguVo> sigunguList() {
		 System.out.println("Matching Dao : sigunguList;;;");
	
		 List<SigunguVo> sigunguList = sqlSession.selectList("matching.sigunguList");
	
		 System.out.println("시군구 리스트 : " + sigunguList);
		 
		 return sigunguList;
	 }


	// 매칭글 등록
	public int write(MatchingVo matchingVo) {
		System.out.println("Matching Dao : write;;;");

		System.out.println("매칭글 등록 정보 : " + matchingVo);

		int write = sqlSession.insert("matching.write", matchingVo);

		return write;
	}

	// 매칭글 등록 → 매칭그룹 생성
	public int createMatchingGroup(MatchingGroupVo matchingGroupVo) {
		System.out.println("Matching Dao : createMatchingGroup;;;");

		int createMatchingGroup = sqlSession.insert("matching.createMatchingGroup", matchingGroupVo);

		return createMatchingGroup;
	}

	// 매칭글 읽기
	public MatchingVo read(int matchingNo) {
		System.out.println("Matching Dao : read;;;");
		System.out.println("매칭글 번호 : " + matchingNo);

		MatchingVo matchingVo = sqlSession.selectOne("matching.read", matchingNo);

		System.out.println("매칭글 등록 정보 : " + matchingVo);

		return matchingVo;
	}

	// 매칭글 읽기 - 조회수 증가
	public int hitsUp(int matchingNo) {
		System.out.println("Matching Dao : hitsUp;;;");
		int hitsUp = sqlSession.update("matching.hitsUp", matchingNo);

		return hitsUp;
	}
	
	/**/
	// 매칭글 읽기 - 댓글 리스트 불러오기
	public List<CommentVo> commentList(int matchingNo) {
		System.out.println("Matching Dao : commentList;;;");
		
		List<CommentVo> commentList = sqlSession.selectList("matching.commentList", matchingNo);
		
		return commentList;
	}
	
	// 매칭글 읽기 - 답글 리스트 불러오기
	public List<ReplyVo> replyList(int matchingNo) {
		System.out.println("Matching Dao : replyList;;;");
		
		List<ReplyVo> replyList = sqlSession.selectList("matching.replyList", matchingNo);
		
		return replyList;
	}
	/**/
	
	// 매칭글 읽기 - 댓글/답글 리스트 불러오기
	/*
	public List<CommentReplyVo> commentReplyList(int matchingNo) {
		System.out.println("매칭 다오: commentReplyList;;;");
		List<CommentReplyVo> commentReplyList = sqlSession.selectList("matching.commentReplyList", matchingNo);
		
		return commentReplyList;
	}
	*/

	// 매칭글 읽기 - 매칭 참가 신청
	public int joinMatching(MatchingGroupVo matchingGroupVo) {
		System.out.println("Matching Dao : joinMatching;;;");

		int joinMatching = sqlSession.insert("matching.joinMatching", matchingGroupVo);

		System.out.println("매칭 참가 신청 : " + joinMatching);
		
		return joinMatching;
	}

	// 매칭글 읽기 - 매칭 참가 취소
	public int outMatching(MatchingGroupVo matchingGroupVo) {
		System.out.println("Matching Dao : outMatching;;;");
		int outMatching = sqlSession.delete("matching.outMatching", matchingGroupVo);

		System.out.println("매칭 참가 신청 : " + outMatching);
		
		return outMatching;
	}

	// 리스트 / 매칭글 읽기 - 현재 매칭에 참가중인 인원 수
	public int matchingMember(int matchingNo) {
		System.out.println("Matching Dao : matchingMember;;;");
		int matchingMember = sqlSession.selectOne("matching.matchingMember", matchingNo);
		System.out.println("매칭 멤버 : " + matchingMember);

		return matchingMember;
	}

	// 매칭글 읽기 - 현재 매칭에 참가중인 인원 정보
	public List<UserVo> matchingMemberInfoList(int matchingNo) {
		System.out.println("Matching Dao : matchingMemberInfoList;;;");

		List<UserVo> matchingMemberInfoList = sqlSession.selectList("matching.matchingMemberInfoList", matchingNo);

		System.out.println("매칭 멤버 정보 리스트 : " + matchingMemberInfoList);
		
		return matchingMemberInfoList;
	}

	// 매칭글 읽기 - 현재 매창에 참가중이 유저 번호 리스트
	public List<Integer> groupUserNoList(int matchingNo) {
		System.out.println("Matching Dao : groupUserNo;;;");
		List<Integer> groupUserNoList = sqlSession.selectList("matching.groupUserNoList", matchingNo);
		
		System.out.println("사용자 번호 리스트 : " + groupUserNoList);
		
		return groupUserNoList;
	}

	// 매칭글 읽기 - 매칭상태 변경
	public int statusComplete(int matchingNo) {
		System.out.println("Matching Dao : statusComplete;;;");

		int statusComplete = sqlSession.update("matching.statusComplete", matchingNo);
		
		System.out.println("매칭 상태 변경 : " + statusComplete);
		
		return statusComplete;
	}
	
	// 매칭글 읽기 - 댓글 등록
	public int commentWrite(CommentVo commentVo) {
		System.out.println("Matching Dao : commentWrite;;;");
		
		int commentWrite = sqlSession.insert("matching.commentWrite", commentVo);
	
		System.out.println("댓글 작성 등록 : " + commentWrite);
		
		return commentWrite;
	}
	// 매칭글 읽기 - 등록된 댓글정보 불러오기
	public CommentVo commentInfo(int commentNo) {
		System.out.println("Matching Dao : commentInfo;;;");
		
		CommentVo commentInfo = sqlSession.selectOne("matching.commentInfo", commentNo);
		
		System.out.println("댓글 정보 : " + commentInfo);
		
		return commentInfo;
	}
	
	// 매칭글 읽기 - 답글 등록
	public int replyWrite(ReplyVo replyVo) {
		System.out.println("Matching Dao : replyWrite;;;");
		
		int replyWrite = sqlSession.insert("matching.replyWrite", replyVo);
		
		System.out.println("답글 작성 등록 : " + replyWrite);
		
		return replyWrite;
	}
	// 매칭글 읽기 - 등록된 답글정보 불러오기
	public ReplyVo replyInfo(int replyNo) {
		System.out.println("Matching Dao : replyNo;;;");
		
		ReplyVo replyInfo = sqlSession.selectOne("matching.replyInfo", replyNo);
		
		System.out.println("답글 정보 : " + replyInfo);
		
		return replyInfo;
	}
	
	// 매칭글 삭제
	public int deleteMatching(int matchingNo) {
		System.out.println("Matching Dao : deleteMatching;;;");
		
		int deleteMatching = sqlSession.delete("matching.deleteMatching", matchingNo);
		
		System.out.println("글 삭제 : " + deleteMatching);
		
		return deleteMatching;
	}
	
	// 매칭그룹 삭제
	public int deleteMatchingGroup(int matchingNo) {
		System.out.println("Matching Dao : deleteMatchingGroup;;;");
		
		int deleteMatchingGroup = sqlSession.delete("matching.deleteMatchingGroup", matchingNo);
		
		System.out.println("그룹 삭제 : " + deleteMatchingGroup);
		
		return deleteMatchingGroup;
	}

	// 텍스트 검색
		public List<MatchingVo> getSearchList(MatchingVo matchingVo) throws Exception{
			return sqlSession.selectList("matching.selectSearchList", matchingVo);
		}
	
}
