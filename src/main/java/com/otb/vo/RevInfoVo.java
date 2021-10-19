package com.otb.vo;

public class RevInfoVo {

	private int storeNo;
	private String seldate;
	//private String[] chdTimeArray;
	private int groupNo;
	private String revType;

	public RevInfoVo() {
	}

	

	public int getStoreNo() {
		return storeNo;
	}

	public void setStoreNo(int storeNo) {
		this.storeNo = storeNo;
	}

	public String getSeldate() {
		return seldate;
	}

	public void setSeldate(String seldate) {
		this.seldate = seldate;
	}

	
	public int getGroupNo() {
		return groupNo;
	}

	public void setGroupNo(int groupNo) {
		this.groupNo = groupNo;
	}

	public String getRevType() {
		return revType;
	}

	public void setRevType(String revType) {
		this.revType = revType;
	}

	@Override
	public String toString() {
		return "RevInfoVo [storeNo=" + storeNo + ", seldate=" + seldate + ", groupNo=" + groupNo + ", revType="
				+ revType + "]";
	}

	

}
