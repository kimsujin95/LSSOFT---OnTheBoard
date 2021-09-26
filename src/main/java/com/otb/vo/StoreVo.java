package com.otb.vo;

public class StoreVo {
	
	//fields
	private int storeNo;
	private String storeName;
	private double storeLat;
	private double storeLng;
	
	// constructors
	public StoreVo() {
		
	}
	
	public StoreVo(int storeNo, String storeName, double storeLat, double storeLng) {
		super();
		this.storeNo = storeNo;
		this.storeName = storeName;
		this.storeLat = storeLat;
		this.storeLng = storeLng;
	}

	// g/s
	public int getStoreNo() {
		return storeNo;
	}

	public void setStoreNo(int storeNo) {
		this.storeNo = storeNo;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public double getStoreLat() {
		return storeLat;
	}

	public void setStoreLat(double storeLat) {
		this.storeLat = storeLat;
	}

	public double getStoreLng() {
		return storeLng;
	}

	public void setStoreLng(double storeLng) {
		this.storeLng = storeLng;
	}
	
	//methods
	@Override
	public String toString() {
		return "StoreVo [storeNo=" + storeNo + ", storeName=" + storeName + ", storeLat=" + storeLat + ", storeLng="
				+ storeLng + "]";
	}
	
	
	
	
}
