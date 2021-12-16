package com.withdog.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.withdog.dto.CsreplyDTO;

@Repository
public class CsreplyDAOImpl implements CsreplyDAO{

	@Autowired
	SqlSession sqlSession;
 
	//게시글 목록
	@Override 
	public List<CsreplyDTO> list() { 
		return sqlSession.selectList("com.withdog.mappers.cslistMapper.csshow"); 
	}

	//게시글 상세 보기
	@Override
	public CsreplyDTO csdetail(int cs_id) {
		return sqlSession.selectOne("com.withdog.mappers.cslistMapper.csdetail",cs_id);
	}

	//게시글 작성
	@Override
	public int cswrite(CsreplyDTO dto) {
		System.out.println(dto.getM_id());
		return sqlSession.insert("com.withdog.mappers.cslistMapper.cswrite", dto);
	}
}
