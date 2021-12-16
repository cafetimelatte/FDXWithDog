package com.withdog.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.withdog.dto.ReplyDTO;
import com.withdog.service.MemberService;
import com.withdog.service.ReplyService;

@Controller
public class ReplyController {
	@Autowired
	MemberService memberSerivce;
	
	@Autowired
	private ReplyService replyService;
	
	// 댓글 작성
	@RequestMapping(value = "replywrite", method = RequestMethod.POST)
	public String posttWirte(ReplyDTO dto, int mb_id, String mbre_content) {
		ReplyDTO replyDTO = new ReplyDTO();
		replyDTO.setMbre_content(mbre_content);
		replyDTO.setMb_id(mb_id);
		System.out.println(mb_id + mbre_content);
		
		replyService.write(dto);
		String redirect_url = "redirect:detailReviewPage?mb_id="+Integer.toString(mb_id);
		return redirect_url;
	}
	
	 //댓글 수정
	@ResponseBody
    @RequestMapping(value="ReplyUpdate", method = RequestMethod.POST)
    public String replyUpdate (HttpServletRequest request, ReplyDTO dto) {
        String mbre_content = request.getParameter("mbre_content");
        int mbre_id = Integer.parseInt(request.getParameter("mbre_id"));
        System.out.println(mbre_content);
        System.out.println(mbre_id);
        

		replyService.update(mbre_id, mbre_content);
		
        
        return "board/detailReviewPage";
    }
    
    //댓글 삭제
	@ResponseBody
    @RequestMapping(value = "ReplyDelete" , method = RequestMethod.POST)
    public String replyDelete(HttpServletRequest request, int mbre_id) {
        System.out.println(mbre_id);
        
    	replyService.delete(mbre_id);
    	
    	return "board/detailReviewPage";
    }

}
