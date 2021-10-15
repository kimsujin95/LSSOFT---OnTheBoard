package com.otb.sevice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.otb.dao.ReservationDao;
import com.otb.vo.ReservationDateVo;
import com.otb.vo.StoreVo;

@Service
public class ReservationService {

	@Autowired
	private ReservationDao reservationDao;
	
	//예약정보를 받아와서 에약페이지 구성할 데이터 넘겨준다.
	public String getreservationinfo(int matchingNo, String[] checkedTime, ReservationDateVo revDate) {
		System.out.println("[reservationService.getreservationinfo()]");
		
		System.out.println("에약서비스매장번호 : " + revDate.getStoreNo());
		System.out.println("예약서비스매칭그룹번호 : " + matchingNo);
		System.out.println("예약서비스선택한날짜 : " + revDate.getStoreReservationDate());
		
		//체크한 시간의 length를 매장 시간당 요금제에 곱하여 총 결제금액을 반환해준다.
		for(int i = 0; i < checkedTime.length;i++) {
			System.out.println("선택한 시간 : " + checkedTime[i]);	
		}
		
		//매장 번호로 매장 시간당 요금을 가져온다.
		StoreVo storechargeperhour = reservationDao.getstoreCharge(revDate.getStoreNo());
		
		
		
		String DateType = reservationDao.getDateType(revDate);
		
		//String dateType = 
		
		return null;
		
	}
	
}
