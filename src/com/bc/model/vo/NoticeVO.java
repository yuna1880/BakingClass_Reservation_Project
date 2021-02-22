package com.bc.model.vo;

import java.sql.Date;

public class NoticeVO {

	private int notice_idx;
	private String notice_name;
	private String notice_title;
	private String notice_content;
	private Date notice_date;
	private int notice_hit;
	private String notice_image;

	public NoticeVO() { }

	public NoticeVO(int notice_idx, String notice_name, String notice_title, String notice_content, Date notice_date,
			int notice_hit, String notice_image) {
		super();
		this.notice_idx = notice_idx;
		this.notice_name = notice_name;
		this.notice_title = notice_title;
		this.notice_content = notice_content;
		this.notice_date = notice_date;
		this.notice_hit = notice_hit;
		this.notice_image = notice_image;
	}

	public int getNotice_idx() {
		return notice_idx;
	}

	public void setNotice_idx(int notice_idx) {
		this.notice_idx = notice_idx;
	}

	public String getNotice_name() {
		return notice_name;
	}

	public void setNotice_name(String notice_name) {
		this.notice_name = notice_name;
	}

	public String getNotice_title() {
		return notice_title;
	}

	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}

	public String getNotice_content() {
		return notice_content;
	}

	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}

	public Date getNotice_date() {
		return notice_date;
	}

	public void setNotice_date(Date notice_date) {
		this.notice_date = notice_date;
	}

	public int getNotice_hit() {
		return notice_hit;
	}

	public void setNotice_hit(int notice_hit) {
		this.notice_hit = notice_hit;
	}

	public String getNotice_image() {
		return notice_image;
	}

	public void setNotice_image(String notice_image) {
		this.notice_image = notice_image;
	}

	@Override
	public String toString() {
		return "NoticeVO [notice_idx=" + notice_idx + ", notice_name=" + notice_name + ", notice_title=" + notice_title
				+ ", notice_content=" + notice_content + ", notice_date=" + notice_date + ", notice_hit=" + notice_hit
				+ ", notice_image=" + notice_image + "]";
	}

	
	
}
	