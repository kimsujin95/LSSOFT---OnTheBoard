package com.otb.vo;

public class MatchingVo {
	
	private int matchingNo;
	private int userNo;
	private String userNickname;
	private int userBirthDate;
	private int userAge;
	private String userGender;
	private String themeName;
	private String gameNameKo;
	private String matchingDate;
	private String matchingTime;
	private String sidoName;
	private String sigunguName;
	private int matchingPeople;
	private String matchingPermissionGender;
	private String matchingPermissionTeens;
	private String matchingPermissionTwenties;
	private String matchingPermissionThirties;
	private String matchingPermissionFourties;
	private String matchingPermissionAllAge;
	private String matchingTitle;
	private String matchingContent;
	private String matchingRegDate;
	private int matchingHits;
	private String matchingStatus;
	private int matchingMember;
	
	
	
	public MatchingVo() {
		super();
	}
	
	
	public MatchingVo(int userNo, int matchingPeople, String matchingTitle, String matchingContent) {
		super();
		this.userNo = userNo;
		this.matchingPeople = matchingPeople;
		this.matchingTitle = matchingTitle;
		this.matchingContent = matchingContent;
	}


	public MatchingVo(int matchingNo, int userNo, String userNickname, int userBirthDate, int userAge, String userGender, String themeName,
			String gameNameKo, String matchingDate, String matchingTime, String sidoName, String sigunguName,
			int matchingPeople, String matchingPermissionGender, String matchingPermissionTeens,
			String matchingPermissionTwenties, String matchingPermissionThirties, String matchingPermissionFourties,
			String matchingPermissionAllAge, String matchingTitle, String matchingContent, String matchingRegDate,
			int matchingHits, String matchingStatus, int matchingMember) {
		super();
		this.matchingNo = matchingNo;
		this.userNo = userNo;
		this.userNickname = userNickname;
		this.userBirthDate = userBirthDate;
		this.userAge = userAge;
		this.userGender = userGender;
		this.themeName = themeName;
		this.gameNameKo = gameNameKo;
		this.matchingDate = matchingDate;
		this.matchingTime = matchingTime;
		this.sidoName = sidoName;
		this.sigunguName = sigunguName;
		this.matchingPeople = matchingPeople;
		this.matchingPermissionGender = matchingPermissionGender;
		this.matchingPermissionTeens = matchingPermissionTeens;
		this.matchingPermissionTwenties = matchingPermissionTwenties;
		this.matchingPermissionThirties = matchingPermissionThirties;
		this.matchingPermissionFourties = matchingPermissionFourties;
		this.matchingPermissionAllAge = matchingPermissionAllAge;
		this.matchingTitle = matchingTitle;
		this.matchingContent = matchingContent;
		this.matchingRegDate = matchingRegDate;
		this.matchingHits = matchingHits;
		this.matchingStatus = matchingStatus;
		this.matchingMember = matchingMember;
	}

	
	public int getMatchingNo() {
		return matchingNo;
	}

