package com.withdog.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.withdog.dto.ReplyDTO;

@Component
public class ReplyDAOImpl implements ReplyDAO{

	@Autowired
	SqlSession sqlSession;
	
	private static String namespace = "com.test.mapper.reply";

	@Override
	public List<ReplyDTO> list(int mb_id) {
		// 댓글 조회
		return sqlSession.selectList(namespace + ".replyList", mb_id);
	}

	@Override
	public int write(ReplyDTO dto) {
		// 댓글 작성
		return sqlSession.insert(namespace + ".replyWrite", dto);
	}

	@Override
	public int update(ReplyDTO dto) {
		// 댓글 수정
		return sqlSession.update(namespace + ".replyModify", dto);
	}

	@Override
	public int delete(int mbre_id) {
		// 댓글 삭제
		return sqlSession.delete(namespace + ".replyDelete", mbre_id);
	}
}
