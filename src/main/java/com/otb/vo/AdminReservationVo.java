package com.otb.vo;

public class AdminReservationVo {

	private int reservationNo;
	private String reservationDate;
	private int reservationChargePeople;
	private String times;
	private String userName;
	private String userPhoneNo;
	private String reservationStatus;
	private int reservationChargeTotal;
	
	public AdminReservationVo() {
	}

	public int getReservationNo() {
		return reservationNo;
	}

	public void setReservationNo(int reservationNo) {
		this.reservationNo = reservationNo;
	}

	public String getReservationDate() {
		return reservationDate;
	}

	public void setReservationDate(String reservationDate) {
		this.reservationDate = reservationDate;
	}

	public int getReservationChargePeople() {
		return reservationChargePeople;
	}

	public void setReservationChargePeople(int reservationChargePeople) {
		this.reservationChargePeople = reservationChargePeople;
	}

	public String getTimes() {
		return times;
	}

	public void setTimes(String times) {
		this.times = times;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPhoneNo() {
		return userPhoneNo;
	}

	public void setUserPhoneNo(String userPhoneNo) {
		this.userPhoneNo = userPhoneNo;
	}

	public String getReservationStatus() {
		return reservationStatus;
	}

	public void setReservationStatus(String reservationStatus) {
		this.reservationStatus = reservationStatus;
	}

	public int getReservationChargeTotal() {
		return reservationChargeTotal;
	}

	public void setReservationChargeTotal(int reservationChargeTotal) {
		this.reservationChargeTotal = reservationChargeTotal;
	}

	@Override
	public String toString() {
		return "AdminReservationVo [reservationNo=" + reservationNo + ", reservationDate=" + reservationDate
				+ ", reservationChargePeople=" + reservationChargePeople + ", times=" + times + ", userName=" + userName
				+ ", userPhoneNo=" + userPhoneNo + ", reservationStatus=" + reservationStatus
				+ ", reservationChargeTotal=" + reservationChargeTotal + "]";
	}
	
}
