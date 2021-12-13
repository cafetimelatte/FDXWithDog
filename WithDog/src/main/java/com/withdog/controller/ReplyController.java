package com.withdog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.withdog.dto.ReplyDTO;
import com.withdog.service.ReplyService;

@Controller
public class ReplyController {
	
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
    @RequestMapping(value = "replyUpdate")  
    public String replyUpdate (int mbre_id, String mbre_content, ReplyDTO dto) {
        
        dto.setMbre_id(mbre_id);
        dto.setMbre_content(mbre_content);
 
        replyService.update(dto);
        
        return "board/detailReviewPage";
    }
    
    //댓글 삭제
    @RequestMapping(value = "replyDelete" , method = {RequestMethod.GET, RequestMethod.POST} ) //세부적인 url pattern
    public String replyDelete(int mbre_id, ReplyDTO dto) {
        
    	replyService.delete(mbre_id);
    	
    	return "board/detailReviewPage";
    }

}
