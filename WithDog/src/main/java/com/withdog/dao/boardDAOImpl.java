package com.withdog.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.withdog.dto.BookingDto;
import com.withdog.dto.boardDTO;

@Repository
public class boardDAOImpl implements boardDAO{

	@Autowired
	SqlSession sqlSession;
 
	//게시글 목록
	@Override 
	public List<boardDTO> list() { 
		return sqlSession.selectList("com.withdog.mappers.boardMapper.showboard"); 
	}

	//게시글 상세 보기
	@Override
	public boardDTO detailboard(int mb_id) {
		return sqlSession.selectOne("com.withdog.mappers.boardMapper.detailboard",mb_id);
	}

	//게시글 작성
	@Override
	public int write(boardDTO dto) {
		return sqlSession.insert("com.withdog.mappers.boardMapper.write", dto);
	}
	
	//게시글 수정
	@Override
	public int update(boardDTO dto) {
		return sqlSession.update("com.withdog.mappers.boardMapper.update", dto);
	}

	//게시글 삭제
	@Override
	public int delete(int mb_id) {
		return sqlSession.delete("com.withdog.mappers.boardMapper.delete", mb_id);
	}

	//조회수
	@Override
	public int hitboard(int mb_id) {
		return sqlSession.update("com.withdog.mappers.boardMapper.hitboard", mb_id);
	}

	// 게시물 총 갯수
	@Override
	public int count() throws Exception {
	 return sqlSession.selectOne("com.withdog.mappers.boardMapper" + ".count"); 
	}

	//게시물 목록 + 페이징
	@Override
	public List<boardDTO> listPage(int displayPost, int postNum) throws Exception {
		
		HashMap<String, Integer> data = new HashMap<String, Integer>();
		  
		 data.put("displayPost", displayPost);
		 data.put("postNum", postNum);
		  
		 return sqlSession.selectList("com.withdog.mappers.boardMapper" + ".listPage", data);
	}

	//홈화면 인기 게시글 목록
	@Override
	public List<boardDTO> getHotReview() {
		return sqlSession.selectList("com.withdog.mappers.boardMapper.getHotReview");
	}

	// 예약내역 가져오기
	@Override
	public List<BookingDto> getBookingList(String m_id) {
		return sqlSession.selectList("com.withdog.mappers.boardMapper.getBookingList", m_id);
	}

	@Override
	public List<boardDTO> listPage(int displayPost, int postNum, String field, String category) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("displayPost", displayPost);
		map.put("postNum", postNum);
		map.put("field", field);
		map.put("category", category);
		return sqlSession.selectList("com.withdog.mappers.boardMapper.getList", map);
	}
}
