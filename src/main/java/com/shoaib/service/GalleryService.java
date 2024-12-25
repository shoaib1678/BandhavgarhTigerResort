package com.shoaib.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.shoaib.dao.CommonDao;
import com.shoaib.modal.Gallery;
import com.shoaib.utils.Utils;

@Service 
public class GalleryService {

	@Autowired
	CommonDao commonDao;

	public Map<String, Object> add_gallery(MultipartFile image, String sno) {
		Map<String, Object> response = new HashMap<String, Object>();
        try {
        	 Utils utils = new Utils();
        	 if(Integer.parseInt(sno) > 0) {
        		 Map<String, Object> map = new HashMap<String, Object>();
	 	            map.put("sno", Integer.parseInt(sno));
	 	            List<Gallery> data = (List<Gallery>) commonDao.getDataByMap(map, new Gallery(),null, null, 0, -1);
	 	            if (data.size() > 0) {
	 	            	if(image !=null && !image.isEmpty()) {
	 	            		String img = utils.uploadImage(image);
	 	            		data.get(0).setImage(img);
	 	            	}
	 	              commonDao.updateDataToDb(data.get(0));
	 	              response.put("status", "Success");
 	                  response.put("message", "Gallery Updated Successfully");
	 	            }
        	 }else {
        		 
 	            	Gallery gal = new Gallery();
 	                String img = utils.uploadImage(image);
 	               gal.setImage(img);
 	              gal.setStatus("Deactive");
 	             gal.setCreatedAt(new Date());
 	                int i = commonDao.addDataToDb(gal);
 	                if (i > 0) {
 	                    response.put("status", "Success");
 	                    response.put("message", "Gallery Added Successfully");
 	                } else {
 	                    response.put("status", "Failed");
 	                    response.put("message", "Something went wrong");
 	                }
 	            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return response;
	}

	public Map<String, Object> get_gallery(int start, int length, String search) {
		Map<String, Object> response = new HashMap<String,Object>();
		try {
			Map<String,Object> map = new HashMap<String,Object>();
			List<Gallery> list = (List<Gallery>) commonDao.getDataByMapSearchAnd(new HashMap<String,Object>(), map, new Gallery(), "sno", "desc", start, length);	
			int count = commonDao.getDataByMapSearchAndSize(new HashMap<String,Object>(), map, new Gallery(), "sno", "asc");
			
			if(list.size()>0) {
				response.put("data", list);
				response.put("recordsFiltered", count);
				response.put("recordsTotal", count);
				response.put("status", "Success");
			}else {
				response.put("data", new ArrayList());
				response.put("recordsFiltered", 0);
				response.put("recordsTotal", 0);
				response.put("status","Failed");
				return response;
			}
		} catch (Exception e) {
			response.put("data", new ArrayList());
			response.put("recordsFiltered", 0);
			response.put("recordsTotal", 0);
			response.put("message", "Internal server Error"+e);
			e.printStackTrace();
			return response;
		}
		return response;
	}
	public Map<String, Object> updategallerydata(Gallery gallery) {
		Map<String, Object> response = new HashMap<String, Object>();
		try {
			
			Map<String, Object> search = new HashMap<String, Object>();
			search.put("sno", gallery.getSno());
			
			// object mapper to convert the class object to map
			ObjectMapper mapObject = new ObjectMapper();
			Map<String, Object> mapObj = mapObject.convertValue(gallery, Map.class);
			
			// updating the fields
			int id = commonDao.updateMethodForAll(mapObj, "Gallery", search);
			if (id > 0) {
				response.put("status", "Success");
				return response;
			}
			response.put("Failure", "Success");
			return response;
		} catch (Exception e) {
			response.put("Failed", "Internal Server Error");
			e.printStackTrace();
			return response;
		}
	}
	public Map<String, Object> edit_gallery(String sno) {
		Map<String, Object> response = new HashMap<String,Object>();
		try {
			Map<String, Object> map = new HashMap<String,Object>();
			map.put("sno", Integer.parseInt(sno));
			List<Gallery> gallery = (List<Gallery>) commonDao.getDataByMap(map, new Gallery(), null, null, 0, -1);
			if (gallery.size() >0) {
				response.put("status","Success");
				response.put("message", "Gallery Fetched Successfully");
				response.put("data", gallery);
				
			}else {
				response.put("status","Failure");
				response.put("message", "Something went wrong");
			}
		} catch (Exception e) {
			e.printStackTrace();
			response.put("status","Failed");
			response.put("message", "Something Went Wrong " +e);
		}
		return response;
	}
	public Map<String, Object> delete_gallery(String sno) {
		Map<String, Object> response = new HashMap<String,Object>();
		try {
			Map<String, Object> map = new HashMap<String, Object>();
			Map<String, Object> map1 = new HashMap<String, Object>();
			map.put("sno", Integer.parseInt(sno));
			map1.put("gallery_id", Integer.parseInt(sno));
			List<Gallery> gallery =(List<Gallery>)commonDao.getDataByMap(map, new Gallery(), null, null, 0, -1);
			commonDao.delete(new Gallery(), sno);
			response.put("status","Success");
			response.put("message", "Gallery Deleted Successfully");
		} catch (Exception e) {
			e.printStackTrace();
			response.put("status","Failed");
			response.put("message", "Something Went Wrong " +e);
		}
		return response;
	}
}
