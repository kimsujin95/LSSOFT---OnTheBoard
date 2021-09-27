package com.otb.vo;

public class UserVo {

	private int userNo;
	private String userId;
	private String userPassword;
	private String userName;
	private String userNickname;
	private String userGender;
	private String userEmail;
	private String userBirthDate;
	private String userAge;
	private String userPhoneNo;
	private int userGrade;
	private String userPathProfile;
	private String userRegDate;
	private String sidoCode;
	private String sigunguCode;

	public UserVo() {

	}

	public UserVo(int userNo, String userId, String userPassword, String userName, String userNickname,
			String userGender, String userEmail, String userBirthDate, String userAge, String userPhoneNo,
			int userGrade, String userPathProfile, String userRegDate, String sidoCode, String sigunguCode) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userPassword = userPassword;
		this.userName = userName;
		this.userNickname = userNickname;
		this.userGender = userGender;
		this.userEmail = userEmail;
		this.userBirthDate = userBirthDate;
		this.userAge = userAge;
		this.userPhoneNo = userPhoneNo;
		this.userGrade = userGrade;
		this.userPathProfile = userPathProfile;
		this.userRegDate = userRegDate;
		this.sidoCode = sidoCode;
		this.sigunguCode = sigunguCode;
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

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserNickname() {
		return userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

	public String getUserGender() {
		return userGender;
	}

	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserBirthDate() {
		return userBirthDate;
	}

	public void setUserBirthDate(String userBirthDate) {
		this.userBirthDate = userBirthDate;
	}

	public String getUserAge() {
		return userAge;
	}

	public void setUserAge(String userAge) {
		this.userAge = userAge;
	}

	public String getUserPhoneNo() {
		return userPhoneNo;
	}

	public void setUserPhoneNo(String userPhoneNo) {
		this.userPhoneNo = userPhoneNo;
	}

	public int getUserGrade() {
		return userGrade;
	}

	public void setUserGrade(int userGrade) {
		this.userGrade = userGrade;
	}

	public String getUserPathProfile() {
		return userPathProfile;
	}

	public void setUserPathProfile(String userPathProfile) {
		this.userPathProfile = userPathProfile;
	}

	public String getUserRegDate() {
		return userRegDate;
	}

	public void setUserRegDate(String userRegDate) {
		this.userRegDate = userRegDate;
	}

	public String getSidoCode() {
		return sidoCode;
	}

	public void setSidoCode(String sidoCode) {
		this.sidoCode = sidoCode;
	}

	public String getSigunguCode() {
		return sigunguCode;
	}

	public void setSigunguCode(String sigunguCode) {
		this.sigunguCode = sigunguCode;
	}

	@Override
	public String toString() {
		return "UserVo [userNo=" + userNo + ", userId=" + userId + ", userPassword=" + userPassword + ", userName="
				+ userName + ", userNickname=" + userNickname + ", userGender=" + userGender + ", userEmail="
				+ userEmail + ", userBirthDate=" + userBirthDate + ", userAge=" + userAge + ", userPhoneNo="
				+ userPhoneNo + ", userGrade=" + userGrade + ", userPathProfile=" + userPathProfile + ", userRegDate="
				+ userRegDate + ", sidoCode=" + sidoCode + ", sigunguCode=" + sigunguCode + "]";
	}

}