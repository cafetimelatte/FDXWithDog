package com.withdog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.withdog.dao.boardDAO;
import com.withdog.dto.BookingDto;
import com.withdog.dto.boardDTO;

@Service
public class boardServiceImpl implements boardService{

	@Autowired
	boardDAO dao;
	
	//게시글 목록
	@Override
	public List<boardDTO> list() {
		List<boardDTO> list = dao.list();
		return list;
	}

	//게시글 상세 보기
	@Override
	public boardDTO detailboard(int mb_id) {
		dao.hitboard(mb_id);
		return dao.detailboard(mb_id);
	}
	
	//게시글 작성
	@Override
	public int write(boardDTO dto) {
		return dao.write(dto);
	}

	//게시글 수정
	@Override
	public int update(boardDTO dto) {
		return dao.update(dto);
	}

	//게시글 삭제
	@Override
	public int delete(int mb_id) {
		return dao.delete(mb_id);
	}

	// 게시물 총 갯수
	@Override
	public int count() throws Exception {
	 return dao.count();
	}
	
	// 게시물 목록 + 페이징
	@Override
	public List<boardDTO> listPage(int displayPost, int postNum) throws Exception {
	 return dao.listPage(displayPost, postNum);
	}

	//홈화면 인기 게시글 목록
	@Override
	public List<boardDTO> getHotReview() {
		return dao.getHotReview();
	}

	// 예약내역 가져오기
	@Override
	public List<BookingDto> getBookingList(String m_id) {
		return dao.getBookingList(m_id);
	}

	@Override
	public List<boardDTO> listPage(int displayPost, int postNum, String field, String category) {
		return dao.listPage(displayPost, postNum, field, category);
	}

	@Override
	public void deleteReviewM(int[] mb_id) {
		for (int i = 0; i < mb_id.length; i++) {
			dao.delete(mb_id[i]);
		}
	}

	@Override
	public List<boardDTO> getBoardList(String m_id) {
		return dao.getBoardList(m_id);
	}
}
