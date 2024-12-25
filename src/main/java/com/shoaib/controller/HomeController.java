package com.shoaib.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.CacheControl;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.shoaib.dao.CommonDao;
import com.shoaib.modal.Gallery;
import com.shoaib.modal.LoginCredentials;
import com.shoaib.modal.Tariff;
import com.shoaib.utils.Utils;

@Controller
public class HomeController {
	
	@Autowired
	CommonDao commonDao;

	@RequestMapping(value = "/displayimage", method = RequestMethod.GET)
	public ResponseEntity<byte[]> displayAssociateImage(HttpServletRequest request) throws IOException {
		String url = request.getParameter("url");
		HttpHeaders headers = new HttpHeaders();
		InputStream in = null;
		try {
			in = new FileInputStream(Utils.staticimages + "/" + url);
		} catch (Exception e) {
			System.out.println(e);
		}
		byte[] media = IOUtils.toByteArray(in);
		headers.setCacheControl(CacheControl.noCache().getHeaderValue());
		ResponseEntity<byte[]> responseEntity = new ResponseEntity(media, headers, HttpStatus.OK);
		return responseEntity;
	}
	
	@RequestMapping(value="/")
	public ModelAndView test(HttpServletResponse response) throws IOException{
		return new ModelAndView("Website/Home/home");
	}
	@RequestMapping(value="/accommodation")
	public ModelAndView accommodation(HttpServletRequest request) throws IOException{
		return new ModelAndView("Website/Accommodation/accommodation");
	}
	@RequestMapping(value="/speciality")
	public ModelAndView speciality(HttpServletRequest request) throws IOException{
		return new ModelAndView("Website/Speciality/speciality");
	}
	@RequestMapping(value="/wedding")
	public ModelAndView wedding(HttpServletRequest request) throws IOException{
		return new ModelAndView("Website/Wedding/wedding");
	}
	@RequestMapping(value="/conference")
	public ModelAndView conference(HttpServletRequest request) throws IOException{
		return new ModelAndView("Website/Confrence/conference");
	}
	@RequestMapping(value="/contact")
	public ModelAndView contact(HttpServletRequest request) throws IOException{
		return new ModelAndView("Website/Contact/contact");
	}
	@RequestMapping(value="/gallery")
	public ModelAndView gallery(HttpServletRequest request) throws IOException{
		Map<String, Object> map =new HashMap<String, Object>();
		map.put("status", "Active");
		List<Gallery> gallery =(List<Gallery>)commonDao.getDataByMap(map, new Gallery(), null, null, 0, -1);
		ModelAndView mv = new ModelAndView("Website/Gallery/gallery");
		mv.addObject("gallery", gallery);
		return mv;
	}
	@RequestMapping(value="/privacy&policy")
	public ModelAndView privacy(HttpServletRequest request) throws IOException{
		return new ModelAndView("Website/PrivacyPolicy/privacy");
	}
	@RequestMapping(value="/terms&condition")
	public ModelAndView terms(HttpServletRequest request) throws IOException{
		return new ModelAndView("Website/TermsCondition/termsCondition");
	}
	@RequestMapping(value="/jungle_safari")
	public ModelAndView jungle_safaro(HttpServletRequest request) throws IOException{
		return new ModelAndView("Website/JungleSafari/junglesafari");
	}
	@RequestMapping(value="/restaurant")
	public ModelAndView restaurant(HttpServletRequest request) throws IOException{
		return new ModelAndView("Website/Restaurant/restaurant");
	}
	@RequestMapping(value="/swiming_pool")
	public ModelAndView swiming_pool(HttpServletRequest request) throws IOException{
		return new ModelAndView("Website/SwimingPool/swimingpool");
	}
	@RequestMapping(value="/wellness&spa")
	public ModelAndView wellness(HttpServletRequest request) throws IOException{
		return new ModelAndView("Website/WellnessAndSpa/spa");
	}
	@RequestMapping(value="/tariff")
	public ModelAndView tariff(HttpServletRequest request) throws IOException{
		List<Tariff> tariff = (List<Tariff>)commonDao.getDataByMap(new HashMap<String, Object>(), new Tariff(), null, null, 0, -1);
		ModelAndView mv = new ModelAndView("Website/Tariff/tariff");
		mv.addObject("tariff", tariff);
		return mv;
	}
	
	/************************************Admin Panel Urls*************************************/
	
	@RequestMapping(value="/adminlogin")
	public ModelAndView adminlogin(HttpServletRequest request) throws IOException{
		return new ModelAndView("AdminPanel/login");
	}
	@RequestMapping(value="/dashboard")
	public ModelAndView dashboard(HttpServletRequest request, HttpSession session) throws IOException{
		LoginCredentials login = (LoginCredentials)session.getAttribute("loginData");
		if(login != null) {
			return new ModelAndView("AdminPanel/Dashboard/dashboard");
		}else {
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("email", email);
			map.put("password", password);
			List<LoginCredentials> log = (List<LoginCredentials>)commonDao.getDataByMap(map, new LoginCredentials(), null, null, 0, -1);
			if(log.size() > 0) {
				session.setAttribute("loginData", log.get(0));
				return new ModelAndView("AdminPanel/Dashboard/dashboard");
			}else {
				return new ModelAndView("redirect:./");
			}
		}
	}
	@RequestMapping(value="/manage_room")
	public ModelAndView manage_room(HttpServletRequest request, HttpSession session) throws IOException{
		LoginCredentials login = (LoginCredentials)session.getAttribute("loginData");
		if(login != null) {
			return new ModelAndView("AdminPanel/Room/room");
		}else {
			return new ModelAndView("redirect:./");
		
		}
		
	}
	@RequestMapping(value="/manage_tariff")
	public ModelAndView manage_tariff(HttpServletRequest request, HttpSession session) throws IOException{
		LoginCredentials login = (LoginCredentials)session.getAttribute("loginData");
		if(login != null) {
			List<Tariff> tariff = (List<Tariff>)commonDao.getDataByMap(new HashMap<String, Object>(), new Tariff(), null, null, 0, -1);
			ModelAndView mv = new ModelAndView("AdminPanel/Tariff/tariff");
			mv.addObject("tariff", tariff);
			return mv;
		}else {
			return new ModelAndView("redirect:./");
		
		}
		
	}
	@RequestMapping(value="/manage_gallery")
	public ModelAndView manage_gallery(HttpServletRequest request, HttpSession session) throws IOException{
		LoginCredentials login = (LoginCredentials)session.getAttribute("loginData");
		if(login != null) {
			List<Tariff> tariff = (List<Tariff>)commonDao.getDataByMap(new HashMap<String, Object>(), new Tariff(), null, null, 0, -1);
			ModelAndView mv = new ModelAndView("AdminPanel/Gallery/gallery");
			mv.addObject("tariff", tariff);
			return mv;
		}else {
			return new ModelAndView("redirect:./");
		
		}
		
	}
}
