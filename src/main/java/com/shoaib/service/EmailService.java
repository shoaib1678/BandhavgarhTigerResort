package com.shoaib.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.time.LocalTime;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.print.attribute.HashAttributeSet;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.shoaib.dao.CommonDao;


@Service
public class EmailService {

	@Autowired
	CommonDao commonDao;

	public Map<String, Object> sendEmailMessage(String to, String subject, String message) {
	    Map<String, Object> response = new HashMap<>();
	    try {
	        final String username = " resortbtr@gmail.com ";
	        final String password = "qpnwooqgmhjwweym";

	        Properties prop = new Properties();
	        prop.put("mail.smtp.host", "smtp.gmail.com");
	        prop.put("mail.smtp.port", "587");
	        prop.put("mail.smtp.auth", "true");
	        prop.put("mail.smtp.starttls.enable", "true");
	        prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");
	        prop.put("mail.smtp.ssl.protocols", "TLSv1.2");

	        Session session = Session.getInstance(prop, new javax.mail.Authenticator() {
	            protected PasswordAuthentication getPasswordAuthentication() {
	                return new PasswordAuthentication(username, password);
	            }
	        });

	        Message m = new MimeMessage(session);
	        m.setFrom(new InternetAddress(username));
	        m.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
	        m.setSubject(subject);
	        m.setText(message);

	        Transport.send(m);
	        System.out.println("Message Sent Successfully");

	        response.put("status", "Success");
	        response.put("message", "Message sent successfully");

	    } catch (MessagingException e) {
	        e.printStackTrace();
	        response.put("status", "Error");
	        response.put("message", "Failed to send the email: " + e.getMessage());
	    } 

	    return response;
	}


	
	

	  
	
}