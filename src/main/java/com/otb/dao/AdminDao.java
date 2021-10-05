package com.otb.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
		
	
}
