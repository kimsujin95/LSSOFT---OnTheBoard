package com.otb.vo;

public class MatchingGroupVo {

	private int matchingNo;
	private int userNo;
	private int matchingPeople;
	private String joinRegDate;

	public MatchingGroupVo() {
		super();
	}

	public MatchingGroupVo(int matchingNo, int userNo, int matchingPeople, String joinRegDate) {
		super();
		this.matchingNo = matchingNo;
		this.userNo = userNo;
		this.matchingPeople = matchingPeople;
		this.joinRegDate = joinRegDate;
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

	public int getMatchingPeople() {
		return matchingPeople;
	}

	public void setMatchingPeople(int matchingPeople) {
		this.matchingPeople = matchingPeople;
	}
	
	public String getJoinRegDate() {
		return joinRegDate;
	}

	public void setJoinRegDate(String joinRegDate) {
		this.joinRegDate = joinRegDate;
	}

	@Override
	public String toString() {
		return "MatchingGroupVo [matchingNo=" + matchingNo + ", userNo=" + userNo + ", matchingPeople=" + matchingPeople
				+ ", joinRegDate=" + joinRegDate + "]";
	}
	
}
