package com.withdog.dto;

public class MemberDto {

	private String m_id;
	private String m_pw;
	private String m_nick;
	private int m_birth;
	private String m_phone;
	private String m_addr1;
	private String m_addr2;
	private String m_addr3;
	private String m_regidate;
	
	public MemberDto() {}
	public MemberDto(String m_id, String m_pw, String m_nick, int m_birth, String m_phone, String m_addr1,
			String m_addr2, String m_addr3, String m_regidate) {
		super();
		this.m_id = m_id;
		this.m_pw = m_pw;
		this.m_nick = m_nick;
		this.m_birth = m_birth;
		this.m_phone = m_phone;
		this.m_addr1 = m_addr1;
		this.m_addr2 = m_addr2;
		this.m_addr3 = m_addr3;
		this.m_regidate = m_regidate;
	}
	
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_pw() {
		return m_pw;
	}
	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}
	public String getM_nick() {
		return m_nick;
	}
	public void setM_nick(String m_nick) {
		this.m_nick = m_nick;
	}
	public int getM_birth() {
		return m_birth;
	}
	public void setM_birth(int m_birth) {
		this.m_birth = m_birth;
	}
	public String getM_phone() {
		return m_phone;
	}
	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}
	public String getM_addr1() {
		return m_addr1;
	}
	public void setM_addr1(String m_addr1) {
		this.m_addr1 = m_addr1;
	}
	public String getM_addr2() {
		return m_addr2;
	}
	public void setM_addr2(String m_addr2) {
		this.m_addr2 = m_addr2;
	}
	public String getM_addr3() {
		return m_addr3;
	}
	public void setM_addr3(String m_addr3) {
		this.m_addr3 = m_addr3;
	}
	public String getM_regidate() {
		return m_regidate;
	}
	public void setM_regidate(String m_regidate) {
		this.m_regidate = m_regidate;
	}
	
	@Override
	public String toString() {
		return "MemberDto [m_id=" + m_id + ", m_pw=" + m_pw + ", m_nick=" + m_nick + ", m_birth=" + m_birth
				+ ", m_phone=" + m_phone + ", m_addr1=" + m_addr1 + ", m_addr2=" + m_addr2 + ", m_addr3=" + m_addr3
				+ ", m_regidate=" + m_regidate + "]";
	}
	
}
