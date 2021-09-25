package com.otb.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.otb.vo.MatchingVo;

@Repository
public class MatchingDao {

	@Autowired
	private SqlSession sqlSession;

	// 매칭 리스트
	public List<MatchingVo> list() {
		System.out.println("MatchingDao: list;;;");

		List<MatchingVo> matchingList = sqlSession.selectList("matching.list");

		System.out.println(matchingList);

		return matchingList;
	}

	// 매칭글 쓰기
	public int write(MatchingVo matchingVo) {
		System.out.println("MatchingDao: write;;;");

		int write = sqlSession.insert("matching.write", matchingVo);

		return write;
	}

	// 매칭글 읽기
	public MatchingVo read(int matchingNo) {
		System.out.println("MatchingDao: read;;;");
		System.out.println(matchingNo);

		MatchingVo matchingVo = sqlSession.selectOne("matching.read", matchingNo);
		
		System.out.println(matchingVo);

		return matchingVo;
	}

}
