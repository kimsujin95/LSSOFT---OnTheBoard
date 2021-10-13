package com.otb.vo;

public class GameVo {

	//field
	private int gameNo;
	private String gameNameKo;
	private String gameNameEn;
	private String gameImg;
	private String gamePeople;
	private String gameAge;
	private String gameTime;
	private String gameDifficulty;
	private String gameDescription;
	private String gameGuide;
	private int themeNo;
	private String themeName;
	
	private String gameThumbImg;
	private int hitCount;
	//constructor

	

	public GameVo() {
	}

	public GameVo(int gameNo, String gameNameKo, String gameNameEn, String gameImg, String gamePeople, String gameAge,
			String gameTime, String gameDifficulty, String gameDescription, String gameGuide, int themeNo,
			String themeName, String gameThumbImg, int hitCount) {
		super();
		this.gameNo = gameNo;
		this.gameNameKo = gameNameKo;
		this.gameNameEn = gameNameEn;
		this.gameImg = gameImg;
		this.gamePeople = gamePeople;
		this.gameAge = gameAge;
		this.gameTime = gameTime;
		this.gameDifficulty = gameDifficulty;
		this.gameDescription = gameDescription;
		this.gameGuide = gameGuide;
		this.themeNo = themeNo;
		this.themeName = themeName;
		this.gameThumbImg = gameThumbImg;
		this.hitCount = hitCount;
	}


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



	public String getGameAge() {
		return gameAge;
	}



	public void setGameAge(String gameAge) {
		this.gameAge = gameAge;
	}



	public String getGameTime() {
		return gameTime;
	}



	public void setGameTime(String gameTime) {
		this.gameTime = gameTime;
	}



	public String getGameDifficulty() {
		return gameDifficulty;
	}



	public void setGameDifficulty(String gameDifficulty) {
		this.gameDifficulty = gameDifficulty;
	}



	public String getGameDescription() {
		return gameDescription;
	}



	public void setGameDescription(String gameDescription) {
		this.gameDescription = gameDescription;
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



	public String getThemeName() {
		return themeName;
	}



	public void setThemeName(String themeName) {
		this.themeName = themeName;
	}



	public String getGameThumbImg() {
		return gameThumbImg;
	}



	public void setGameThumbImg(String gameThumbImg) {
		this.gameThumbImg = gameThumbImg;
	}


	public int getHitCount() {
		return hitCount;
	}

	public void setHitCount(int hitCount) {
		this.hitCount = hitCount;
	}

	@Override
	public String toString() {
		return "GameVo [gameNo=" + gameNo + ", gameNameKo=" + gameNameKo + ", gameNameEn=" + gameNameEn + ", gameImg="
				+ gameImg + ", gamePeople=" + gamePeople + ", gameAge=" + gameAge + ", gameTime=" + gameTime
				+ ", gameDifficulty=" + gameDifficulty + ", gameDescription=" + gameDescription + ", gameGuide="
				+ gameGuide + ", themeNo=" + themeNo + ", themeName=" + themeName + ", gameThumbImg=" + gameThumbImg
				+ ", hitCount=" + hitCount + "]";
	}
	

	
	

	
	
	
	
	
	
	
}
