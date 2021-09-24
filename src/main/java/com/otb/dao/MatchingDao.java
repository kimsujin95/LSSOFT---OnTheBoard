package com.otb.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MatchingDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	// 매칭글 쓰기
	public int write() {
		System.out.println("MatchingDao: write;;;");
		int write = sqlSession.insert("matching.write");

		return write;
	}

}
