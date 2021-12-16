package com.withdog.dto;

public class CsreplyDTO {

	private int cs_id;
	private String cs_title;
	private String cs_content;
	private String cs_regidate;
	private String m_id;
	
	public CsreplyDTO() {
	}

	public int getCs_id() {
		return cs_id;
	}

	public void setCs_id(int cs_id) {
		this.cs_id = cs_id;
	}

	public String getCs_title() {
		return cs_title;
	}

	public void setCs_title(String cs_title) {
		this.cs_title = cs_title;
	}

	public String getCs_content() {
		return cs_content;
	}

	public void setCs_content(String cs_content) {
		this.cs_content = cs_content;
	}

	public String getCs_regidate() {
		return cs_regidate;
	}

	public void setCs_regidate(String cs_regidate) {
		this.cs_regidate = cs_regidate;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	@Override
	public String toString() {
		return "CsreplyDTO [cs_id=" + cs_id + ", cs_title=" + cs_title + ", cs_content=" + cs_content + ", cs_regidate="
				+ cs_regidate + ", m_id=" + m_id + "]";
	}

	
	
}
