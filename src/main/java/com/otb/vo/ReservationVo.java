package com.otb.vo;

public class ReservationVo {
	
	//fields
	private int reservationNo;
	private int storeNo;
	private int reservationChargeTotal;
	private int reservationChargePeople;
	private String reservationStatus;
	private String reservationType;
	private int reservationDateNo;
	
	//constructors
	public ReservationVo() {
		
	}
	
	public ReservationVo(int storeNo, int reservationChargeTotal, int reservationChargePeople, String reservationType, int reservationDateNo) {
		this.storeNo = storeNo;
		this.reservationChargeTotal = reservationChargeTotal;
		this.reservationChargePeople = reservationChargePeople;
		this.reservationType = reservationType;
		this.reservationDateNo = reservationDateNo;
	}
	
	public ReservationVo(int reservationNo, int storeNo, int reservationChargeTotal, int reservationChargePeople,
			String reservationStatus, String reservationType, int reservationDateNo) {
		super();
		this.reservationNo = reservationNo;
		this.storeNo = storeNo;
		this.reservationChargeTotal = reservationChargeTotal;
		this.reservationChargePeople = reservationChargePeople;
		this.reservationStatus = reservationStatus;
		this.reservationType = reservationType;
		this.reservationDateNo = reservationDateNo;
	}
	
	//g/s
	public int getReservationNo() {
		return reservationNo;
	}

	public void setReservationNo(int reservationNo) {
		this.reservationNo = reservationNo;
	}

	public int getStoreNo() {
		return storeNo;
	}

	public void setStoreNo(int storeNo) {
		this.storeNo = storeNo;
	}

	public int getReservationChargeTotal() {
		return reservationChargeTotal;
	}

	public void setReservationChargeTotal(int reservationChargeTotal) {
		this.reservationChargeTotal = reservationChargeTotal;
	}

	public int getReservationChargePeople() {
		return reservationChargePeople;
	}

	public void setReservationChargePeople(int reservationChargePeople) {
		this.reservationChargePeople = reservationChargePeople;
	}

	public String getReservationStatus() {
		return reservationStatus;
	}

	public void setReservationStatus(String reservationStatus) {
		this.reservationStatus = reservationStatus;
	}

	public String getReservationType() {
		return reservationType;
	}

	public void setReservationType(String reservationType) {
		this.reservationType = reservationType;
	}

	public int getReservationDateNo() {
		return reservationDateNo;
	}

	public void setReservationDateNo(int reservationDateNo) {
		this.reservationDateNo = reservationDateNo;
	}

	//methods
	@Override
	public String toString() {
		return "ReservationVo [reservationNo=" + reservationNo + ", storeNo=" + storeNo + ", reservationChargeTotal="
				+ reservationChargeTotal + ", reservationChargePeople=" + reservationChargePeople
				+ ", reservationStatus=" + reservationStatus + ", reservationType=" + reservationType
				+ ", reservationDateNo=" + reservationDateNo + "]";
	}
	
}
