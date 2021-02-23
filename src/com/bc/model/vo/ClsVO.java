package com.bc.model.vo;

public class ClsVO {
	
	private int cls_idx;
	private String cls_name;
	private String cls_content;
	private String cls_image1;
	private int cls_price;
	private String cls_startdate;
	private String cls_enddate;
	private String teacher_id;
	private String cls_location;
	private String cls_image2;
	private String cls_image3;
	private String name;
	private String phone;
	
	public ClsVO() {
	}
	
	public ClsVO(int cls_idx, String cls_name, String cls_content, String cls_image1, int cls_price,
			String cls_startdate, String cls_enddate, String teacher_id, String cls_location, String cls_image2,
			String cls_image3, String name, String phone) {
		this.cls_idx = cls_idx;
		this.cls_name = cls_name;
		this.cls_content = cls_content;
		this.cls_image1 = cls_image1;
		this.cls_price = cls_price;
		this.cls_startdate = cls_startdate;
		this.cls_enddate = cls_enddate;
		this.teacher_id = teacher_id;
		this.cls_location = cls_location;
		this.cls_image2 = cls_image2;
		this.cls_image3 = cls_image3;
		this.name = name;
		this.phone = phone;
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
	public String getCls_image1() {
		return cls_image1;
	}
	public void setCls_image1(String cls_image1) {
		this.cls_image1 = cls_image1;
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
	public String getCls_image2() {
		return cls_image2;
	}
	public void setCls_image2(String cls_image2) {
		this.cls_image2 = cls_image2;
	}
	public String getCls_image3() {
		return cls_image3;
	}
	public void setCls_image3(String cls_image3) {
		this.cls_image3 = cls_image3;
	}
	
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "ClsVO [cls_idx=" + cls_idx + ", cls_name=" + cls_name + ", cls_content=" + cls_content + ", cls_image1="
				+ cls_image1 + ", cls_price=" + cls_price + ", cls_startdate=" + cls_startdate + ", cls_enddate="
				+ cls_enddate + ", teacher_id=" + teacher_id + ", cls_location=" + cls_location + ", cls_image2="
				+ cls_image2 + ", cls_image3=" + cls_image3 + ", name=" + name + ", phone=" + phone + "]";
	}

	
	
	
}
