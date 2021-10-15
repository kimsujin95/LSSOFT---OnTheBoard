package com.otb.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.otb.vo.ReservationDateVo;
import com.otb.vo.StoreVo;

@Repository
public class ReservationDao {

	@Autowired
	private SqlSession sqlSession;
	
	//매장 번호 받아와서 매장 시간당 요금 반환
	public StoreVo getstoreCharge(int storeNo) {
		System.out.println("[reservationDao.getstoreCharge()]");
		
		System.out.println("다오매장번호 : " + storeNo);
		
		StoreVo storeCharge = sqlSession.selectOne("getstoreCharge",storeNo);
		
		System.out.println("주중_매장_요금제 : " + storeCharge.getStoreChargeWeek());
		System.out.println("주말_매장_요금제 : " + storeCharge.getStoreChargeWeekend());
		
		return null;
	}
	
	public String getDateType(ReservationDateVo revDate) {
		System.out.println("[reservationDao.getDateType]");
		
		sqlSession.selectOne("getDateType", revDate);
		
		return null;
	}
	
}
