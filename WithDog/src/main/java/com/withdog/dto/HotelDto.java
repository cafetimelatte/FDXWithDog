package com.withdog.dto;

import java.sql.Date;

public class HotelDto {
	private int h_id;
	private String h_name;
	private String h_info;
	private String h_detail;
	private String h_phone;
	private String h_web;
	private String h_chkInTime;
	private String h_chkOutTime;
	private String h_add1;
	private String h_add2;
	private String h_add3;
	private String h_img;
	private int h_price;
	private Date h_regiDate;
	private String h_petSize;
	private String h_petWeight;
	private String h_etc;
	
	public HotelDto() {}

	public HotelDto(int h_id, String h_name, String h_info, String h_detail, String h_phone, String h_web,
			String h_chkInTime, String h_chkOutTime, String h_add1, String h_add2, String h_add3, String h_img,
			int h_price, Date h_regiDate, String h_petSize, String h_petWeight, String h_etc) {
		super();
		this.h_id = h_id;
		this.h_name = h_name;
		this.h_info = h_info;
		this.h_detail = h_detail;
		this.h_phone = h_phone;
		this.h_web = h_web;
		this.h_chkInTime = h_chkInTime;
		this.h_chkOutTime = h_chkOutTime;
		this.h_add1 = h_add1;
		this.h_add2 = h_add2;
		this.h_add3 = h_add3;
		this.h_img = h_img;
		this.h_price = h_price;
		this.h_regiDate = h_regiDate;
		this.h_petSize = h_petSize;
		this.h_petWeight = h_petWeight;
		this.h_etc = h_etc;
	}

	public int getH_id() {
		return h_id;
	}

	public void setH_id(int h_id) {
		this.h_id = h_id;
	}

	public String getH_name() {
		return h_name;
	}

	public void setH_name(String h_name) {
		this.h_name = h_name;
	}

	public String getH_info() {
		return h_info;
	}

	public void setH_info(String h_info) {
		this.h_info = h_info;
	}

	public String getH_detail() {
		return h_detail;
	}

	public void setH_detail(String h_detail) {
		this.h_detail = h_detail;
	}

	public String getH_phone() {
		return h_phone;
	}

	public void setH_phone(String h_phone) {
		this.h_phone = h_phone;
	}

	public String getH_web() {
		return h_web;
	}

	public void setH_web(String h_web) {
		this.h_web = h_web;
	}

	public String getH_chkInTime() {
		return h_chkInTime;
	}

	public void setH_chkInTime(String h_chkInTime) {
		this.h_chkInTime = h_chkInTime;
	}

	public String getH_chkOutTime() {
		return h_chkOutTime;
	}

	public void setH_chkOutTime(String h_chkOutTime) {
		this.h_chkOutTime = h_chkOutTime;
	}

	public String getH_add1() {
		return h_add1;
	}

	public void setH_add1(String h_add1) {
		this.h_add1 = h_add1;
	}

	public String getH_add2() {
		return h_add2;
	}

	public void setH_add2(String h_add2) {
		this.h_add2 = h_add2;
	}

	public String getH_add3() {
		return h_add3;
	}

	public void setH_add3(String h_add3) {
		this.h_add3 = h_add3;
	}

	public String getH_img() {
		return h_img;
	}

	public void setH_img(String h_img) {
		this.h_img = h_img;
	}

	public int getH_price() {
		return h_price;
	}

	public void setH_price(int h_price) {
		this.h_price = h_price;
	}

	public Date getH_regiDate() {
		return h_regiDate;
	}

	public void setH_regiDate(Date h_regiDate) {
		this.h_regiDate = h_regiDate;
	}

	public String getH_petSize() {
		return h_petSize;
	}

	public void setH_petSize(String h_petSize) {
		this.h_petSize = h_petSize;
	}

	public String getH_petWeight() {
		return h_petWeight;
	}

	public void setH_petWeight(String h_petWeight) {
		this.h_petWeight = h_petWeight;
	}

	public String getH_etc() {
		return h_etc;
	}

	public void setH_etc(String h_etc) {
		this.h_etc = h_etc;
	}

	@Override
	public String toString() {
		return "HotelDto [h_id=" + h_id + ", h_name=" + h_name + ", h_info=" + h_info + ", h_detail=" + h_detail
				+ ", h_phone=" + h_phone + ", h_web=" + h_web + ", h_chkInTime=" + h_chkInTime + ", h_chkOutTime="
				+ h_chkOutTime + ", h_add1=" + h_add1 + ", h_add2=" + h_add2 + ", h_add3=" + h_add3 + ", h_img=" + h_img
				+ ", h_price=" + h_price + ", h_regiDate=" + h_regiDate + ", h_petSize=" + h_petSize + ", h_petWeight="
				+ h_petWeight + ", h_etc=" + h_etc + "]";
	}
	
}
