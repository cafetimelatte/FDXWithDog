package com.withdog.dao;

import java.util.List;

import com.withdog.dto.boardDTO;

public interface boardDAO {

	//게시글 목록
	List<boardDTO> list();
	
	//게시글 상세 보기
	boardDTO detailboard(int mb_id);
	
	//게시글 작성
	int write(boardDTO dto);
	
	//조회수
	int hitboard(int mb_id);
	
	//게시글 수정
	int update(boardDTO dto);
	
	//게시글 삭제
	int delete(int mb_id);
	
	// 게시물 총 갯수
	public int count() throws Exception;
	
	// 게시물 목록 + 페이징
	public List<boardDTO> listPage(int displayPost, int postNum) throws Exception;
}
