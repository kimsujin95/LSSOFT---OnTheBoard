package com.otb.sevice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.otb.dao.MatchingDao;
import com.otb.dao.ReservationDao;
import com.otb.dao.StoreDao;
import com.otb.vo.ReservationDateVo;
import com.otb.vo.ReservationMemberVo;
import com.otb.vo.ReservationTimeGroupVo;
import com.otb.vo.ReservationTimeVo;
import com.otb.vo.ReservationVo;
import com.otb.vo.RevInfoVo;
import com.otb.vo.StoreVo;
import com.otb.vo.UserVo;

@Service
public class ReservationService {

	@Autowired
	private ReservationDao reservationDao;
	@Autowired
	private MatchingDao matchingDao;
	@Autowired
	private StoreDao storeDao;

	// 예약정보를 받아와서 에약페이지 구성할 데이터 넘겨준다.
	public ReservationVo getreservationinfo(int matchingNo, String[] checkedTime, ReservationDateVo revDate,
			String revType) {
		System.out.println("[reservationService.getreservationinfo()]");

		System.out.println("에약서비스매장번호 : " + revDate.getStoreNo());
		System.out.println("예약서비스매칭그룹번호 : " + matchingNo);
		System.out.println("예약서비스선택한날짜 : " + revDate.getStoreReservationDate());

		// 체크한 시간의 length를 매장 시간당 요금제에 곱하여 총 결제금액을 반환해준다.
		for (int i = 0; i < checkedTime.length; i++) {
			System.out.println("선택한 시간 : " + checkedTime[i]);
		}

		// 주중, 주말을 구분하는 DateType값 가져오기(총 요금 계산에 사용)
		String DateType = reservationDao.getDateType(revDate);
		System.out.println("예약다오_데이트타입 : " + DateType);

		// 매장 번호로 매장 시간당 요금을 가져온다.(총 요금 계산에 사용)
		StoreVo storeChargeVo = reservationDao.getstoreCharge(revDate.getStoreNo());

		// 매칭번호에 속하는 참여자의 인원수를 뽑아온다.
		int matchingMember = matchingDao.matchingMember(matchingNo);

		// 매칭 그룹원 리스트 뽑아오기
		List<UserVo> groupList = storeDao.grouplist(matchingNo);
		System.out.println("그룹원 정보 : " + groupList);

		// 예약날짜번호 구하기
		int reservationDateNo = storeDao.getDateNo(revDate);
		System.out.println("예약날짜_번호 : " + reservationDateNo);

		// 선택한 시간대에 대한 총 요금
		int revChargeTotal;
		int revChargePeople;

		// 주중, 주말 판별해서 시간당 요금제 구하기
		if ("1".equals(DateType) || "7".equals(DateType)) {
			System.out.println("주말");
			revChargeTotal = storeChargeVo.getStoreChargeWeekend() * checkedTime.length * groupList.size();
		} else {
			System.out.println("주중");
			revChargeTotal = storeChargeVo.getStoreChargeWeek() * checkedTime.length * groupList.size();
		}

		// 에약방식(그룹, 개인)
		System.out.println("예약방식 : " + revType);

		// 예약 인원수
		revChargePeople = matchingMember;

		System.out.println("총 예약 요금 : " + revChargeTotal);
		System.out.println("매칭 참여한 인원 수 : " + matchingMember);
		System.out.println("인원당 예약 요금 : " + revChargePeople);

		// 예약 정보 페이지 구성에 필요한 데이터 보내기
		ReservationVo reservationInfo = new ReservationVo(revDate.getStoreNo(), revChargeTotal, revChargePeople,
				revType, reservationDateNo);

		System.out.println("예약서비스_예약정보Vo : " + reservationInfo);

		return reservationInfo;

	}

