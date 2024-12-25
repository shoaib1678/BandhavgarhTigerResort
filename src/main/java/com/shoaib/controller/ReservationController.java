package com.shoaib.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shoaib.modal.Reservation;
import com.shoaib.service.ReservationService;

@Controller
public class ReservationController {

	@Autowired
	ReservationService reservationService;
	
	@RequestMapping("/add_reservation")
	public ResponseEntity<Map<String,Object>> add_reservation(@RequestBody Reservation reservation){
		Map<String,Object> response = new HashMap<String,Object>();
		response = reservationService.add_reservation(reservation);
		return new ResponseEntity<Map<String,Object>>(response,HttpStatus.OK);
	}
}
