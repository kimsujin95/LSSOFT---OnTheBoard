package com.otb.vo;

public class GameBookmarkVo {
	private int gameBookmarkNo;
	private int userNo;
	private int gameNo;
	
	
	public GameBookmarkVo(int gameBookmarkNo, int userNo, int gameNo) {
		super();
		this.gameBookmarkNo = gameBookmarkNo;
		this.userNo = userNo;
		this.gameNo = gameNo;
	}


	public int getGameBookmarkNo() {
		return gameBookmarkNo;
	}


	public void setGameBookmarkNo(int gameBookmarkNo) {
		this.gameBookmarkNo = gameBookmarkNo;
	}


	public int getUserNo() {
		return userNo;
	}


	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}


	public int getGameNo() {
		return gameNo;
	}


	public void setGameNo(int gameNo) {
		this.gameNo = gameNo;
	}


	@Override
	public String toString() {
		return "GameBookmarkVo [gameBookmarkNo=" + gameBookmarkNo + ", userNo=" + userNo + ", gameNo=" + gameNo + "]";
	}
	
	
	
}
