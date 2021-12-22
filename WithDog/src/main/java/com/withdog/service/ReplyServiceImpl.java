package com.withdog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.withdog.dao.ReplyDAO;
import com.withdog.dto.ReplyDTO;

@Service
public class ReplyServiceImpl implements ReplyService{

	@Autowired
	ReplyDAO dao;

	@Override
	public List<ReplyDTO> list(int mb_id) {
		// 댓글 조회
		List<ReplyDTO> list = dao.list(mb_id);
		return list;

	}

	@Override
	public int write(ReplyDTO dto) {
		// 댓글 작성
		
		return dao.write(dto);
	}

	@Override
	public int update(int mbre_id, String mbre_content) {
		// 댓글 수정
		return dao.update(mbre_id, mbre_content);
	}

	@Override
	public int delete(int mbre_id) {
		// 댓글 삭제
		return dao.delete(mbre_id);
	}

	@Override
	public List<ReplyDTO> list(String m_id) {
		List<ReplyDTO> list = dao.list(m_id);
		return list;
	}
}
