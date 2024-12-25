package com.shoaib.service;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.shoaib.dao.CommonDao;
import com.shoaib.modal.Reservation;

@Service
public class ReservationService {

	@Autowired
	CommonDao commonDao;
	@Autowired
	EmailService emailService;

	public Map<String, Object> add_reservation(Reservation reservation) {
		Map<String,Object> response = new HashMap<String, Object>();
		try {
			if(reservation.getSno() > 0) {
				Map<String, Object> search = new HashMap<String, Object>();
				search.put("sno", reservation.getSno());
				ObjectMapper mapObject = new ObjectMapper();
				Map<String, Object> mapObj = mapObject.convertValue(reservation, Map.class);
				int id = commonDao.updateMethodForAll(mapObj, "Enquiry", search);
				if(id> 0) {
					response.put("status", "Success");
					response.put("message", "Reservation Completed Successfully");
				}
			}else {
				reservation.setStatus("Pending");
				reservation.setCreatedAt(new Date());
				int i = commonDao.addDataToDb(reservation);
				if(i > 0) {
					response.put("status", "Success");
					response.put("message", "Reservation Successfully");
					String email = " resortbtr@gmail.com";
					String subject = "New Reservation";
					String message = "Name: " + reservation.getName() + "\n" +
							 "Email: " +reservation.getEmail()  + "\n" +
			                 "Subject: " + reservation.getMobile_number()+"\n"+
			                 "Approximation Date: " + reservation.getDateof_tour()+"\n"+
			                 "No of Adults: " + reservation.getAdults()+"\n"+
			                 "No of Kids: " + reservation.getKids()+"\n"+
			                 "Duration of Tour: " + reservation.getDuration()+"\n"+
			                 "Vehicle to be booked: " + reservation.getVehicle_booked()+"\n"+
			                 "Service Details: " + reservation.getService_details();
					emailService.sendEmailMessage(email, subject, message);
				}else {
					response.put("status", "Failed");
					response.put("message", "Something went wrong");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return response;
	}
}
