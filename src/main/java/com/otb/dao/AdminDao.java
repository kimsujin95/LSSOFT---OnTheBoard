package com.otb.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
	
	//매장 이미지 등록 - ajax
	public void insertStoreImage(StoreImageVo storeImage) {
		sqlSession.insert("admin.insertStoreImage", storeImage);
		System.out.println("이미지 저장 완료");
	}
	
	//스케쥴 조회 - 날짜/ 해당 날짜가 있을 경우 날짜 번호를 리턴, 없을 경우 0을 리턴
	public int selectDateNo(ReservationDateVo reservationDateVo) {
		if(sqlSession.selectOne("admin.selectDateNo", reservationDateVo) != null) {
			return sqlSession.selectOne("admin.selectDateNo", reservationDateVo);
		} else {
			return 0;
		}
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
		sqlSession.insert("admin.deleteTime", dateNo);
	}
}
