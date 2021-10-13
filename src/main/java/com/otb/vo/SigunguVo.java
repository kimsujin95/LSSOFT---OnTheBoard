package com.otb.vo;

public class SigunguVo {

	private int sigunguCode;
	private int sidoCode;
	private String sigunguName;
	private String sidoName;

	public SigunguVo() {
		super();
	}

	public SigunguVo(int sigunguCode, int sidoCode, String sigunguName, String sidoName) {
		super();
		this.sigunguCode = sigunguCode;
		this.sidoCode = sidoCode;
		this.sigunguName = sigunguName;
		this.sidoName = sidoName;
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
	
	public String getSidoName() {
		return sidoName;
	}
	
	public void setSidoName(String sidoName) {
		this.sidoName = sidoName;
	}

	@Override
	public String toString() {
		return "SigunguVo [sigunguCode=" + sigunguCode + ", sidoCode=" + sidoCode + ", sigunguName=" + sigunguName
				+ ", sidoName=" + sidoName + "]";
	}

}
