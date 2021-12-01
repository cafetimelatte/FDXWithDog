package com.withdog.dao;

import java.util.List;
import java.util.Map;

import com.withdog.dto.MemberDto;

public interface memberDao {

	int insert(MemberDto dto);
	int login(String email, String pw);
	List<MemberDto> userInfo(String userEmail);
	List<MemberDto> findId(String userId, String userNick);

}
