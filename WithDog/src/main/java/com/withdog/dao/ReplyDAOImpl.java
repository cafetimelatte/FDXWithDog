package com.withdog.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.withdog.dto.ReplyDTO;

@Repository
public class ReplyDAOImpl implements ReplyDAO{

	@Autowired
	SqlSession sqlSession;
	
	private static String namespace = "com.withdog.mapper.reply";

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
	public int update(int mbre_id, String mbre_content) {
		Map<Object, Object>mbre = new HashMap<Object, Object>();
		mbre.put("mbre_id", mbre_id);
		mbre.put("mbre_content", mbre_content);

		return	sqlSession.update(namespace + ".replyUpdate", mbre);
				
	}

	@Override
	public int delete(int mbre_id) {
		// 댓글 삭제
		return sqlSession.delete(namespace + ".replyDelete", mbre_id);
	}

	@Override
	public List<ReplyDTO> list(String m_id) {
		return sqlSession.selectList(namespace + ".replyList2", m_id);
	}
}
