package com.withdog.dto;

public class boardDTO {

	private int mb_id;
	private String mb_title;
	private String mb_content;
	private String mb_img;
	private int mb_hit;
	private String mb_regidate;
	private String m_id;
	private int h_id;
	

	public boardDTO() {
	}

	public int getMb_id() {
		return mb_id;
	}

	public void setMb_id(int mb_id) {
		this.mb_id = mb_id;
	}

	public String getMb_title() {
		return mb_title;
	}

	public void setMb_title(String mb_title) {
		this.mb_title = mb_title;
	}

	public String getMb_content() {
		return mb_content;
	}

	public void setMb_content(String mb_content) {
		this.mb_content = mb_content;
	}

	public String getMb_img() {
		return mb_img;
	}

	public void setMb_img(String mb_img) {
		this.mb_img = mb_img;
	}

	public int getMb_hit() {
		return mb_hit;
	}

	public void setMb_hit(int mb_hit) {
		this.mb_hit = mb_hit;
	}

	public String getMb_regidate() {
		return mb_regidate;
	}

	public void setMb_regidate(String mb_regidate) {
		this.mb_regidate = mb_regidate;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public int getH_id() {
		return h_id;
	}

	public void setH_id(int h_id) {
		this.h_id = h_id;
	}

	@Override
	public String toString() {
		return "boardDTO [mb_id=" + mb_id + ", mb_title=" + mb_title + ", mb_content=" + mb_content + ", mb_img="
				+ mb_img + ", mb_hit=" + mb_hit + ", mb_regidate=" + mb_regidate + ", m_id=" + m_id + ", h_id=" + h_id
				+ "]";
	}
}
