package com.otb.vo;

public class StoreVo {
	
	//fields
	private int storeNo;
	private int userNo;
	private String storeName;
	private String storeType;
	private String storeBusinessNo;
	private String storeAdressRoad;
	private String storeAdressDetail;
	private String storePhoneNo;
	private int storeChargeWeek = 0;
	private int storeChargeWeekend = 0;
	private String storeDesc;
	private double storeLat;	//위도
	private double storeLng;	//경도
	private String sido;		//시, 도
	private String sigungu;		//시, 군, 구
	
	
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
	
	public StoreVo(int storeNo, String storeName, String storeType, String storeBusinessNo, String storeAdressRoad,
			String storeAdressDetail, String storePhoneNo, int storeChargeWeek, int storeChargeWeekend,
			String storeDesc, double storeLat, double storeLng) {
		super();
		this.storeNo = storeNo;
		this.storeName = storeName;
		this.storeType = storeType;
		this.storeBusinessNo = storeBusinessNo;
		this.storeAdressRoad = storeAdressRoad;
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

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
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
	
	public String getStoreType() {
		return storeType;
	}

	public void setStoreType(String storeType) {
		this.storeType = storeType;
	}

	public String getStoreBusinessNo() {
		return storeBusinessNo;
	}

	public void setStoreBusinessNo(String storeBusinessNo) {
		this.storeBusinessNo = storeBusinessNo;
	}

	public String getStoreAdressRoad() {
		return storeAdressRoad;
	}

	public void setStoreAdressRoad(String storeAdressRoad) {
		this.storeAdressRoad = storeAdressRoad;
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

	public String getSido() {
		return sido;
	}

	public void setSido(String sido) {
		this.sido = sido;
	}

	public String getSigungu() {
		return sigungu;
	}

	public void setSigungu(String sigungu) {
		this.sigungu = sigungu;
	}

	@Override
	public String toString() {
		return "StoreVo [storeNo=" + storeNo + ", userNo=" + userNo + ", storeName=" + storeName + ", storeType="
				+ storeType + ", storeBusinessNo=" + storeBusinessNo + ", storeAdressRoad=" + storeAdressRoad
				+ ", storeAdressDetail=" + storeAdressDetail + ", storePhoneNo=" + storePhoneNo + ", storeChargeWeek="
				+ storeChargeWeek + ", storeChargeWeekend=" + storeChargeWeekend + ", storeDesc=" + storeDesc
				+ ", storeLat=" + storeLat + ", storeLng=" + storeLng + ", sido=" + sido + ", sigungu=" + sigungu + "]";
	}
	
}
