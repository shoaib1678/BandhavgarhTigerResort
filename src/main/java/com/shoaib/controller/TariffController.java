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
import com.shoaib.modal.Tariff;
import com.shoaib.service.TariffService;

@Controller
public class TariffController {

	@Autowired
	TariffService tariffService;
	
	@RequestMapping("/add_tariff")
	public ResponseEntity<Map<String,Object>> add_tariff(@RequestBody Tariff tariff){
		Map<String,Object> response = new HashMap<String,Object>();
		response = tariffService.add_tariff(tariff);
		return new ResponseEntity<Map<String,Object>>(response,HttpStatus.OK);
	}
}
