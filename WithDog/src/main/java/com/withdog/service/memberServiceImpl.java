package com.withdog.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.withdog.dao.memberDao;
import com.withdog.dto.MemberDto;

@Service
public class memberServiceImpl implements MemberService {
	@Autowired
	memberDao dao;
	
	@Override
	public boolean insertMember(MemberDto dto) {
		int result = dao.insert(dto);
		return result == 1;
	}

	@Override
	public int login(String email, String pw) {
		int result= dao.login(email, pw);

		return result;
//		로그인
//		-2:아이디없음
//		-1:서버오류
//		0:비밀번호틀림
//		1:성공
	}

	@Override
	public List<MemberDto> userInfo(String userEmail) {
		List<MemberDto>list = dao.userInfo(userEmail);
		return list;
	}

	@Override
	public List<MemberDto> findId(String userId, String userNick) {
		List<MemberDto> findList = dao.findId(userId, userNick);
		return findList;
	}




}

