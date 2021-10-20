package com.otb.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.otb.vo.AdminReservationVo;
import com.otb.vo.OwnedGameVo;
import com.otb.vo.ReservationDateVo;
import com.otb.vo.ReservationTimeVo;
import com.otb.vo.StoreImageVo;
import com.otb.vo.StoreVo;

@Repository
public class AdminDao {

	@Autowired
	private SqlSession sqlSession;
	
	//매장 정보 호출
	public StoreVo selectStore(int userNo) {
		System.out.println("dao 매장 확인");
		System.out.println(userNo);
		
		StoreVo storeVo = sqlSession.selectOne("admin.selectStore", userNo);
		return storeVo;
	}
	
	// 매장 등록
	public void insertStoreInfo(StoreVo storeVo) {
		sqlSession.insert("admin.insertStoreInfo", storeVo);
	}

	// 매장 정보 수정
	public void updateStoreInfo(StoreVo storeVo) {
		sqlSession.update("admin.updateStoreInfo", storeVo);
		System.out.println("업데이트 완료");
	}
	
	//매장 이미지 호출
	public List<StoreImageVo> selectImageList(int storeNo) {
		List<StoreImageVo> storeImageList = sqlSession.selectList("admin.selectListStoreImage", storeNo);
		return storeImageList;
	}
	
	//추가된 이미지 호출
	public StoreImageVo selectOneStoreImage(int storeImageNo) {
		StoreImageVo addedStoreImage = sqlSession.selectOne("admin.selectOneStoreImage", storeImageNo);
		return addedStoreImage;
	}
		
	//매장 이미지 등록 - ajax
	public void insertStoreImage(StoreImageVo storeImage) {
		sqlSession.insert("admin.insertStoreImage", storeImage);
		System.out.println("이미지 저장 완료");
	}
	
	//매장 이미지 삭제 - ajax
	public int deleteStoreImage(StoreImageVo storeImage) {
		return sqlSession.delete("admin.deleteStoreImage",storeImage);
	}
	
	//스케쥴 조회 - 날짜/ 해당 날짜가 있을 경우 날짜 번호를 리턴, 없을 경우 0을 리턴
	public int selectDateNo(ReservationDateVo reservationDateVo) {
		if(sqlSession.selectOne("admin.selectDateNo", reservationDateVo) != null) {
			return sqlSession.selectOne("admin.selectDateNo", reservationDateVo);
		} else {
			return 0;
		}
	}
	
	//스케쥴 조회 - 해당 날짜의 예약 가능 인원 수 체크
	public ReservationDateVo selectReservationPeoples(int dateNo) {
		return sqlSession.selectOne("admin.selectReservationPeoples", dateNo);
	}
	
	//매장 스케쥴 조회
	public List<String> selectTimeList(int dateNo) {
		return sqlSession.selectList("admin.selectTimeList", dateNo);
	}
	
	//스케쥴 등록 - 날짜
	public void insertDate(ReservationDateVo reservationDateVo) {
//		System.out.println("스케쥴 다오 - 날짜 등록");
		sqlSession.insert("admin.insertDate", reservationDateVo);
	}
	
	//스케쥴 등록 - 시간
	public void insertTime(ReservationTimeVo reservationTimeVo) {
//		System.out.println("스케쥴 다오 - 시간 등록");
		sqlSession.insert("admin.insertTime", reservationTimeVo);
	}

	//스케쥴 삭제 - 시간
	public void deleteTime(int dateNo) {
		System.out.println("스케쥴 다오 - 시간 삭제");
		sqlSession.delete("admin.deleteTime", dateNo);
	}
	
	//매장 보유게임 등록
	public void insertOwnedGame(OwnedGameVo ownedGame) {
		System.out.println("보유 게임 - 등록");
		sqlSession.insert("admin.insertOwnedGame", ownedGame);
	}

	//매장 보유게임 삭제
	public void deleteOwnedGame(OwnedGameVo ownedGame) {
		System.out.println("보유 게임 - 삭제");
		sqlSession.insert("admin.deleteOwnedGame", ownedGame);
	}
	
	//매장 보유 게임 확인
	public List<OwnedGameVo> selectOwnedList(int storeNo) {
		return sqlSession.selectList("admin.selectOwnedList", storeNo);
	}
	
	//매장에 등록된 예약 호출
	public List<AdminReservationVo> selectReservationList(Map<String, Object> searchKey) {
		return sqlSession.selectList("admin.selectReservationList", searchKey);
	}
	
	//매장에 등록된 예약 하나
	public AdminReservationVo selectReservation(int reservationNo) {
		return sqlSession.selectOne("admin.selectReservation", reservationNo);
	}
	
	//예약 수정
	public int updateReservation(AdminReservationVo modifyReservation) {
		return sqlSession.update("admin.updateReservation", modifyReservation);
	}
	
}
