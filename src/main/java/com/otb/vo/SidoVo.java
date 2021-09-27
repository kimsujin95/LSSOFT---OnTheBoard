package com.otb.vo;

public class SidoVo {

	private int sidoCoda;
	private String sidoName;

	public SidoVo() {
		super();
	}

	public SidoVo(int sidoCoda, String sidoName) {
		super();
		this.sidoCoda = sidoCoda;
		this.sidoName = sidoName;
	}

	public int getSidoCoda() {
		return sidoCoda;
	}

	public void setSidoCoda(int sidoCoda) {
		this.sidoCoda = sidoCoda;
	}

	public String getSidoName() {
		return sidoName;
	}

	public void setSidoName(String sidoName) {
		this.sidoName = sidoName;
	}

	@Override
	public String toString() {
		return "SidoVo [sidoCoda=" + sidoCoda + ", sidoName=" + sidoName + "]";
	}

}
