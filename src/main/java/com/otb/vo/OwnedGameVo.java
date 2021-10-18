package com.otb.vo;

public class OwnedGameVo {

	private int ownedGameNo;
	private int storeNo;
	private int gameNo;
	
	public OwnedGameVo() {
		super();
	}

	public OwnedGameVo(int ownedGameNo, int storeNo, int gameNo) {
		super();
		this.ownedGameNo = ownedGameNo;
		this.storeNo = storeNo;
		this.gameNo = gameNo;
	}

	public int getOwnedGameNo() {
		return ownedGameNo;
	}

	public void setOwnedGameNo(int ownedGameNo) {
		this.ownedGameNo = ownedGameNo;
	}

	public int getStoreNo() {
		return storeNo;
	}

	public void setStoreNo(int storeNo) {
		this.storeNo = storeNo;
	}

	public int getGameNo() {
		return gameNo;
	}

	public void setGameNo(int gameNo) {
		this.gameNo = gameNo;
	}

	@Override
	public String toString() {
		return "OwnedGame [ownedGameNo=" + ownedGameNo + ", storeNo=" + storeNo + ", gameNo=" + gameNo + "]";
	}
	
}
