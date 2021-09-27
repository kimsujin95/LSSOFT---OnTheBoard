package com.otb.sevice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.otb.dao.UserDao;
import com.otb.vo.UserVo;

@Service
public class UserService {
	
	@Autowired
	
	private UserDao userDao;
	
	// 로그인(사용자정보 가져오기)
	public UserVo getUser(UserVo userVo) {
		
		System.out.println("[UserService.getUser()]");

		UserVo authUser = userDao.selectUser(userVo);

		return authUser;

	}
	
	// 일련번호로 (사용자정보 가져오기)
	public UserVo getUserInfo(int userNo) {
		
		System.out.println("[UserService.getUserInfo()]");

		UserVo userVo = userDao.selectUser(userNo);

		return userVo;

	}
	
	//회원가입
	
	public int signupUser(UserVo userVo) {
		
		System.out.println("[UserService.signupUser()]");
		
		int count = userDao.insertUser(userVo);
		
		return count;
		
	}
	

}
