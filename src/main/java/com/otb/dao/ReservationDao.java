package com.otb.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReservationDao {

	@Autowired
	private SqlSession sqlSession;
	
	//매장 번호 받아와서 매장 시간당 요금 반환
	public int getstoreCharge(int storeNo) {
		System.out.println("[storeDao.getstoreCharge()]");
		
		System.out.println("다오매장번호 : " + storeNo);
		
		return sqlSession.selectOne("getstoreCharge",storeNo);
		
	}
	
}
