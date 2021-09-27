package com.otb.vo;

public class SigunguVo {

	private int sigunguCode;
	private int sidoCode;
	private String sigunguName;

	public SigunguVo() {
		super();
	}

	public SigunguVo(int sigunguCode, int sidoCode, String sigunguName) {
		super();
		this.sigunguCode = sigunguCode;
		this.sidoCode = sidoCode;
		this.sigunguName = sigunguName;
	}

	public int getSigunguCode() {
		return sigunguCode;
	}

	public void setSigunguCode(int sigunguCode) {
		this.sigunguCode = sigunguCode;
	}

	public int getSidoCode() {
		return sidoCode;
	}

	public void setSidoCode(int sidoCode) {
		this.sidoCode = sidoCode;
	}

	public String getSigunguName() {
		return sigunguName;
	}

	public void setSigunguName(String sigunguName) {
		this.sigunguName = sigunguName;
	}

	@Override
	public String toString() {
		return "SigunguVo [sigunguCode=" + sigunguCode + ", sidoCode=" + sidoCode + ", sigunguName=" + sigunguName
				+ "]";
	}

}
