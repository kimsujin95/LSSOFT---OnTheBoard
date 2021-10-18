package com.otb.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.otb.vo.ReservationDateVo;
import com.otb.vo.ReservationVo;
import com.otb.vo.StoreVo;

@Repository
public class ReservationDao {

	@Autowired
	private SqlSession sqlSession;
	
	//매장 번호 받아와서 매장 시간당 요금 반환
	public StoreVo getstoreCharge(int storeNo) {
		System.out.println("[reservationDao.getstoreCharge()]");
		
		System.out.println("다오매장번호 : " + storeNo);
		
		StoreVo storeCharge = sqlSession.selectOne("reservation.getstoreCharge",storeNo);
		
		System.out.println("주중_매장_요금제 : " + storeCharge.getStoreChargeWeek());
		System.out.println("주말_매장_요금제 : " + storeCharge.getStoreChargeWeekend());
		
		return storeCharge;
	}
	
	//DateType 값 구하기(주중, 주말 구분)
	public String getDateType(ReservationDateVo revDate) {
		System.out.println("[reservationDao.getDateType]");
		
		String dateType = sqlSession.selectOne("reservation.getDateType", revDate);
		
		System.out.println("dateType : " + dateType);
		
		return dateType;
	}
	
	//예약 insert
	public String insertreservation(ReservationVo reservationInfo) {
		System.out.println("[reservationDao.insertreservation]");
		
		sqlSession.insert("reservation.insertreservation",reservationInfo);
		
		return null;
	}
}
