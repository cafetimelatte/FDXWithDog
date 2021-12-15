package com.withdog.dto;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class BookingDto {
	
	private String b_id;
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern="yyyy-MM-dd")
	private Date b_chkInDate;
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern="yyyy-MM-dd")
	private Date b_chkOutDate;
	private int b_price;
	private int b_humanNum;
	private int b_petNum;
	private String b_state;
	private String m_id;
	private String h_id;
	private String b_name;
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern="yyyy-MM-dd")
	private Date b_regiDate;
	
	public BookingDto() {
		
	}

	public BookingDto(String b_id, Date b_chkInDate, Date b_chkOutDate, int b_price, int b_humanNum, int b_petNum,
			String b_state, String m_id, String h_id, String b_name, Date b_regiDate) {
		super();
		this.b_id = b_id;
		this.b_chkInDate = b_chkInDate;
		this.b_chkOutDate = b_chkOutDate;
		this.b_price = b_price;
		this.b_humanNum = b_humanNum;
		this.b_petNum = b_petNum;
		this.b_state = b_state;
		this.m_id = m_id;
		this.h_id = h_id;
		this.b_name = b_name;
		this.b_regiDate = b_regiDate;
	}

	public String getB_id() {
		return b_id;
	}

	public void setB_id(String b_id) {
		this.b_id = b_id;
	}

	public Date getB_chkInDate() {
		return b_chkInDate;
	}

	public void setB_chkInDate(Date b_chkInDate) {
		this.b_chkInDate = b_chkInDate;
	}

	public Date getB_chkOutDate() {
		return b_chkOutDate;
	}

	public void setB_chkOutDate(Date b_chkOutDate) {
		this.b_chkOutDate = b_chkOutDate;
	}

	public int getB_price() {
		return b_price;
	}

	public void setB_price(int b_price) {
		this.b_price = b_price;
	}

	public int getB_humanNum() {
		return b_humanNum;
	}

	public void setB_humanNum(int b_humanNum) {
		this.b_humanNum = b_humanNum;
	}

	public int getB_petNum() {
		return b_petNum;
	}

	public void setB_petNum(int b_petNum) {
		this.b_petNum = b_petNum;
	}

	public String getB_state() {
		return b_state;
	}

	public void setB_state(String b_state) {
		this.b_state = b_state;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getH_id() {
		return h_id;
	}

	public void setH_id(String h_id) {
		this.h_id = h_id;
	}

	public String getB_name() {
		return b_name;
	}

	public void setB_name(String b_name) {
		this.b_name = b_name;
	}

	public Date getB_regiDate() {
		return b_regiDate;
	}

	public void setB_regiDate(Date b_regiDate) {
		this.b_regiDate = b_regiDate;
	}

	@Override
	public String toString() {
		return "BookingDto [b_id=" + b_id + ", b_chkInDate=" + b_chkInDate + ", b_chkOutDate=" + b_chkOutDate
				+ ", b_price=" + b_price + ", b_humanNum=" + b_humanNum + ", b_petNum=" + b_petNum + ", b_state="
				+ b_state + ", m_id=" + m_id + ", h_id=" + h_id + ", b_name=" + b_name + ", b_regiDate=" + b_regiDate
				+ "]";
	}
	
}
