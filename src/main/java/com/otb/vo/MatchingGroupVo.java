package com.otb.vo;

public class MatchingGroupVo {

	private int matchingNo;
	private int userNo;
	private int matchingPeople;

	public MatchingGroupVo() {
		super();
	}

	public MatchingGroupVo(int matchingNo, int userNo, int matchingPeople) {
		super();
		this.matchingNo = matchingNo;
		this.userNo = userNo;
		this.matchingPeople = matchingPeople;
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

	@Override
	public String toString() {
		return "MatchingGroupVo [matchingNo=" + matchingNo + ", userNo=" + userNo + ", matchingPeople=" + matchingPeople
				+ "]";
	}

}
