package com.otb.vo;

public class GameVo {

	//field
	private int gameNo;
	private String gameNameKo;
	private String gameNameEn;
	private String gameImg;
	private String gamePeople;
	private int gameAge;
	private int gameTime;
	private int gameDifficulty;
	private String gmaeDescription;
	private String gameGuide;
	private int themeNo;
	
	private String gameThumbImg;
	//constructor

	

	public GameVo() {
	}
	
	
	public GameVo(int gameNo, String gameNameKo, String gameNameEn, String gameImg, String gamePeople,
			int gameAge, int gameTime, int gameDifficulty, String gmaeDescription, String gameGuide, int themeNo, String gameThumbImg) {
		this.gameNo = gameNo;
		this.gameNameKo = gameNameKo;
		this.gameNameEn = gameNameEn;
		this.gameImg = gameImg;
		this.gamePeople = gamePeople;
		this.gameAge = gameAge;
		this.gameTime = gameTime;
		this.gameDifficulty = gameDifficulty;
		this.gmaeDescription = gmaeDescription;
		this.gameGuide = gameGuide;
		this.themeNo = themeNo;
		this.gameThumbImg = gameThumbImg;
	}


	//generic-g/s

	public int getGameNo() {
		return gameNo;
	}


	public void setGameNo(int gameNo) {
		this.gameNo = gameNo;
	}


	public String getGameNameKo() {
		return gameNameKo;
	}


	public void setGameNameKo(String gameNameKo) {
		this.gameNameKo = gameNameKo;
	}


	public String getGameNameEn() {
		return gameNameEn;
	}


	public void setGameNameEn(String gameNameEn) {
		this.gameNameEn = gameNameEn;
	}


	public String getGameImg() {
		return gameImg;
	}


	public void setGameImg(String gameImg) {
		this.gameImg = gameImg;
	}


	public String getGamePeople() {
		return gamePeople;
	}


	public void setGamePeople(String gamePeople) {
		this.gamePeople = gamePeople;
	}


	public int getGameAge() {
		return gameAge;
	}


	public void setGameAge(int gameAge) {
		this.gameAge = gameAge;
	}

	public int getGameTime() {
		return gameTime;
	}


	public void setGameTime(int gameTime) {
		this.gameTime = gameTime;
	}

	public int getGameDifficulty() {
		return gameDifficulty;
	}


	public void setGameDifficulty(int gameDifficulty) {
		this.gameDifficulty = gameDifficulty;
	}


	public String getGmaeDescription() {
		return gmaeDescription;
	}


	public void setGmaeDescription(String gmaeDescription) {
		this.gmaeDescription = gmaeDescription;
	}


	public String getGameGuide() {
		return gameGuide;
	}


	public void setGameGuide(String gameGuide) {
		this.gameGuide = gameGuide;
	}


	public int getThemeNo() {
		return themeNo;
	}


	public void setThemeNo(int themeNo) {
		this.themeNo = themeNo;
	}
	
	public String getGameThumbImg() {
		return gameThumbImg;
	}


	public void setGameThumbImg(String gameThumbImg) {
		this.gameThumbImg = gameThumbImg;
	}

	//generic-method

	@Override
	public String toString() {
		return "GameVo [gameNo=" + gameNo + ", gameNameKo=" + gameNameKo + ", gameNameEn=" + gameNameEn + ", gameImg="
				+ gameImg + ", gamePeople=" + gamePeople + ", gameAge=" + gameAge + ", gameTime=" + gameTime
				+ ", gameDifficulty=" + gameDifficulty + ", gmaeDescription=" + gmaeDescription + ", gameGuide="
				+ gameGuide + ", themeNo=" + themeNo + ", gameThumbImg=" + gameThumbImg + "]";
	}

	

	
	
	
	
	
	
	
}
