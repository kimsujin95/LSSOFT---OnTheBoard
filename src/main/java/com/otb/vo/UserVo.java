package com.otb.vo;

public class UserVo {

	private int userNo;
	private String userId;
	private String userPassword;
	
	public UserVo() {
		
	}
	
	public UserVo(int userNo, String userId, String userPassword) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userPassword = userPassword;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	
	

}