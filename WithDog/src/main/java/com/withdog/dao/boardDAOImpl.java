package com.withdog.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.withdog.dto.boardDTO;

@Component
public class boardDAOImpl implements boardDAO{

	@Autowired
	SqlSession sqlSession;
 
	//게시글 목록
	@Override 
	public List<boardDTO> list() { 
		return sqlSession.selectList("com.test.mapper.boardMapper.showboard"); 
	}

	//게시글 상세 보기
	@Override
	public boardDTO detailboard(int mb_id) {
		return sqlSession.selectOne("com.test.mapper.boardMapper.detailboard",mb_id);
	}

	//게시글 작성
	@Override
	public int write(boardDTO dto) {
		return sqlSession.insert("com.test.mapper.boardMapper.write", dto);
	}
	
	//게시글 수정
	@Override
	public int update(boardDTO dto) {
		return sqlSession.update("com.test.mapper.boardMapper.update", dto);
	}

	//게시글 삭제
	@Override
	public int delete(int mb_id) {
		return sqlSession.delete("com.test.mapper.boardMapper.delete", mb_id);
	}

	//조회수
	@Override
	public int hitboard(int mb_id) {
		return sqlSession.update("com.test.mapper.boardMapper.hitboard", mb_id);
	}

	// 게시물 총 갯수
	@Override
	public int count() throws Exception {
	 return sqlSession.selectOne("com.test.mapper.boardMapper" + ".count"); 
	}

	//게시물 목록 + 페이징
	@Override
	public List<boardDTO> listPage(int displayPost, int postNum) throws Exception {
		
		HashMap<String, Integer> data = new HashMap<String, Integer>();
		  
		 data.put("displayPost", displayPost);
		 data.put("postNum", postNum);
		  
		 return sqlSession.selectList("com.test.mapper.boardMapper" + ".listPage", data);
	}
}
