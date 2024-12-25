package com.shoaib.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.shoaib.modal.Gallery;
import com.shoaib.service.GalleryService;

@Controller
public class GalleryController {

	@Autowired
	GalleryService galleryService;
	
	@RequestMapping(value="/add_gallery",method = RequestMethod.POST)
	public ResponseEntity<Map<String,Object>> add_gallery(@RequestParam(value ="sno") String sno, @RequestParam(value ="image",required = false) MultipartFile image){
		Map<String, Object> response = galleryService.add_gallery(image,sno);
		return new ResponseEntity<Map<String,Object>>(response,HttpStatus.OK);
	}
	
	@RequestMapping(value="/get_gallery",method = RequestMethod.POST)
	public ResponseEntity<Map<String,Object>> get_gallery(HttpServletRequest request ){
		int start = Integer.parseInt(request.getParameter("start"));
		int length = Integer.parseInt(request.getParameter("length"));
		String search = request.getParameter("search[value]");
		Map<String, Object> response = galleryService.get_gallery(start,length,search);
		return new ResponseEntity<Map<String,Object>>(response,HttpStatus.OK);
	}
	
	@RequestMapping(value = "/updategallerydata", method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> updategallerydata(@RequestBody Gallery gallery){
		Map<String, Object> response =galleryService.updategallerydata(gallery);
		return new ResponseEntity<Map<String, Object>>(response, HttpStatus.OK);
	}
	@RequestMapping(value="/edit_gallery", method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> edit_gallery(HttpServletRequest request){
		Map<String, Object> response = new HashMap<String,Object>();
		String sno = request.getParameter("sno");
		response = galleryService.edit_gallery(sno);
		return new ResponseEntity<Map<String,Object>>(response,HttpStatus.OK);
	}
	@RequestMapping(value="/delete_gallery", method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> delete_gallery(HttpServletRequest request){
		Map<String, Object> response = new HashMap<String,Object>();
		String sno = request.getParameter("sno");
		response = galleryService.delete_gallery(sno);
		return new ResponseEntity<Map<String,Object>>(response,HttpStatus.OK);
	}
	
	
}
