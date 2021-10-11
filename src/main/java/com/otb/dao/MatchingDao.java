package com.otb.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.otb.vo.GameVo;
import com.otb.vo.MatchingGroupVo;
import com.otb.vo.MatchingVo;
import com.otb.vo.ThemeVo;
import com.otb.vo.UserVo;

@Repository
public class MatchingDao {

	@Autowired
	private SqlSession sqlSession;

	// 매칭 리스트
	public List<MatchingVo> list() {
		System.out.println("매칭 다오: list;;;");

		List<MatchingVo> matchingList = sqlSession.selectList("matching.list");

		System.out.println("매칭 다오: list;;; " + matchingList);

		return matchingList;
	}

	// 마이페이지 - 매칭 리스트
	public List<MatchingVo> mypageList(int userNo) {
		System.out.println("매칭 다오: mypageList;;;");
		System.out.println(userNo);

		List<MatchingVo> matchingList = sqlSession.selectList("matching.mypageList", userNo);

		System.out.println(matchingList);

		return matchingList;
	}

	// 매칭글 쓰기폼 - 유저 나이
	/*
	 * public int userAge(int userNo) { System.out.println("매칭 다오: userAge;;;");
	 * 
	 * int userAge = sqlSession.selectOne("matching.userAge", userNo);
	 * System.out.println(userAge);
	 * 
	 * return userAge; }
	 */

	// 매칭글 쓰기폼 - 게임 이름
	public List<GameVo> gameName() {
		System.out.println("매칭 다오: gameName;;;");

		List<GameVo> gameName = sqlSession.selectList("matching.gameName");
		System.out.println(gameName);

		return gameName;
	}

	// 매칭글 쓰기폼 - 게임 테마
	public List<ThemeVo> gameTheme() {
		System.out.println("매칭 다오: gameTheme;;;");

		List<ThemeVo> gameTheme = sqlSession.selectList("matching.gameTheme");
		System.out.println(gameTheme);

		return gameTheme;
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

}
