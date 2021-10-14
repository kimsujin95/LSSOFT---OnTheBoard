package com.otb.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.otb.vo.CommentVo;
import com.otb.vo.GameVo;
import com.otb.vo.MatchingGroupVo;
import com.otb.vo.MatchingVo;
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
		System.out.println("매칭 다오: list;;;");

		List<MatchingVo> matchingList = sqlSession.selectList("matching.list", keyword);

		System.out.println("매칭 다오: list;;; " + matchingList);

		return matchingList;
	}
	
	// 매칭 메인페이지 - 시도 코드에 맞는 시군구 리스트
	public List<SigunguVo> tabContentSigunguList(int sidoCode) {
		System.out.println("매칭 다오: tabContentSigunguList;;;");

		List<SigunguVo> tabContentSigunguList = sqlSession.selectList("matching.tabContentSigunguList", sidoCode);

		return tabContentSigunguList;
	}

	// 매칭 메인페이지 - 테마 코드에 맞는 게임 리스트
	public List<GameVo> tabContentGameList(int themeNo) {
		System.out.println("매칭 다오: tabContentGameList;;;");

		List<GameVo> gameList = sqlSession.selectList("matching.tabContentGameList", themeNo);

		return gameList;
	}

	// 마이페이지 - 매칭 리스트
	public List<MatchingVo> mypageList(int userNo) {
		System.out.println("매칭 다오: mypageList;;;");
		System.out.println(userNo);

		List<MatchingVo> matchingList = sqlSession.selectList("matching.mypageList", userNo);

		System.out.println(matchingList);

		return matchingList;
	}

	// 매칭글 작성 폼 - 게임 리스트
	public List<GameVo> gameList() {
		System.out.println("매칭 다오: gameList;;;");

		List<GameVo> gameList = sqlSession.selectList("matching.gameList");
		System.out.println(gameList);

		return gameList;
	}

	// 매칭글 작성 폼 - 게임 테마 리스트
	public List<ThemeVo> themeList() {
		System.out.println("매칭 다오: themeList;;;");

		List<ThemeVo> themeList = sqlSession.selectList("matching.themeList");
		System.out.println(themeList);

		return themeList;
	}

	// 매칭글 작성 폼 - 시도 리스트
	public List<SidoVo> sidoList() {
		System.out.println("매칭 다오: sidoList;;;");

		List<SidoVo> sidoList = sqlSession.selectList("matching.sidoList");

		return sidoList;
	}

	// 매칭글 작성 폼 - 시군구 리스트
	public List<SigunguVo> sigunguList() {
		 System.out.println("매칭 다오: sigunguList;;;");
	
		 List<SigunguVo> sigunguList = sqlSession.selectList("matching.sigunguList");
	
		 return sigunguList;
	 }


	// 매칭글 등록
	public int write(MatchingVo matchingVo) {
		System.out.println("매칭 다오: write;;;");

		System.out.println(matchingVo);

		int write = sqlSession.insert("matching.write", matchingVo);

		return write;
	}

	// 매칭글 등록 → 매칭그룹 생성
	public int createMatchingGroup(MatchingGroupVo matchingGroupVo) {
		System.out.println("매칭 다오: createMatchingGroup;;;");

		int createMatchingGroup = sqlSession.insert("matching.createMatchingGroup", matchingGroupVo);

		return createMatchingGroup;
	}

	// 매칭글 읽기
	public MatchingVo read(int matchingNo) {
		System.out.println("매칭 다오: read;;;");
		System.out.println(matchingNo);

		MatchingVo matchingVo = sqlSession.selectOne("matching.read", matchingNo);

		System.out.println(matchingVo);

		return matchingVo;
	}

	// 매칭글 읽기 - 조회수 증가
	public int hitsUp(int matchingNo) {
		System.out.println("매칭 다오: hitsUp;;;");
		int hitsUp = sqlSession.update("matching.hitsUp", matchingNo);

		return hitsUp;
	}
	
	// 매칭글 읽기 - 댓글 리스트 불러오기
	public List<CommentVo> commentList(int matchingNo) {
		System.out.println("매칭 다오: commentList;;;");
		
		List<CommentVo> commentList = sqlSession.selectList("matching.commentList", matchingNo);
		
		return commentList;
	}

	// 매칭글 읽기 - 매칭 참가 신청
	public int joinMatching(MatchingGroupVo matchingGroupVo) {
		System.out.println("매칭 다오: joinMatching;;;");

		int joinMatching = sqlSession.insert("matching.joinMatching", matchingGroupVo);

		return joinMatching;
	}

	// 매칭글 읽기 - 매칭 참가 취소
	public int outMatching(MatchingGroupVo matchingGroupVo) {
		System.out.println("매칭 다오: outMatching;;;");
		int outMatching = sqlSession.delete("matching.outMatching", matchingGroupVo);

		return outMatching;
	}

	// 리스트 / 매칭글 읽기 - 현재 매칭에 참가중인 인원 수
	public int matchingMember(int matchingNo) {
		System.out.println("매칭 다오: matchingMember;;;");
		int matchingMember = sqlSession.selectOne("matching.matchingMember", matchingNo);
		System.out.println(matchingMember);

		return matchingMember;
	}

	// 매칭글 읽기 - 현재 매칭에 참가중인 인원 정보
	public List<UserVo> matchingMemberInfoList(int matchingNo) {
		System.out.println("매칭 다오: matchingMemberInfoList;;;");

		List<UserVo> matchingMemberInfoList = sqlSession.selectList("matching.matchingMemberInfoList", matchingNo);

		return matchingMemberInfoList;
	}

	// 매칭글 읽기 - 매칭상태 변경
	public int statusComplete(int matchingNo) {
		System.out.println("매칭 서비스: statusComplete;;;");

		int statusComplete = sqlSession.update("matching.statusComplete", matchingNo);
		return statusComplete;
	}
	
	// 매칭글 읽기 - 댓글 등록
	public int commentWrite(CommentVo commentVo) {
		System.out.println("매칭 서비스: commentWrite;;;");
		
		int commentWrite = sqlSession.insert("matching.commentWrite", commentVo);
		
		return commentWrite;
	}
	
	// 매칭글 읽기 - 등록된 댓글정보 불러오기
	public CommentVo commentInfo(int commentNo) {
		System.out.println("매칭 서비스: commentInfo;;;");
		
		CommentVo commentInfo = sqlSession.selectOne("matching.commentInfo", commentNo);
		
		return commentInfo;
	}
	

}
