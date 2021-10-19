package com.otb.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.otb.vo.ReservationDateVo;
import com.otb.vo.ReservationMemberVo;
import com.otb.vo.ReservationTimeGroupVo;
import com.otb.vo.ReservationTimeVo;
import com.otb.vo.ReservationVo;
import com.otb.vo.RevInfoVo;
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
	
	
	
	//DateType 값 구하기(주중, 주말 구분)
	public String getDateType2(RevInfoVo  revInfoVo) {
		System.out.println("[reservationDao.getDateType2]");
		
		String dateType = sqlSession.selectOne("reservation.getDateType2", revInfoVo);
		
		System.out.println("dateType : " + dateType);
		
		return dateType;
	}
	
	
	
	//예약 insert
	public int insertreservation(ReservationVo reservationInfo) {
		System.out.println("[reservationDao.insertreservation]");
		
		int count = sqlSession.insert("reservation.insertreservation",reservationInfo);
		
		return count;
	}
	
	
	
	//예약 가능 시간  테이블  select
	public int getRereservationTime(ReservationTimeVo reservationTimeVo) {
		System.out.println("[reservationDao.getRereservationTime]");
		
		return sqlSession.selectOne("reservation.getRereservationTime", reservationTimeVo);
		
	}
	
	//예약 시간 정보 입력(reservation_time_group_table_insert)
	public int insertreservationTimeGroup(ReservationTimeGroupVo reservationtimegroupVo) {
		System.out.println("[reservationDao.insertreservationTimeGroup]");
		
		System.out.println("reservationtimegroupVo : " + reservationtimegroupVo);
		
		sqlSession.insert("reservation.insertreservationTimeGroup", reservationtimegroupVo);
		
		System.out.println("reservation_time_group_table_insert [성공]");
		
		return 0;
	}
	
	//
	public int insertreservationMember(ReservationMemberVo reservationMemberVo) {
		System.out.println("[reservationDao.insertreservationMember]");
		
		sqlSession.insert("reservation.insertreservationMember", reservationMemberVo);
		
		System.out.println("reservation_Member_table_insert [성공]");
		
		return 0;
	}
	
	
}
