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
	

}
