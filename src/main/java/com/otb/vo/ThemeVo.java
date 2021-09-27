package com.otb.vo;

public class ThemeVo {

	private int themeNo;
	private String themeName;

	public ThemeVo() {
		super();
	}

	public ThemeVo(int themeNo, String themeName) {
		super();
		this.themeNo = themeNo;
		this.themeName = themeName;
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

	@Override
	public String toString() {
		return "ThemeVo [themeNo=" + themeNo + ", themeName=" + themeName + "]";
	}

}
