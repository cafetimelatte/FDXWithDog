package com.withdog.controller;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.withdog.dto.ReplyDTO;
import com.withdog.dto.boardDTO;
import com.withdog.service.MemberService;
import com.withdog.service.ReplyService;
import com.withdog.service.boardService;
import com.withdog.utils.UploadFileUtils;

@Controller
public class BoardController {
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	private boardService boardService;
	
	@Autowired 
	private ReplyService replyService;
	
	@Resource(name="uploadPath")
	private String uploadPath;
	
	@RequestMapping(value = "writeReview", method = RequestMethod.GET)
	public String getwrite(HttpServletRequest request, Model model) throws Exception{
		HttpSession session = request.getSession();
		String m_id = (String)session.getAttribute("loginEmail");
		model.addAttribute("bookingList", boardService.getBookingList(m_id));
		return "board/writeReview";
	}
	
	@RequestMapping(value = "writeReviewpro", method = RequestMethod.POST)
	public String postwrite(boardDTO dto, MultipartFile file) throws Exception{
		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;

		if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
			fileName =  UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath); 
		} else {
			fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}

		dto.setMb_img("imgUpload" + ymdPath + File.separator + fileName);
		boardService.write(dto);
		
		return "board/writeReviewpro";
	}
	
	@RequestMapping(value = "ReviewPage", method = RequestMethod.GET)
	public String list(Model model, int num) throws Exception {
		// ????????? ??? ??????
		 int count = boardService.count();
		  
		 // ??? ???????????? ????????? ????????? ??????
		 int postNum = num*6;
		  
		 // ?????? ????????? ?????? ([ ????????? ??? ?????? ?? ??? ???????????? ????????? ?????? ]??? ??????)
		 int pageNum = (int)Math.ceil((double)count/5);
		  
		 // ????????? ?????????
		 int displayPost = postNum-5;
		 
		//????????? ????????? ????????? ????????? ??????
		 int pageNum_cnt = 5;

		 //???????????? ????????? ?????? ??? ????????? ??????
		 int endPageNum = (int)(Math.ceil((double)num / (double)pageNum_cnt) * pageNum_cnt);
		  
		 //???????????? ????????? ?????? ??? ????????? ??????
		 int startPageNum = endPageNum - (pageNum_cnt - 1);

		 //????????? ?????? ?????????
		 int endPageNum_tmp = (int)(Math.ceil((double)count / (double)pageNum_cnt));

		 if(endPageNum > endPageNum_tmp) {
		 	 endPageNum = endPageNum_tmp;
		 	}

		 boolean prev = startPageNum == 1 ? false : true;
		 boolean next = endPageNum * pageNum_cnt >= count ? false : true;

		 List<boardDTO> list = null; 
		 list = boardService.listPage(displayPost, postNum);
		 model.addAttribute("list", list);   
		 model.addAttribute("pageNum", pageNum);

		 //?????? ??? ??? ??????
		 model.addAttribute("startPageNum", startPageNum);
		 model.addAttribute("endPageNum", endPageNum);

		 //?????? ??? ?????? 
		 model.addAttribute("prev", prev);
		 model.addAttribute("next", next);

		 //?????? ?????????
		 model.addAttribute("select", num);
			   
		return "board/ReviewPage"; // ?????? ????????? ?????????
	}

	@RequestMapping(value = "ReviewPageM", method = RequestMethod.GET)
	public String listM(@RequestParam(required=false, defaultValue="1") int num,
			@RequestParam(value="f", required=false, defaultValue="") String field,
			@RequestParam(value="c", required=false, defaultValue="") String category,
			Model model) throws Exception {
		// ????????? ??? ??????
		int count = boardService.count();
		
		// ??? ???????????? ????????? ????????? ??????
		int postNum = num*6;
		
		// ?????? ????????? ?????? ([ ????????? ??? ?????? ?? ??? ???????????? ????????? ?????? ]??? ??????)
		int pageNum = (int)Math.ceil((double)count/5);
		
		// ????????? ?????????
		int displayPost = postNum-5;
		
		//????????? ????????? ????????? ????????? ??????
		int pageNum_cnt = 5;
		
		//???????????? ????????? ?????? ??? ????????? ??????
		int endPageNum = (int)(Math.ceil((double)num / (double)pageNum_cnt) * pageNum_cnt);
		
		//???????????? ????????? ?????? ??? ????????? ??????
		int startPageNum = endPageNum - (pageNum_cnt - 1);
		
		//????????? ?????? ?????????
		int endPageNum_tmp = (int)(Math.ceil((double)count / (double)pageNum_cnt));
		
		if(endPageNum > endPageNum_tmp) {
			endPageNum = endPageNum_tmp;
		}
		
		boolean prev = startPageNum == 1 ? false : true;
		boolean next = endPageNum * pageNum_cnt >= count ? false : true;
		
		List<boardDTO> list = boardService.listPage(displayPost, postNum, field, category);
		model.addAttribute("list", list);   
		model.addAttribute("pageNum", pageNum);
		
		//?????? ??? ??? ??????
		model.addAttribute("startPageNum", startPageNum);
		model.addAttribute("endPageNum", endPageNum);
		
		//?????? ??? ?????? 
		model.addAttribute("prev", prev);
		model.addAttribute("next", next);
		
		//?????? ?????????
		model.addAttribute("select", num);
		
		model.addAttribute("field", field);
		model.addAttribute("category", category);
		
		return "board/managerReviewPage"; // ????????? ?????? ????????? ?????????
	}
	
	@RequestMapping(value = "ReviewPageM", method = RequestMethod.POST)
	public String listSearchM(@RequestParam(required=false, defaultValue="1") int num,
			@RequestParam(value="f", required=false, defaultValue="") String field,
			@RequestParam(value="c", required=false, defaultValue="") String category,
			Model model) throws Exception {
		// ????????? ??? ??????
		int count = boardService.count();
		
		// ??? ???????????? ????????? ????????? ??????
		int postNum = num*6;
		
		// ?????? ????????? ?????? ([ ????????? ??? ?????? ?? ??? ???????????? ????????? ?????? ]??? ??????)
		int pageNum = (int)Math.ceil((double)count/5);
		
		// ????????? ?????????
		int displayPost = postNum-5;
		
		//????????? ????????? ????????? ????????? ??????
		int pageNum_cnt = 5;
		
		//???????????? ????????? ?????? ??? ????????? ??????
		int endPageNum = (int)(Math.ceil((double)num / (double)pageNum_cnt) * pageNum_cnt);
		
		//???????????? ????????? ?????? ??? ????????? ??????
		int startPageNum = endPageNum - (pageNum_cnt - 1);
		
		//????????? ?????? ?????????
		int endPageNum_tmp = (int)(Math.ceil((double)count / (double)pageNum_cnt));
		
		if(endPageNum > endPageNum_tmp) {
			endPageNum = endPageNum_tmp;
		}
		
		boolean prev = startPageNum == 1 ? false : true;
		boolean next = endPageNum * pageNum_cnt >= count ? false : true;
		
		List<boardDTO> list = boardService.listPage(displayPost, postNum, field, category);

		model.addAttribute("list", list);   
		model.addAttribute("pageNum", pageNum);
		
		//?????? ??? ??? ??????
		model.addAttribute("startPageNum", startPageNum);
		model.addAttribute("endPageNum", endPageNum);
		
		//?????? ??? ?????? 
		model.addAttribute("prev", prev);
		model.addAttribute("next", next);
		
		//?????? ?????????
		model.addAttribute("select", num);
		
		model.addAttribute("field", field);
		model.addAttribute("category", category);
		
		return "board/managerReviewPage"; // ????????? ?????? ????????? ?????????
	}
	
	@RequestMapping(value = "detailReviewPage")
	public String getdetail(Model model, HttpServletRequest request) throws Exception{

		int mb_id = Integer.parseInt(request.getParameter("mb_id"));
		boardDTO detail = boardService.detailboard(mb_id);
		model.addAttribute("detail", detail);
		System.out.println(detail);
		
		// ?????? ??????
		List<ReplyDTO> reply = replyService.list(mb_id);
		model.addAttribute("reply", reply);
		
		return "board/detailReviewPage"; // ???????????? ?????????
	}
	@RequestMapping(value = "detailReviewPageM")
	public String getdetailM(Model model, int mb_id) throws Exception{
		
		boardDTO detail = boardService.detailboard(mb_id);
		model.addAttribute("detail", detail);
		
		// ?????? ??????
		List<ReplyDTO> reply = replyService.list(mb_id);
		model.addAttribute("reply", reply);
		
		return "board/managerReviewDetail"; // ???????????? ?????????
	}
	
	@RequestMapping(value = "update", method = RequestMethod.GET)
	public String getupdate(HttpServletRequest request, Model model) {
		boardDTO detail = boardService.detailboard(Integer.parseInt(request.getParameter("mb_id")));
		model.addAttribute("detail", detail);

		return "board/update";
	}
	@RequestMapping(value = "updateM", method = RequestMethod.GET)
	public String getupdateM(int mb_id, Model model) {
		boardDTO detail = boardService.detailboard(mb_id);
		model.addAttribute("detail", detail);
		
		return "board/managerUpdate";
	}
	
	@RequestMapping(value = "updatePro", method = RequestMethod.POST) 
	public String postupdate(boardDTO dto, HttpServletRequest request){ 
		dto.setMb_id(Integer.parseInt(request.getParameter("mb_id")));
		dto.setMb_title(request.getParameter("mb_title"));
		dto.setMb_content(request.getParameter("mb_content"));
	//  dto.setMb_img(request.getParameter("mb_img"));
		
		boardService.update(dto);

		return "board/updatePro"; 
	  }
	
	@RequestMapping(value = "updateProM", method = RequestMethod.POST) 
	public String postupdateM(boardDTO dto){ 
		boardService.update(dto);
		return "redirect:ReviewPageM"; 
	}
	
	@RequestMapping(value = "delete", method = RequestMethod.POST) 
	public String delete(int mb_id) { 
		boardService.delete(mb_id); 
		return "redirect:ReviewPage";  //??????
	}
	
	@RequestMapping(value = "delete", method = RequestMethod.GET) 
	public String delete2(int mb_id) { 
		boardService.delete(mb_id); 
		return "redirect:myReview";  //??????
	}
	
	@RequestMapping(value = "deleteM", method = RequestMethod.GET) 
	public String deleteM(int mb_id) { 
		boardService.delete(mb_id); 
		return "redirect:ReviewPageM";  //??????
	}
	@RequestMapping(value = "deleteReviewM", method = RequestMethod.POST) 
	public String deleteReviewM(int[] mb_id) {
		if(mb_id != null) {
			boardService.deleteReviewM(mb_id); 
		}
		return "redirect:ReviewPageM";  //??????
	}
	
	
}
