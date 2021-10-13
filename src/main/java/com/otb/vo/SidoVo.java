package com.otb.vo;

public class SidoVo {

	private int sidoCode;
	private String sidoName;

	public SidoVo() {
		super();
	}

	public SidoVo(int sidoCode, String sidoName) {
		super();
		this.sidoCode = sidoCode;
		this.sidoName = sidoName;
	}

	public int getsidoCode() {
		return sidoCode;
	}

	public void setsidoCode(int sidoCode) {
		this.sidoCode = sidoCode;
	}

	public String getSidoName() {
		return sidoName;
	}

	public void setSidoName(String sidoName) {
		this.sidoName = sidoName;
	}

	@Override
	public String toString() {
		return "SidoVo [sidoCode=" + sidoCode + ", sidoName=" + sidoName + "]";
	}

}
