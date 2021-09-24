package com.otb.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.otb.vo.MatchingVo;

@Repository
public class MatchingDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	// 매칭글 쓰기
	public int write(MatchingVo matchingVo) {
		System.out.println("MatchingDao: write;;;");
		int write = sqlSession.insert("matching.write", matchingVo);

		return write;
	}

}
