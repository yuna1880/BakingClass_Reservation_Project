package com.bc.model.vo;

public class NoticeVO {

	private int notice_idx;
	private String review_name;
	private String review_title;
	private String review_content;
	private int review_date;
	private String review_hit;
	private String review_image;

	public NoticeVO() { }
	
	public NoticeVO(int notice_idx, String review_name, String review_title, String review_content, int review_date,
			String review_hit, String review_image) {
		super();
		this.notice_idx = notice_idx;
		this.review_name = review_name;
		this.review_title = review_title;
		this.review_content = review_content;
		this.review_date = review_date;
		this.review_hit = review_hit;
		this.review_image = review_image;
	}

	public int getNotice_idx() {
		return notice_idx;
	}

	public void setNotice_idx(int notice_idx) {
		this.notice_idx = notice_idx;
	}

	public String getReview_name() {
		return review_name;
	}

	public void setReview_name(String review_name) {
		this.review_name = review_name;
	}

	public String getReview_title() {
		return review_title;
	}

	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}

	public String getReview_content() {
		return review_content;
	}

	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}

	public int getReview_date() {
		return review_date;
	}

	public void setReview_date(int review_date) {
		this.review_date = review_date;
	}

	public String getReview_hit() {
		return review_hit;
	}

	public void setReview_hit(String review_hit) {
		this.review_hit = review_hit;
	}

	public String getReview_image() {
		return review_image;
	}

	public void setReview_image(String review_image) {
		this.review_image = review_image;
	}

	@Override
	public String toString() {
		return "NoticeVO [notice_idx=" + notice_idx + ", review_name=" + review_name + ", review_title=" + review_title
				+ ", review_content=" + review_content + ", review_date=" + review_date + ", review_hit=" + review_hit
				+ ", review_image=" + review_image + "]";
	}
	
	
	
}
