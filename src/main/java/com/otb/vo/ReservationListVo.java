package com.otb.vo;

public class ReservationListVo {

	private int reservationNo;
	private String storeName;
	private String reservationDate;
	private String reservationStatus;
	
	public ReservationListVo() {
	
	}

	public ReservationListVo(int reservationNo, String storeName, String reservationDate, String reservationStatus) {
		this.reservationNo = reservationNo;
		this.storeName = storeName;
		this.reservationDate = reservationDate;
		this.reservationStatus = reservationStatus;
	}

	public int getReservationNo() {
		return reservationNo;
	}

	public void setReservationNo(int reservationNo) {
		this.reservationNo = reservationNo;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public String getReservationDate() {
		return reservationDate;
	}

	public void setReservationDate(String reservationDate) {
		this.reservationDate = reservationDate;
	}

	public String getReservationStatus() {
		return reservationStatus;
	}

	public void setReservationStatus(String reservationStatus) {
		this.reservationStatus = reservationStatus;
	}

	@Override
	public String toString() {
		return "ReservationListVo [reservationNo=" + reservationNo + ", storeName=" + storeName + ", reservationDate="
				+ reservationDate + ", reservationStatus=" + reservationStatus + "]";
	}
	
}
