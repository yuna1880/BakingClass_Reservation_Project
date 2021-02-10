package com.bc.model.vo;

public class PaymentVO {

	private int pay_idx;
	private String pay_date;
	private int pay_price;
	private String pay_method;
	private int reserv_idx;
	private String pay_card;
	private String pay_bank;
	
	public PaymentVO() { }
	
	public PaymentVO(int pay_idx, String pay_date, int pay_price, String pay_method, int reserv_idx, String pay_card,
			String pay_bank) {
		super();
		this.pay_idx = pay_idx;
		this.pay_date = pay_date;
		this.pay_price = pay_price;
		this.pay_method = pay_method;
		this.reserv_idx = reserv_idx;
		this.pay_card = pay_card;
		this.pay_bank = pay_bank;
	}

	public int getPay_idx() {
		return pay_idx;
	}

	public void setPay_idx(int pay_idx) {
		this.pay_idx = pay_idx;
	}

	public String getPay_date() {
		return pay_date;
	}

	public void setPay_date(String pay_date) {
		this.pay_date = pay_date;
	}

	public int getPay_price() {
		return pay_price;
	}

	public void setPay_price(int pay_price) {
		this.pay_price = pay_price;
	}

	public String getPay_method() {
		return pay_method;
	}

	public void setPay_method(String pay_method) {
		this.pay_method = pay_method;
	}

	public int getReserv_idx() {
		return reserv_idx;
	}

	public void setReserv_idx(int reserv_idx) {
		this.reserv_idx = reserv_idx;
	}

	public String getPay_card() {
		return pay_card;
	}

	public void setPay_card(String pay_card) {
		this.pay_card = pay_card;
	}

	public String getPay_bank() {
		return pay_bank;
	}

	public void setPay_bank(String pay_bank) {
		this.pay_bank = pay_bank;
	}

	@Override
	public String toString() {
		return "PaymentVO [pay_idx=" + pay_idx + ", pay_date=" + pay_date + ", pay_price=" + pay_price + ", pay_method="
				+ pay_method + ", reserv_idx=" + reserv_idx + ", pay_card=" + pay_card + ", pay_bank=" + pay_bank + "]";
	}
	
}
