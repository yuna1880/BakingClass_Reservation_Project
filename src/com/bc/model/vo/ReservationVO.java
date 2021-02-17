package com.bc.model.vo;

import java.sql.Date;

public class ReservationVO {

	private int reserv_idx;
	private Date reserv_date;
	private String reserv_time;
	private int reserv_people;
	private int reserv_price;
	private int cls_idx;
	private String id;
	private String reserv_status;
	
	
	public ReservationVO() { }
	
	public ReservationVO(int reserv_idx, Date reserv_date, String reserv_time, int reserv_people, int reserv_price,
			int cls_idx, String id, String reserv_status  ) {
		super();
		this.reserv_idx = reserv_idx;
		this.reserv_date = reserv_date;
		this.reserv_time = reserv_time;
		this.reserv_people = reserv_people;
		this.reserv_price = reserv_price;
		this.cls_idx = cls_idx;
		this.id = id;
		this.reserv_status = reserv_status;
		
	}

	public int getReserv_idx() {
		return reserv_idx;
	}

	public void setReserv_idx(int reserv_idx) {
		this.reserv_idx = reserv_idx;
	}

	public Date getReserv_date() {
		return reserv_date;
	}

	public void setReserv_date(Date reserv_date) {
		this.reserv_date = reserv_date;
	}

	public String getReserv_time() {
		return reserv_time;
	}

	public void setReserv_time(String reserv_time) {
		this.reserv_time = reserv_time;
	}

	public int getReserv_people() {
		return reserv_people;
	}

	public void setReserv_people(int reserv_people) {
		this.reserv_people = reserv_people;
	}

	public int getReserv_price() {
		return reserv_price;
	}

	public void setReserv_price(int reserv_price) {
		this.reserv_price = reserv_price;
	}

	public int getCls_idx() {
		return cls_idx;
	}

	public void setCls_idx(int cls_idx) {
		this.cls_idx = cls_idx;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getReserv_status() {
		return reserv_status;
	}

	public void setReserv_status(String reserv_status) {
		this.reserv_status = reserv_status;
	}


	
	
	
	
}
