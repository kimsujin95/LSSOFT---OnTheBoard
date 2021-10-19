package com.otb.vo;

public class ReservationTimeGroupVo {

	private int reservationTimeGroupNo;
	private int reservationNo;
	private int reservationTimeNo;
	
	public ReservationTimeGroupVo() {
		
	}

	public ReservationTimeGroupVo(int reservationTimeGroupNo, int reservationNo, int reservationTimeNo) {
		this.reservationTimeGroupNo = reservationTimeGroupNo;
		this.reservationNo = reservationNo;
		this.reservationTimeNo = reservationTimeNo;
	}

	public int getReservationTimeGroupNo() {
		return reservationTimeGroupNo;
	}

	public void setReservationTimeGroupNo(int reservationTimeGroupNo) {
		this.reservationTimeGroupNo = reservationTimeGroupNo;
	}

	public int getReservationNo() {
		return reservationNo;
	}

	public void setReservationNo(int reservationNo) {
		this.reservationNo = reservationNo;
	}

	public int getReservationTimeNo() {
		return reservationTimeNo;
	}

	public void setReservationTimeNo(int reservationTimeNo) {
		this.reservationTimeNo = reservationTimeNo;
	}

	@Override
	public String toString() {
		return "ReservationTimeGroupVo [reservationTimeGroupNo=" + reservationTimeGroupNo + ", reservationNo="
				+ reservationNo + ", reservationTimeNo=" + reservationTimeNo + "]";
	}
	
	
}
