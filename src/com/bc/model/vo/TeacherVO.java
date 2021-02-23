package com.bc.model.vo;

public class TeacherVO {

	private String teacher_id;
	private String tea_name;
	private String tea_info;
	private String tea_class;
	private String tea_email;
	private String tea_image;
	private String tea_info2;
	
	public TeacherVO() { }
	
	

	public TeacherVO(String teacher_id, String tea_name, String tea_info, String tea_class, String tea_email,
			String tea_image, String tea_info2) {
		super();
		this.teacher_id = teacher_id;
		this.tea_name = tea_name;
		this.tea_info = tea_info;
		this.tea_class = tea_class;
		this.tea_email = tea_email;
		this.tea_image = tea_image;
		this.tea_info2 = tea_info2;
	}



	public String getTeacher_id() {
		return teacher_id;
	}

	public void setTeacher_id(String teacher_id) {
		this.teacher_id = teacher_id;
	}

	public String getTea_name() {
		return tea_name;
	}

	public void setTea_name(String tea_name) {
		this.tea_name = tea_name;
	}

	public String getTea_info() {
		return tea_info;
	}

	public void setTea_info(String tea_info) {
		this.tea_info = tea_info;
	}

	public String getTea_class() {
		return tea_class;
	}

	public void setTea_class(String tea_class) {
		this.tea_class = tea_class;
	}

	public String getTea_email() {
		return tea_email;
	}

	public void setTea_email(String tea_email) {
		this.tea_email = tea_email;
	}

	public String getTea_image() {
		return tea_image;
	}

	public void setTea_image(String tea_image) {
		this.tea_image = tea_image;
	}
	
	public String getTea_info2() {
		return tea_info2;
	}

	public void setTea_info2(String tea_info2) {
		this.tea_info2 = tea_info2;
	}



	@Override
	public String toString() {
		return "TeacherVO [teacher_id=" + teacher_id + ", tea_name=" + tea_name + ", tea_info=" + tea_info
				+ ", tea_class=" + tea_class + ", tea_email=" + tea_email + ", tea_image=" + tea_image + ", tea_info2="
				+ tea_info2 + "]";
	}

	
	
	
}