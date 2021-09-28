package com.otb.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.otb.vo.GameVo;
import com.otb.vo.MatchingGroupVo;
import com.otb.vo.MatchingVo;
import com.otb.vo.ThemeVo;

@Repository
public class MatchingDao {

	@Autowired
	private SqlSession sqlSession;

	// 매칭 리스트
	public List<MatchingVo> list() {
		System.out.println("매칭 다오: list;;;");

		List<MatchingVo> matchingList = sqlSession.selectList("matching.list");

		System.out.println(matchingList);

		return matchingList;
	}

	// 매칭글 쓰기폼 - 유저 나이
	public int userAge(int userNo) {
		System.out.println("매칭 다오: userAge;;;");

		int userAge = sqlSession.selectOne("matching.userAge", userNo);
		System.out.println(userAge);

		return userAge;
	}

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

	// 매칭글 쓰기
	public int write(MatchingVo matchingVo) {
		System.out.println("매칭 다오: write;;;");

		System.out.println(matchingVo);

		int write = sqlSession.insert("matching.write", matchingVo);

		return write;
	}
	
	// 매칭글 쓰기 → 매칭그룹 생성
	public int addMatchingMember(MatchingGroupVo matchingGroupVo) {
		System.out.println("매칭 다오: addMatchingMember;;;");
		
		int addMatchingMember = sqlSession.insert("matching.addMatchingMember", matchingGroupVo);
		
		return addMatchingMember;
	} 

	// 매칭글 읽기
	public MatchingVo read(int matchingNo) {
		System.out.println("매칭 다오: read;;;");
		System.out.println(matchingNo);

		MatchingVo matchingVo = sqlSession.selectOne("matching.read", matchingNo);

		System.out.println(matchingVo);

		return matchingVo;
	}

}
