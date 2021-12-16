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
		// 게시물 총 갯수
		 int count = boardService.count();
		  
		 // 한 페이지에 출력할 게시물 갯수
		 int postNum = num*6;
		  
		 // 하단 페이징 번호 ([ 게시물 총 갯수 ÷ 한 페이지에 출력할 갯수 ]의 올림)
		 int pageNum = (int)Math.ceil((double)count/5);
		  
		 // 출력할 게시물
		 int displayPost = postNum-5;
		 
		//한번에 표시할 페이징 번호의 갯수
		 int pageNum_cnt = 5;

		 //표시되는 페이지 번호 중 마지막 번호
		 int endPageNum = (int)(Math.ceil((double)num / (double)pageNum_cnt) * pageNum_cnt);
		  
		 //표시되는 페이지 번호 중 첫번째 번호
		 int startPageNum = endPageNum - (pageNum_cnt - 1);

		 //마지막 번호 재계산
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

		 //시작 및 끝 번호
		 model.addAttribute("startPageNum", startPageNum);
		 model.addAttribute("endPageNum", endPageNum);

		 //이전 및 다음 
		 model.addAttribute("prev", prev);
		 model.addAttribute("next", next);

		 //현재 페이지
		 model.addAttribute("select", num);
			   
		return "board/ReviewPage"; // 목록 페이지 위드독
	}
	
	@RequestMapping(value = "detailReviewPage")
	public String getdetail(Model model, HttpServletRequest request) throws Exception{

		int mb_id = Integer.parseInt(request.getParameter("mb_id"));
		boardDTO detail = boardService.detailboard(mb_id);
		model.addAttribute("detail", detail);
		
		// 댓글 조회
		List<ReplyDTO> reply = replyService.list(mb_id);
		model.addAttribute("reply", reply);
		
		return "board/detailReviewPage"; // 상세보기 위드독
	}
	
	@RequestMapping(value = "update", method = RequestMethod.GET)
	public String getupdate(HttpServletRequest request, Model model) {
		boardDTO detail = boardService.detailboard(Integer.parseInt(request.getParameter("mb_id")));
		model.addAttribute("detail", detail);

		return "board/update";
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
	
	@RequestMapping(value = "delete", method = RequestMethod.POST) 
	public String delete(int mb_id) { 
		boardService.delete(mb_id); 
		
		return "redirect:ReviewPage";  //삭제
	}
}
