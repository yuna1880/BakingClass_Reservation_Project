package com.bc.model.vo;

import java.sql.Date;

public class ReviewVO {
//
	private int review_idx;
	private String review_title;
	private String review_content;
	private Date review_date;
	private int review_hit;
	private String review_image;
	private String id;
	private String review_cls;
	private String review_star;
	private String review_filepath;
	
	public ReviewVO() { }

	public ReviewVO(int review_idx, String review_title, String review_content, Date review_date, int review_hit,
			String review_image, String id, String review_cls, String review_star, String review_filepath) {
		super();
		this.review_idx = review_idx;
		this.review_title = review_title;
		this.review_content = review_content;
		this.review_date = review_date;
		this.review_hit = review_hit;
		this.review_image = review_image;
		this.id = id;
		this.review_cls = review_cls;
		this.review_star = review_star;
		this.review_filepath = review_filepath;
	}


	public String getReview_filepath() {
		return review_filepath;
	}

	public void setReview_filepath(String review_filepath) {
		this.review_filepath = review_filepath;
	}

	public String getReview_cls() {
		return review_cls;
	}

	public void setReview_cls(String review_cls) {
		this.review_cls = review_cls;
	}

	public String getReview_star() {
		return review_star;
	}

	public void setReview_star(String review_star) {
		this.review_star = review_star;
	}

	public int getReview_idx() {
		return review_idx;
	}

	public void setReview_idx(int review_idx) {
		this.review_idx = review_idx;
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


	public Date getReview_date() {
		return review_date;
	}

	public void setReview_date(Date review_date) {
		this.review_date = review_date;
	}

	public int getReview_hit() {
		return review_hit;
	}

	public void setReview_hit(int review_hit) {
		this.review_hit = review_hit;
	}

	public String getReview_image() {
		return review_image;
	}

	public void setReview_image(String review_image) {
		this.review_image = review_image;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "ReviewVO [review_idx=" + review_idx + ", review_title=" + review_title + ", review_content="
				+ review_content + ", review_date=" + review_date + ", review_hit=" + review_hit + ", review_image="
				+ review_image + ", id=" + id + ", review_cls=" + review_cls + ", review_star=" + review_star
				+ ", review_filepath=" + review_filepath + "]";
	}

}
