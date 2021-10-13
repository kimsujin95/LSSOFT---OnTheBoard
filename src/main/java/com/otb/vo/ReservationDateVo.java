package com.otb.vo;

public class ReservationDateVo {
	
	//fields
	private int reservationDateNo;
	private int storeNo;
	private String storeReservationDate;
	private String dateType;
	private int storeReservationTotal;
	private int storeReservationMax;
	
	//constructors
	public ReservationDateVo() {
		
	}
	
	public ReservationDateVo(int reservationDateNo, int storeNo, String storeReservationDate, String dateType,
			int storeReservationTotal, int storeReservationMax) {
		super();
		this.reservationDateNo = reservationDateNo;
		this.storeNo = storeNo;
		this.storeReservationDate = storeReservationDate;
		this.dateType = dateType;
		this.storeReservationTotal = storeReservationTotal;
		this.storeReservationMax = storeReservationMax;
	}

	//g/s
	public int getReservationDateNo() {
		return reservationDateNo;
	}

	public void setReservationDateNo(int reservationDateNo) {
		this.reservationDateNo = reservationDateNo;
	}

	public int getStoreNo() {
		return storeNo;
	}

	public void setStoreNo(int storeNo) {
		this.storeNo = storeNo;
	}

	public String getStoreReservationDate() {
		return storeReservationDate;
	}

	public void setStoreReservationDate(String storeReservationDate) {
		this.storeReservationDate = storeReservationDate;
	}

	public String getDateType() {
		return dateType;
	}

	public void setDateType(String dateType) {
		this.dateType = dateType;
	}

	public int getStoreReservationTotal() {
		return storeReservationTotal;
	}

	public void setStoreReservationTotal(int storeReservationTotal) {
		this.storeReservationTotal = storeReservationTotal;
	}

	public int getStoreReservationMax() {
		return storeReservationMax;
	}

	public void setStoreReservationMax(int storeReservationMax) {
		this.storeReservationMax = storeReservationMax;
	}

	@Override
	public String toString() {
		return "ReservationDateVo [reservationDateNo=" + reservationDateNo + ", storeNo=" + storeNo
				+ ", storeReservationDate=" + storeReservationDate + ", dateType=" + dateType
				+ ", storeReservationTotal=" + storeReservationTotal + ", storeReservationMax=" + storeReservationMax
				+ "]";
	}
	
}
