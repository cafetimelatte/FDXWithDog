package com.withdog.service;

import java.util.List;

import com.withdog.dto.CsreplyDTO;

public interface CsreplyService {

	//게시글 목록
	List<CsreplyDTO> list();
	
	//게시글 상세 보기
	CsreplyDTO csdetail(int cs_id);
	
	//게시글 작성
	int cswrite(CsreplyDTO dto);
	
}
