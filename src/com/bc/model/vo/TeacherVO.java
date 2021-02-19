package com.bc.model.vo;

public class TeacherVO {

	private String tea_id;
	private String tea_name;
	private String tea_info;
	private String tea_class;
	
	public TeacherVO() { }
	
	public TeacherVO(String tea_id, String tea_name, String tea_info, String tea_class) {
		super();
		this.tea_id = tea_id;
		this.tea_name = tea_name;
		this.tea_info = tea_info;
		this.tea_class = tea_class;
	}

	public String getTea_id() {
		return tea_id;
	}

	public void setTea_id(String tea_id) {
		this.tea_id = tea_id;
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

	@Override
	public String toString() {
		return "TeacherVO [tea_id=" + tea_id + ", tea_name=" + tea_name + ", tea_info=" + tea_info + ", tea_class="
				+ tea_class + "]";
	}


}
