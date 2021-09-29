package com.otb.vo;

public class StoreVo {
	
	//fields
	private int storeNo;
	private String storeName;
	private int storeNumber;
	private String storeAdress;
	private String storeAdressDetail;
	private String storePhoneNo;
	private int storeChargeWeek;
	private int storeChargeWeekend;
	private String storeDesc;
	private double storeLat;	//위도
	private double storeLng;	//경도
	
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

	
	public StoreVo(int storeNo, String storeName, int storeNumber, String storeAdress, String storeAdressDetail,
			String storePhoneNo, int storeChargeWeek, int storeChargeWeekend, String storeDesc, double storeLat,
			double storeLng) {
		super();
		this.storeNo = storeNo;
		this.storeName = storeName;
		this.storeNumber = storeNumber;
		this.storeAdress = storeAdress;
		this.storeAdressDetail = storeAdressDetail;
		this.storePhoneNo = storePhoneNo;
		this.storeChargeWeek = storeChargeWeek;
		this.storeChargeWeekend = storeChargeWeekend;
		this.storeDesc = storeDesc;
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
	
	public int getStoreNumber() {
		return storeNumber;
	}

	public void setStoreNumber(int storeNumber) {
		this.storeNumber = storeNumber;
	}

	public String getStoreAdress() {
		return storeAdress;
	}

	public void setStoreAdress(String storeAdress) {
		this.storeAdress = storeAdress;
	}

	public String getStoreAdressDetail() {
		return storeAdressDetail;
	}

	public void setStoreAdressDetail(String storeAdressDetail) {
		this.storeAdressDetail = storeAdressDetail;
	}

	public String getStorePhoneNo() {
		return storePhoneNo;
	}

	public void setStorePhoneNo(String storePhoneNo) {
		this.storePhoneNo = storePhoneNo;
	}

	public int getStoreChargeWeek() {
		return storeChargeWeek;
	}

	public void setStoreChargeWeek(int storeChargeWeek) {
		this.storeChargeWeek = storeChargeWeek;
	}

	public int getStoreChargeWeekend() {
		return storeChargeWeekend;
	}

	public void setStoreChargeWeekend(int storeChargeWeekend) {
		this.storeChargeWeekend = storeChargeWeekend;
	}

	public String getStoreDesc() {
		return storeDesc;
	}

	public void setStoreDesc(String storeDesc) {
		this.storeDesc = storeDesc;
	}

	@Override
	public String toString() {
		return "StoreVo [storeNo=" + storeNo + ", storeName=" + storeName + ", storeNumber=" + storeNumber
				+ ", storeAdress=" + storeAdress + ", storeAdressDetail=" + storeAdressDetail + ", storePhoneNo="
				+ storePhoneNo + ", storeChargeWeek=" + storeChargeWeek + ", storeChargeWeekend=" + storeChargeWeekend
				+ ", storeDesc=" + storeDesc + ", storeLat=" + storeLat + ", storeLng=" + storeLng + "]";
	}
	
	
	
	
}
