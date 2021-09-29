package com.otb.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.otb.vo.StoreVo;

@Repository
public class StoreDao {

	@Autowired
	private SqlSession sqlSession;
	
	//매장 리스트
	public List<StoreVo> storeList(){
		
		System.out.println("[StoreDao.storeList]");
		
		List<StoreVo> storeList = sqlSession.selectList("store.list");
		
		return storeList;
	};
	
	//매장 키워드 검색
	public List<StoreVo> storeSearchList(String keyword){
		
		System.out.println("[StoreDao.storeSearchList]");
		
		return sqlSession.selectList("store.searchList",keyword);
		
	}
	
	
}
