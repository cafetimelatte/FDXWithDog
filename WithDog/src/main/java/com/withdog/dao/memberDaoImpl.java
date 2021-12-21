package com.withdog.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sun.mail.imap.protocol.Namespaces.Namespace;
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
		return sqlSession.selectList("com.withdog.mapper.memberMapper.findId",find);
	}
	
	
	@Override
	public int checkId(String id) {
		String user_id = null;
		int result = 0;
		user_id= sqlSession.selectOne("com.withdog.mapper.memberMapper.check_id", id);
				if(user_id.equals(id)) { 
					result=-1;
				}else {
					result=1;
			}
		return result;
	}
	@Override
	public void changePw(String changePw, String id) {
		HashMap map=new HashMap();
		map.put("changePw", changePw);
		map.put("id", id);
		try {
			sqlSession.update("com.withdog.mapper.memberMapper.changePw",map);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public boolean deleteMember(String m_id, String m_pw) {
		boolean result = false;
		Map<String, String> map = new HashMap<String, String>();
		System.out.println(m_id);
		System.out.println(m_pw);
		map.put("m_id", m_id);
		map.put("m_pw", m_pw);
		int cnt = sqlSession.delete("com.withdog.mapper.memberMapper.deleteMember", map);
		System.out.println(cnt);
		if(cnt == 1) {
			result =true;
		}
		return result;
	}

	@Override
	public int nickCk(String nick) {
		int result = sqlSession.selectOne("com.withdog.mapper.memberMapper.nickCk", nick);
		return result;
	}

}

