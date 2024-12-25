package com.shoaib.service;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.shoaib.dao.CommonDao;
import com.shoaib.modal.Enquiry;

@Service
public class EnquiryService {
 
	@Autowired
	CommonDao commonDao;
	@Autowired
	EmailService emailService;
	
	public Map<String, Object> add_enquiry(Enquiry enquiry) {
		Map<String,Object> response = new HashMap<String, Object>();
		try {
			if(enquiry.getSno() > 0) {
				Map<String, Object> search = new HashMap<String, Object>();
				search.put("sno", enquiry.getSno());
				ObjectMapper mapObject = new ObjectMapper();
				Map<String, Object> mapObj = mapObject.convertValue(enquiry, Map.class);
				int id = commonDao.updateMethodForAll(mapObj, "Enquiry", search);
				if(id> 0) {
					response.put("status", "Success");
					response.put("message", "Enqiry Completed Successfully");
				}
			}else {
				enquiry.setStatus("Pending");
				enquiry.setCreatedAt(new Date());
				int i = commonDao.addDataToDb(enquiry);
				if(i > 0) {
					String email = " resortbtr@gmail.com ";
					String subject = "New Enquiry for Bandhavgarh Tiger Resort";
					String message = "Name: " + enquiry.getName() + "\n" +
							 "Email: " +enquiry.getEmail()  + "\n" +
			                 "Contact Number: " + enquiry.getMobile_number()+"\n"+
			                 "Message: " + enquiry.getMessage();
					emailService.sendEmailMessage(email, subject, message);
					response.put("status", "Success");
					response.put("message", "Enquiry Raised Successfully");
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
