package com.withdog.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.withdog.dto.MemberDto;

@Component
public class memberDaoImpl implements memberDao {

	@Autowired
	SqlSession sqlSession;
	

	@Override
	public int insert(MemberDto dto) {	
		return sqlSession.insert("com.withdog.mapper.memberMapper.insertMember",dto);
	}

	@Override
	public int login(String email, String pw) {
		int state = 0;
		String pwd = null;
		pwd = sqlSession.selectOne("com.withdog.mapper.memberMapper.login", email);
		if(pwd != null) {
			state = pwd.equals(pw) ? 1 : 0;
			return state;
		}else {
			state = -2;
			return state;
		}
		
	}

	@Override
	public List<MemberDto> userInfo(String userEmail) {
		return sqlSession.selectList("com.withdog.mapper.memberMapper.userInfo", userEmail);
	}

	@Override
	public List<MemberDto> findId(String userId, String userNick) {
		Map<String, String>find = new HashMap<String, String>();
		find.put("userid", userId);
		find.put("usernick", userNick);
		return sqlSession.selectList("com.test.mapper.memberMapper.findId",find);
	}



}

