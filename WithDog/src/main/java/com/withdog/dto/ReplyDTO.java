package com.withdog.dto;

public class ReplyDTO {
	
	private int mbre_id;	
	private String mbre_content;
	private String mbre_regidate;
	private String m_id;
	private int mb_id;
	private int h_id;
	private String m_nick;
	
	public int getMbre_id() {
		return mbre_id;
	}
	public void setMbre_id(int mbre_id) {
		this.mbre_id = mbre_id;
	}
	public String getMbre_content() {
		return mbre_content;
	}
	public void setMbre_content(String mbre_content) {
		this.mbre_content = mbre_content;
	}
	public String getMbre_regidate() {
		return mbre_regidate;
	}
	public void setMbre_regidate(String mbre_regidate) {
		this.mbre_regidate = mbre_regidate;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public int getMb_id() {
		return mb_id;
	}
	public void setMb_id(int mb_id) {
		this.mb_id = mb_id;
	}
	public int getH_id() {
		return h_id;
	}
	public void setH_id(int h_id) {
		this.h_id = h_id;
	}
	public String getM_nick() {
		return m_nick;
	}
	public void setM_nick(String m_nick) {
		this.m_nick = m_nick;
	}
	@Override
	public String toString() {
		return "ReplyDTO [mbre_id=" + mbre_id + ", mbre_content=" + mbre_content + ", mbre_regidate=" + mbre_regidate
				+ ", m_id=" + m_id + ", mb_id=" + mb_id + ", h_id=" + h_id + ", m_nick=" + m_nick + "]";
	}
	

}