	public void setMatchingNo(int matchingNo) {
		this.matchingNo = matchingNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserNickname() {
		return userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

	public int getUserBirthDate() {
		return userBirthDate;
	}

	public void setUserBirthDate(int userBirthDate) {
		this.userBirthDate = userBirthDate;
	}
	
	public int getUserAge() {
		return userAge;
	}
	
	public void setUserAge(int userAge) {
		this.userAge = userAge;
	}

	public String getUserGender() {
		return userGender;
	}

	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}

	public String getThemeName() {
		return themeName;
	}

	public void setThemeName(String themeName) {
		this.themeName = themeName;
	}

	public String getGameNameKo() {
		return gameNameKo;
	}

	public void setGameNameKo(String gameNameKo) {
		this.gameNameKo = gameNameKo;
	}

	public String getMatchingDate() {
		return matchingDate;
	}

	public void setMatchingDate(String matchingDate) {
		this.matchingDate = matchingDate;
	}

	public String getMatchingTime() {
		return matchingTime;
	}

	public void setMatchingTime(String matchingTime) {
		this.matchingTime = matchingTime;
	}

	public String getSidoName() {
		return sidoName;
	}

	public void setSidoName(String sidoName) {
		this.sidoName = sidoName;
	}

	public String getSigunguName() {
		return sigunguName;
	}

	public void setSigunguName(String sigunguName) {
		this.sigunguName = sigunguName;
	}

	public int getMatchingPeople() {
		return matchingPeople;
	}

	public void setMatchingPeople(int matchingPeople) {
		this.matchingPeople = matchingPeople;
	}

	public String getMatchingPermissionGender() {
		return matchingPermissionGender;
	}

	public void setMatchingPermissionGender(String matchingPermissionGender) {
		this.matchingPermissionGender = matchingPermissionGender;
	}

	public String getMatchingPermissionTeens() {
		return matchingPermissionTeens;
	}

	public void setMatchingPermissionTeens(String matchingPermissionTeens) {
		this.matchingPermissionTeens = matchingPermissionTeens;
	}

	public String getMatchingPermissionTwenties() {
		return matchingPermissionTwenties;
	}

	public void setMatchingPermissionTwenties(String matchingPermissionTwenties) {
		this.matchingPermissionTwenties = matchingPermissionTwenties;
	}

	public String getMatchingPermissionThirties() {
		return matchingPermissionThirties;
	}

	public void setMatchingPermissionThirties(String matchingPermissionThirties) {
		this.matchingPermissionThirties = matchingPermissionThirties;
	}

	public String getMatchingPermissionFourties() {
		return matchingPermissionFourties;
	}

	public void setMatchingPermissionFourties(String matchingPermissionFourties) {
		this.matchingPermissionFourties = matchingPermissionFourties;
	}

	public String getMatchingPermissionAllAge() {
		return matchingPermissionAllAge;
	}

	public void setMatchingPermissionAllAge(String matchingPermissionAllAge) {
		this.matchingPermissionAllAge = matchingPermissionAllAge;
	}

	public String getMatchingTitle() {
		return matchingTitle;
	}

	public void setMatchingTitle(String matchingTitle) {
		this.matchingTitle = matchingTitle;
	}

	public String getMatchingContent() {
		return matchingContent;
	}

	public void setMatchingContent(String matchingContent) {
		this.matchingContent = matchingContent;
	}

	public String getMatchingRegDate() {
		return matchingRegDate;
	}

	public void setMatchingRegDate(String matchingRegDate) {
		this.matchingRegDate = matchingRegDate;
	}

	public int getMatchingHits() {
		return matchingHits;
	}

	public void setMatchingHits(int matchingHits) {
		this.matchingHits = matchingHits;
	}

	public String getMatchingStatus() {
		return matchingStatus;
	}

	public void setMatchingStatus(String matchingStatus) {
		this.matchingStatus = matchingStatus;
	}
	
	public int getMatchingMember() {
		return matchingMember;
	}

	public void setMatchingMember(int matchingMember) {
		this.matchingMember = matchingMember;
	}

	@Override
	public String toString() {
		return "MatchingVo [matchingNo=" + matchingNo + ", userNo=" + userNo + ", userNickname=" + userNickname
				+ ", userBirthDate=" + userBirthDate + ", userAge= " + userAge + ", userGender=" + userGender + ", themeName=" + themeName
				+ ", gameNameKo=" + gameNameKo + ", matchingDate=" + matchingDate + ", matchingTime=" + matchingTime
				+ ", sidoName=" + sidoName + ", sigunguName=" + sigunguName + ", matchingPeople=" + matchingPeople
				+ ", matchingPermissionGender=" + matchingPermissionGender + ", matchingPermissionTeens="
				+ matchingPermissionTeens + ", matchingPermissionTwenties=" + matchingPermissionTwenties
				+ ", matchingPermissionThirties=" + matchingPermissionThirties + ", matchingPermissionFourties="
				+ matchingPermissionFourties + ", matchingPermissionAllAge=" + matchingPermissionAllAge
				+ ", matchingTitle=" + matchingTitle + ", matchingContent=" + matchingContent + ", matchingRegDate="
				+ matchingRegDate + ", matchingHits=" + matchingHits + ", matchingStatus=" + matchingStatus + ", matchingMember=" + matchingMember + "]";
	}

}
