package com.otb.vo;

public class ReservationMemberVo {

	private int reservationMemberNo;
	private int userNo;
	private int reservationChargePer;
	private int matchingNo;
	private int reservationNo;

	public ReservationMemberVo() {

	}

	public ReservationMemberVo(int reservationMemberNo, int userNo, int reservationChargePer, int matchingNo, int reservationNo) {
		this.reservationMemberNo = reservationMemberNo;
		this.userNo = userNo;
		this.reservationChargePer = reservationChargePer;
		this.matchingNo = matchingNo;
		this.reservationNo = reservationNo;
	}

	public int getReservationMemberNo() {
		return reservationMemberNo;
	}

	public void setReservationMemberNo(int reservationMemberNo) {
		this.reservationMemberNo = reservationMemberNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getReservationChargePer() {
		return reservationChargePer;
	}

	public void setReservationChargePer(int reservationChargePer) {
		this.reservationChargePer = reservationChargePer;
	}

	public int getMatchingNo() {
		return matchingNo;
	}

	public void setMatchingNo(int matchingNo) {
		this.matchingNo = matchingNo;
	}

	public int getReservationNo() {
		return reservationNo;
	}

	public void setReservationNo(int reservationNo) {
		this.reservationNo = reservationNo;
	}

	@Override
	public String toString() {
		return "ReservationMemberVo [reservationMemberNo=" + reservationMemberNo + ", userNo=" + userNo
				+ ", reservationChargePer=" + reservationChargePer + ", matchingNo=" + matchingNo + ", reservationNo="
				+ reservationNo + "]";
	}

	
}
