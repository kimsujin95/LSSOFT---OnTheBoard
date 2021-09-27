package com.otb.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.otb.vo.UserVo;

@Repository
public class UserDao {

	@Autowired
	private SqlSession sqlSession;

	public UserVo selectUser(UserVo userVo) {

		System.out.println("[UserDao.selectUser()]");

		return sqlSession.selectOne("user.selectUser", userVo);

	}
	
	public int selectUser(int no) {

		System.out.println("[UserDao.selectUser(no)]");

		return sqlSession.selectOne("user.selectUserByNo", no);

	}

	public int insertUser(UserVo userVo) {

		System.out.println("[UserDao.insertUser()]");

		return sqlSession.insert("user.insertUser", userVo);

	}
	
}
