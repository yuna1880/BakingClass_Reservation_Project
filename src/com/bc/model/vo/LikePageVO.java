package com.bc.model.vo;

public class LikePageVO {

	private int like_idx;
	private int cls_idx;
	private String id;
	
	public LikePageVO() { }
	
	public LikePageVO(int like_idx, int cls_idx, String id) {
		super();
		this.like_idx = like_idx;
		this.cls_idx = cls_idx;
		this.id = id;
	}

	public int getLike_idx() {
		return like_idx;
	}

	public void setLike_idx(int like_idx) {
		this.like_idx = like_idx;
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

	@Override
	public String toString() {
		return "LikePageVO [like_idx=" + like_idx + ", cls_idx=" + cls_idx + ", id=" + id + "]";
	}

}
