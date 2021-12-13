package com.withdog.service;

import java.util.List;

import com.withdog.dto.ReplyDTO;

public interface ReplyService {

			// 댓글 조회
			List<ReplyDTO> list(int mb_id);

			// 댓글 작성
			int write(ReplyDTO dto);
			
			// 댓글 수정
			int update(ReplyDTO dto);

			// 댓글 삭제
			int delete(int mbre_id);
}
