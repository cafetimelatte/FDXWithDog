package com.withdog.dto;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class ApplyDto {
	private int a_id;
	private String m_id;
	private String h_name;
	private String h_info;
	private String h_detail;
	private String h_phone;
	private String h_web;
	private String h_add1;
	private String h_add2;
	private String h_add3;
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern="yyyy-MM-dd")
	private Date a_regiDate;
	private String a_state;
	
	public ApplyDto() {}

	public int getA_id() {
		return a_id;
	}

	public void setA_id(int a_id) {
		this.a_id = a_id;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
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

	public Date getA_regiDate() {
		return a_regiDate;
	}

	public void setA_regiDate(Date a_regiDate) {
		this.a_regiDate = a_regiDate;
	}

	public String getA_state() {
		return a_state;
	}

	public void setA_state(String a_state) {
		this.a_state = a_state;
	}

	@Override
	public String toString() {
		return "ApplyDto [a_id=" + a_id + ", m_id=" + m_id + ", h_name=" + h_name + ", h_info=" + h_info + ", h_detail="
				+ h_detail + ", h_phone=" + h_phone + ", h_web=" + h_web + ", h_add1=" + h_add1 + ", h_add2=" + h_add2
				+ ", h_add3=" + h_add3 + ", a_regiDate=" + a_regiDate + ", a_state=" + a_state + "]";
	}
	
}
