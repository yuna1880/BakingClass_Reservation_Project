package com.bc.model.vo;

public class ClsVO {

	private int cls_idx;
	private String cls_name;
	private String cls_content;
	private String cls_image;
	private int cls_price;
	private String cls_startdate;
	private String cls_enddate;
	private String teacher_id;
	private String cls_location;
	
	public ClsVO() { }
	
	public ClsVO(int cls_idx, String cls_name, String cls_content, String cls_image, int cls_price,
			String cls_startdate, String cls_enddate, String teacher_id, String cls_location) {
		super();
		this.cls_idx = cls_idx;
		this.cls_name = cls_name;
		this.cls_content = cls_content;
		this.cls_image = cls_image;
		this.cls_price = cls_price;
		this.cls_startdate = cls_startdate;
		this.cls_enddate = cls_enddate;
		this.teacher_id = teacher_id;
		this.cls_location = cls_location;
	}

	public int getCls_idx() {
		return cls_idx;
	}

	public void setCls_idx(int cls_idx) {
		this.cls_idx = cls_idx;
	}

	public String getCls_name() {
		return cls_name;
	}

	public void setCls_name(String cls_name) {
		this.cls_name = cls_name;
	}

	public String getCls_content() {
		return cls_content;
	}

	public void setCls_content(String cls_content) {
		this.cls_content = cls_content;
	}

	public String getCls_image() {
		return cls_image;
	}

	public void setCls_image(String cls_image) {
		this.cls_image = cls_image;
	}

	public int getCls_price() {
		return cls_price;
	}

	public void setCls_price(int cls_price) {
		this.cls_price = cls_price;
	}

	public String getCls_startdate() {
		return cls_startdate;
	}

	public void setCls_startdate(String cls_startdate) {
		this.cls_startdate = cls_startdate;
	}

	public String getCls_enddate() {
		return cls_enddate;
	}

	public void setCls_enddate(String cls_enddate) {
		this.cls_enddate = cls_enddate;
	}

	public String getTeacher_id() {
		return teacher_id;
	}

	public void setTeacher_id(String teacher_id) {
		this.teacher_id = teacher_id;
	}

	public String getCls_location() {
		return cls_location;
	}

	public void setCls_location(String cls_location) {
		this.cls_location = cls_location;
	}

	@Override
	public String toString() {
		return "ClsVO [cls_idx=" + cls_idx + ", cls_name=" + cls_name + ", cls_content=" + cls_content + ", cls_image="
				+ cls_image + ", cls_price=" + cls_price + ", cls_startdate=" + cls_startdate + ", cls_enddate="
				+ cls_enddate + ", teacher_id=" + teacher_id + ", cls_location=" + cls_location + "]";
	}
	
	
	
	
	
}
