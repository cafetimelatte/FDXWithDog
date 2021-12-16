package com.withdog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.withdog.dao.CsreplyDAO;
import com.withdog.dao.CsreplyDAOImpl;
import com.withdog.dto.CsreplyDTO;

@Service
public class CsreplyServiceImpl implements CsreplyService{

	@Autowired
	CsreplyDAO dao;
	
	//게시글 목록
	@Override
	public List<CsreplyDTO> list() {
		List<CsreplyDTO> cslist = dao.list();
		return cslist;
	}

	@Override
	public CsreplyDTO csdetail(int cs_id) {
		return dao.csdetail(cs_id);
	}

	@Override
	public int cswrite(CsreplyDTO dto) {
		return dao.cswrite(dto);
	}

}
