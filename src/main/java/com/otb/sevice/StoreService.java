package com.otb.sevice;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.otb.dao.AdminDao;
import com.otb.dao.StoreDao;
import com.otb.vo.GameVo;
import com.otb.vo.MatchingVo;
import com.otb.vo.ReservationDateVo;
import com.otb.vo.ReservationTimeVo;
import com.otb.vo.StoreImageVo;
import com.otb.vo.StoreVo;
import com.otb.vo.UserVo;

@Service
public class StoreService {
	
	@Autowired
	private StoreDao storeDao;
	@Autowired
	private AdminDao adminDao;
	
	
	//매장 리스트
	public List<StoreVo> getStoreList(){
		System.out.println("[StoreService.storeList()]");
		
		List<StoreVo> storeList = storeDao.selectStoreList();
		
		return storeList;
	}
	
	//매장 키워드 검색
	public List<StoreVo> storeSearchList(String keyword){
		
		System.out.println("[StoreService.storeSearchList]");
		
		List<StoreVo> storeList = storeDao.storeSearchList(keyword);
		
		return storeList;
		
	}
	
	//해당 게임을 보유한 매장 검색
	public List<StoreVo> getOwnedStoreList(int gameNo) {
		System.out.println("스토어 서비스 게임 보유 리스트");
		
		List<StoreVo> storeList = storeDao.storeSearchList(gameNo);
		
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
	public Map<String, Object> storeInfo(int storeNo) {
		System.out.println("[storeService.storeInfo]");
		
		StoreVo storeInfo = storeDao.getstoreInfo(storeNo);
		List<StoreImageVo> storeimgList = adminDao.selectImageList(storeNo);
		List<GameVo> ownedGameList = storeDao.ownedGameList(storeNo);

		
		
		System.out.println("스토어서비스_매장정보 : " + storeInfo);
		
		Map<String, Object> storeinfo = new HashMap<String, Object>();
		
		storeinfo.put("storeInfo", storeInfo);
		storeinfo.put("storeimgList", storeimgList);
		storeinfo.put("ownedGameList", ownedGameList);
		
		return storeinfo;
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
