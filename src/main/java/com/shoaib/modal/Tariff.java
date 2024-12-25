package com.shoaib.modal;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Tariff {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int sno;
	private String start_date;
	private String end_date;
	private String delux_single;
	private String delux_double;
	private String luxury_single;
	private String luxury_double;
	private String family_room;
	private Date createdAt;
	public int getSno() {
		return sno;
	}
	public void setSno(int sno) {
		this.sno = sno;
	}
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}
	
	public String getDelux_single() {
		return delux_single;
	}
	public void setDelux_single(String delux_single) {
		this.delux_single = delux_single;
	}
	public String getDelux_double() {
		return delux_double;
	}
	public void setDelux_double(String delux_double) {
		this.delux_double = delux_double;
	}
	public String getLuxury_single() {
		return luxury_single;
	}
	public void setLuxury_single(String luxury_single) {
		this.luxury_single = luxury_single;
	}
	public String getLuxury_double() {
		return luxury_double;
	}
	public void setLuxury_double(String luxury_double) {
		this.luxury_double = luxury_double;
	}
	public String getFamily_room() {
		return family_room;
	}
	public void setFamily_room(String family_room) {
		this.family_room = family_room;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
}