	// 예약정보 insert
	public int insertreservation(RevInfoVo revInfoVo, String[] chdTimeArray) {
		System.out.println("[reservationService.insertreservation]");

		System.out.println(revInfoVo);

		int storeNo = revInfoVo.getStoreNo();
		String revType = revInfoVo.getRevType();
		int revChargeTotal; // 총금액

		// 인원(매칭번호-->그룹원수)
		// 매칭번호에 속하는 참여자의 인원수를 뽑아온다.
		List<Integer> userNoList = matchingDao.groupUserNoList(revInfoVo.getGroupNo());
		int revChargePeople = userNoList.size();

		// 총금액 구하기
		// 1.주중 주말 구분자 가져오기
		String DateType = reservationDao.getDateType2(revInfoVo);

		// 2.매장정보 가져오기(주말,주중 요금)
		StoreVo storeChargeVo = reservationDao.getstoreCharge(revInfoVo.getStoreNo());

		// 주중, 주말 판별해서 시간당 요금제 구하기 -->총금액
		if ("1".equals(DateType) || "7".equals(DateType)) {
			System.out.println("주말");
			revChargeTotal = storeChargeVo.getStoreChargeWeekend() * chdTimeArray.length * revChargePeople;
		} else {
			System.out.println("주중");
			revChargeTotal = storeChargeVo.getStoreChargeWeek() * chdTimeArray.length * revChargePeople;
		}
		
		// 예약날짜번호 구하기
		int reservationDateNo = storeDao.getDateNo2(revInfoVo);

		// 예약정보 Vo만들기 저장****** 예약 정보 테이블 저장
		ReservationVo reservationInfo = new ReservationVo(storeNo, revChargeTotal, revChargePeople, revType,
				reservationDateNo);
		reservationDao.insertreservation(reservationInfo);

		int reservationNo = reservationInfo.getReservationNo();
		
		System.out.println("예약 일렬 번호");
		System.out.println(reservationNo);
		
		// 예약 시간 정보(ReservationTimeVo.reservationTimeNo)구하기
		// 예약일렬번호O
		for (int i = 0; i < chdTimeArray.length; i++) {

			ReservationTimeVo reservationTimeVo = new ReservationTimeVo();
			reservationTimeVo.setReservationDateNo(reservationDateNo);
			reservationTimeVo.setStoreReservationTime(chdTimeArray[i]);

			int reservation_time_no = reservationDao.getRereservationTime(reservationTimeVo);

			System.out.println("===========================================");
			System.out.println("reservationNo = " + reservationNo);
			System.out.println("reservation_time_no = " + reservation_time_no);
			
			ReservationTimeGroupVo reservationtimegroupVo = new ReservationTimeGroupVo();
			reservationtimegroupVo.setReservationNo(reservationNo);
			reservationtimegroupVo.setReservationTimeNo(reservation_time_no);
			
			//reservation_time_group_테이블 insert
			reservationDao.insertreservationTimeGroup(reservationtimegroupVo);
			
		}

		ReservationMemberVo reservationMemberVo = new ReservationMemberVo();
		
		//reservationChargePer 구하기
		int reservationChargePer = revChargeTotal/revChargePeople;
		
		//예약멤버 테이블 insert
		for(int i = 0; i < userNoList.size(); i++) {
			reservationMemberVo.setUserNo(userNoList.get(i));
			reservationMemberVo.setReservationChargePer(reservationChargePer);
			reservationMemberVo.setMatchingNo(revInfoVo.getGroupNo());
			reservationMemberVo.setReservationNo(reservationNo);
			
			System.out.println("reservationMemberVo : " + reservationMemberVo);
			
			//reservation_Member_테이블 insert
			reservationDao.insertreservationMember(reservationMemberVo);
			
		}
		
		System.out.println("[예약 테이블 insert END]");
		
		// 예약일렬번호 reservationInfo
		// 시간번호

		// 예약시간정보 테이블 저장

		// 예약가능시간테이블-->시간번호 들....
		// for --> store_reservation_time
		/*
		 * --> reservationDateNo
		 * 
		 * ==? reservation_time_no
		 * 
		 * 
		 * //int count = reservationDao.insertreservation(reservationInfo); chdTimeArray
		 * 
		 */
		return 1;
	}
	
	//마이페이지 예약정보 가져오기
	public int selectReservationInfoList(int userNo) {
		System.out.println("[reservationService.selectReservationInfoList]");
		
		
		
		return 0;
	}
	

}
