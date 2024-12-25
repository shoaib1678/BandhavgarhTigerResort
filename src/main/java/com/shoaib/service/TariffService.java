package com.shoaib.service;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.shoaib.dao.CommonDao;
import com.shoaib.modal.Tariff;

@Service
public class TariffService {

	@Autowired
	CommonDao commonDao;

	public Map<String, Object> add_tariff(Tariff tariff) {
		Map<String,Object> response = new HashMap<String, Object>();
		try {
			if(tariff.getSno() > 0) {
				Map<String, Object> search = new HashMap<String, Object>();
				search.put("sno", tariff.getSno());
				ObjectMapper mapObject = new ObjectMapper();
				Map<String, Object> mapObj = mapObject.convertValue(tariff, Map.class);
				int id = commonDao.updateMethodForAll(mapObj, "Tariff", search);
				if(id> 0) {
					response.put("status", "Success");
					response.put("message", "Tariff Updated Successfully");
				}
			}else {
				tariff.setCreatedAt(new Date());
				int i = commonDao.addDataToDb(tariff);
				if(i > 0) {
					response.put("status", "Success");
					response.put("message", "Tariff Added Successfully");
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
