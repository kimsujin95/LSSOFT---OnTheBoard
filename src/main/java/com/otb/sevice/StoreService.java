package com.otb.sevice;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.otb.dao.StoreDao;
import com.otb.vo.MatchingVo;
import com.otb.vo.ReservationDateVo;
import com.otb.vo.ReservationTimeVo;
import com.otb.vo.StoreVo;
import com.otb.vo.UserVo;

@Service
public class StoreService {
	
	@Autowired
	private StoreDao storeDao;
	
	//매장 리스트
	public List<StoreVo> storeList(){
		System.out.println("[StoreService.storeList()]");
		
		List<StoreVo> storeList = storeDao.storeList();
		
		return storeList;
	}
	
	//매장 키워드 검색
	public List<StoreVo> storeSearchList(String keyword){
		
		System.out.println("[StoreService.storeSearchList]");
		
		List<StoreVo> storeList = storeDao.storeSearchList(keyword);
		
		return storeList;
		
	}
	
	// 유저 예약 페이지 정보
	public Map<String, Object> userDataInfoMap(int userNo) {
		System.out.println("[StoreService.userDataInfoMap]");
		
		List<MatchingVo> userHostMatchingList = storeDao.userHostMatchingList(userNo);
		System.out.println(userHostMatchingList);
		
		Map<String, Object> userDataInfoMap = new HashMap<String, Object>();
		userDataInfoMap.put("userHostMatchingList", userHostMatchingList);
		
		return userDataInfoMap;
	}
	
	//매장정보
	public List<StoreVo> storeInfo(int storeNo) {
		System.out.println("[storeService.storeInfo]");
		
		List<StoreVo> storeInfo = storeDao.getstoreInfo(storeNo);
		
		System.out.println("스토어서비스_매장정보 : " + storeInfo);
		
		return storeInfo;
	}
	
	//그룹원들 정보 가져오기
	public List<UserVo> grouplist(int matchingno){
		System.out.println("[StoreService.grouplist]");
		
		return storeDao.grouplist(matchingno);
	}
	
	//선택한 날짜의 예약가능시간 정보 가져오기
	public String[] getDateInfo(ReservationDateVo reservationDateVo) {
		System.out.println("[StoreService.getDateInfo]");
		
		int reservationDateNo = storeDao.getDateNo(reservationDateVo);
		System.out.println(reservationDateNo);
		
		List<ReservationTimeVo> reservationableTimeVo = storeDao.getStoreRevTime(reservationDateNo);
		System.out.println("reservationableTimeVo : " + reservationableTimeVo);
		
		//reservationableTimeVo 의 배열요소 값들을 14개의 시간대 값 배열의 요소와 비교하여 일치하는 값만을 반환
		String [] revableTimeList = new String[14];
		
		for(int i = 0; i < reservationableTimeVo.size(); i++) {
			for(int j = 0; j < revableTimeList.length; j++) {
				if(Integer.parseInt(reservationableTimeVo.get(i).getStoreReservationTime()) == (j + 9)) {
					revableTimeList[j] = reservationableTimeVo.get(i).getStoreReservationTime();
					break;
				};
			};
		};
		
		/*
		 * //예약가능시간 정보가 포함된 reservationableTimeList의 Map<String, Object>
		 * reservationableTimeMap = new HashMap<String, Object>();
		 * 
		 * for(int i=0; i< reservationableTimeVo.size(); i++) {
		 * reservationableTimeMap.put(reservationableTimeVo.get(i).
		 * getStoreReservationTime(), true); }
		 * System.out.println(reservationableTimeMap);
		 */
		
		return revableTimeList;
	}
	
}
