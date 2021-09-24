package com.otb.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MatchingDao {
	
	@Autowired
//	private SqlSession sqlSession;
	
	// 매칭글 쓰기
	public int write() {
		
//		int write = sqlSession.insert("matching.write");
		int write = 1;
		return write;
	}

}
