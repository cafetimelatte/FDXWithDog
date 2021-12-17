package com.withdog.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.withdog.dto.CsreplyDTO;
import com.withdog.service.CsreplyService;

@Controller
public class CsreplyController {

	@Autowired 
	private CsreplyService csService;
	
	@RequestMapping(value = "CslistPage", method = RequestMethod.GET)
	public String getwrite() throws Exception{
		return "cs/CslistPage";
	}
	
	@RequestMapping(value = "CslistPagepro", method = RequestMethod.POST)
	public String postwrite(CsreplyDTO dto) throws Exception{
		csService.cswrite(dto);
		
		return "cs/CslistPagepro";
	}
	
	@RequestMapping(value = "csmanageList")
	public String list(Model model) {
		List<CsreplyDTO> cslist = csService.list();
		model.addAttribute("cslist", cslist);

		return "cs/csmanageList"; // 목록 예시

	}

	@RequestMapping(value = "detailReview")
	public String getdetail(Model model, HttpServletRequest request) {
		int cs_id = Integer.parseInt(request.getParameter("cs_id"));
		CsreplyDTO cslist = csService.csdetail(cs_id);
		model.addAttribute("cslist", cslist);

		return "cs/detailReview"; // 상세보기 예시
	}

}
