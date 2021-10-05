package com.otb.vo;

public class StoreImageVo {

	//필드
	private int storeImageNo;
	private int storeNo;
	private String storePathImage;
	
	//생성자
	public StoreImageVo() {
		super();
	}

	public StoreImageVo(int storeImageNo, int storeNo, String storePathImage) {
		super();
		this.storeImageNo = storeImageNo;
		this.storeNo = storeNo;
		this.storePathImage = storePathImage;
	}

	//겟터 셋터
	public int getStoreImageNo() {
		return storeImageNo;
	}

	public void setStoreImageNo(int storeImageNo) {
		this.storeImageNo = storeImageNo;
	}

	public int getStoreNo() {
		return storeNo;
	}

	public void setStoreNo(int storeNo) {
		this.storeNo = storeNo;
	}

	public String getStorePathImage() {
		return storePathImage;
	}

	public void setStorePathImage(String storePathImage) {
		this.storePathImage = storePathImage;
	}

	@Override
	public String toString() {
		return "StoreImageVo [storeImageNo=" + storeImageNo + ", storeNo=" + storeNo + ", storePathImage="
				+ storePathImage + "]";
	}
	
}
