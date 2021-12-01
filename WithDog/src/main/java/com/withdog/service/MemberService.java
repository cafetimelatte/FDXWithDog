package com.withdog.service;

import java.util.List;
import java.util.Map;

import com.withdog.dto.MemberDto;

public interface MemberService {
	boolean insertMember(MemberDto dto);
	int login(String email, String pw);
	List<MemberDto>userInfo(String userEmail);
	List<MemberDto> findId(String userId, String userNick);
	
}
