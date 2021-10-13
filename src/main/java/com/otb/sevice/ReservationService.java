package com.otb.sevice;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.otb.dao.ReservationDao;

@Service
public class ReservationService {

	@Autowired
	private ReservationDao reservationDao;
	
	//예약정보를 받아와서 에약페이지 구성할 데이터 넘겨준다.
	public String getreservationinfo(Map<String, Object> revselinfo) {
		System.out.println("[reservationService.getreservationinfo()]");
		
		System.out.println("에약서비스매장번호 : " + revselinfo.get("storeNo"));
		System.out.println("예약서비스매칭그룹번호 : " + revselinfo.get("matchingNo"));
		
		//체크한 시간의 length를 매장 시간당 요금제에 곱하여 총 결제금액을 반환해준다.
		String[] chdList = (String[]) revselinfo.get("checkedTime");
		for(int i = 0; i < chdList.length;i++) {
			System.out.println("선택한 시간 : " + chdList[i]);	
		}
		
		int storeNo = (int)revselinfo.get("storeNo");
		
		//매장 번호로 매장 시간당 요금을 가져온다.
		int storechargeperhour = reservationDao.getstoreCharge(storeNo);
		
		
		
		return null;
	}
	
}
