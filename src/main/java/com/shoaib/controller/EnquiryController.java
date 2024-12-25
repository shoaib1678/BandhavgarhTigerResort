package com.shoaib.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shoaib.modal.Enquiry;
import com.shoaib.service.EnquiryService;

@Controller
public class EnquiryController {

	@Autowired
	EnquiryService enquiryService;
	
	@RequestMapping("/add_enquiry")
	public ResponseEntity<Map<String,Object>> add_enquiry(@RequestBody Enquiry enquiry){
		Map<String,Object> response = new HashMap<String,Object>();
		response = enquiryService.add_enquiry(enquiry);
		return new ResponseEntity<Map<String,Object>>(response,HttpStatus.OK);
	}
}
