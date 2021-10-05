package com.otb.vo;

public class ReservationTimeVo {

	//fields
	private int reservationTimeNo;
	private int reservationDateNo;
	private String storeReservationTime;
	
	
	//constructors
	public ReservationTimeVo() {
		
	}
	
	public ReservationTimeVo(int reservationTimeNo, int reservationDateNo, String storeReservationTime) {
		super();
		this.reservationTimeNo = reservationTimeNo;
		this.reservationDateNo = reservationDateNo;
		this.storeReservationTime = storeReservationTime;
	}
	
	//g/s
	public int getReservationTimeNo() {
		return reservationTimeNo;
	}

	public void setReservationTimeNo(int reservationTimeNo) {
		this.reservationTimeNo = reservationTimeNo;
	}

	public int getReservationDateNo() {
		return reservationDateNo;
	}

	public void setReservationDateNo(int reservationDateNo) {
		this.reservationDateNo = reservationDateNo;
	}

	public String getStoreReservationTime() {
		return storeReservationTime;
	}

	public void setStoreReservationTime(String storeReservationTime) {
		this.storeReservationTime = storeReservationTime;
	}
	
	//methods
	@Override
	public String toString() {
		return "ReservationTimeVo [reservationTimeNo=" + reservationTimeNo + ", reservationDateNo=" + reservationDateNo
				+ ", storeReservationTime=" + storeReservationTime + "]";
	}
	
}
