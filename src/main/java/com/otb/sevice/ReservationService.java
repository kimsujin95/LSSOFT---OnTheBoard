package com.otb.sevice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.otb.dao.ReservationDao;

@Service
public class ReservationService {

	@Autowired
	private ReservationDao reservationDao;
	
	
}
