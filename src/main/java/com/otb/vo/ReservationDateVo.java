package com.otb.vo;

public class ReservationDateVo {
	
	//fields
	private int reservationDateNo;
	private int storeNo;
	private String storeReservationDate;
	private int storeReservationTotal;
	private int storeReservationMax;
	
	//constructors
	public ReservationDateVo() {
		
	}
	
	public ReservationDateVo(int reservationDateNo, int storeNo, String storeReservationDate, int storeReservationTotal,
			int storeReservationMax) {
		super();
		this.reservationDateNo = reservationDateNo;
		this.storeNo = storeNo;
		this.storeReservationDate = storeReservationDate;
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
	
	//methods
	@Override
	public String toString() {
		return "ReservationDateVo [reservationDateNo=" + reservationDateNo + ", storeNo=" + storeNo
				+ ", storeReservationDate=" + storeReservationDate + ", storeReservationTotal=" + storeReservationTotal
				+ ", storeReservationMax=" + storeReservationMax + "]";
	}
	
}
