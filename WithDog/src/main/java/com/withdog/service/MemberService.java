package com.withdog.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.EmailException;

import com.withdog.dto.MemberDto;

public interface MemberService {
	boolean insertMember(MemberDto dto);
	int login(String email, String pw);
	List<MemberDto>userInfo(String userEmail);
	List<MemberDto> findId(String userId, String userNick);
	String encryptionPw(String pw); 
	int changePw(String userEmail) throws EmailException;
	int checkId(String id);
	boolean deleteMember(String m_id, String m_pw);
	int nickCk(String nick);
	List<MemberDto> showAll();
	int updateNick(String m_nick);
}
