package com.withdog.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ExecutionException;

import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.mail.EmailException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.withdog.dao.memberDao;
import com.withdog.dto.BookingDto;
import com.withdog.dto.MemberDto;
import com.withdog.dto.boardDTO;
import com.withdog.service.BookingService;
import com.withdog.service.IHotelService;
import com.withdog.service.MemberService;
import com.withdog.service.boardService;



@Controller
public class MemberController {
	
	@Autowired
	MemberService memberService;
	@Autowired
	IHotelService hotelService;
	@Autowired
	boardService boardService;
	@Autowired
	BookingService bookingService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		model.addAttribute("h_list", hotelService.getRecentHotel());
		model.addAttribute("mb_list", boardService.getHotReview());
		return "mainTemplate";
	}
	
	@RequestMapping("login")
	public String login() {
		return "login";
	}
	
	@ResponseBody
	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public int loginAction(HttpServletRequest requset, HttpServletResponse response) throws IOException {
		requset.setCharacterEncoding("UTF-8");
		HttpSession session = requset.getSession();
		String email = requset.getParameter("email");
		String pw = requset.getParameter("pw");
		int loginRs= memberService.login(email, memberService.encryptionPw(pw));
		List<MemberDto> list = memberService.userInfo(email);
		for(MemberDto dto : list) {
			String nick = dto.getM_nick();
			session.setAttribute("nick", nick);
		}
		session.setAttribute("loginRs", loginRs);
		if(loginRs==1) {
			session.setAttribute("loginEmail", email);
		}
		System.out.println(loginRs);
		return loginRs;
	}
	
	@RequestMapping("logout")
	public String logout(HttpServletRequest requset) {
		HttpSession session = requset.getSession();
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping("join")
	public String join() {
		return "join";
	}
	
	@RequestMapping(value = "join.do", method = RequestMethod.POST)
	public String joinAction(HttpServletRequest request) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");	
		String userEmail = request.getParameter("email");
		String lastEmail = request.getParameter("last_email");
		String userpw = request.getParameter("pw");
		String userNickname = request.getParameter("nick");
		String username = request.getParameter("name");
		int birth = Integer.parseInt(request.getParameter("brith") + request.getParameter("mo") + request.getParameter("day"));
		String phone = request.getParameter("phone1") + request.getParameter("phone2") + request.getParameter("phone3");
		String addr1  = request.getParameter("addr1"), addr2 = request.getParameter("addr2"), addr3 = request.getParameter("addr3");
		memberService.insertMember(new MemberDto(userEmail+lastEmail, memberService.encryptionPw(userpw), userNickname, birth, phone,addr1, addr2, addr3, ""));
		return "login";
	}
	
	@RequestMapping("myPage")
	public String myPage(HttpSession session, HttpServletRequest request) throws Exception {
		String userEmail = (String)session.getAttribute("loginEmail");
		int loginRs = (int) session.getAttribute("loginRs");
		if(userEmail == null) {
			return "mainTemplate";
		}
		List<MemberDto> list = memberService.userInfo(userEmail);
		request.setAttribute("userList", list); 
		session.setAttribute("loginRs", loginRs);
		
		int bookNum = bookingService.getBookingcnt(userEmail);
		request.setAttribute("bookNum", bookNum);

		List<BookingDto>memberBook = bookingService.getBookingList(userEmail);
		request.setAttribute("memberBook", memberBook);
		for(BookingDto dto : memberBook) {
			System.out.println(dto);
		}
		return "MyPage/myPage";
	}
	
	@RequestMapping("serchUser")
	public String serchUser() {
		return "MyPage/serchID";
	}
	
	@RequestMapping(value = "serchUserID", method = RequestMethod.POST)
	public String serchUserID(HttpServletRequest request) throws Exception {	
		request.setCharacterEncoding("UTF-8");	
		String userId = request.getParameter("email");
		String userNick = request.getParameter("nick");
		String msg = "";
		int fidnUser = memberService.checkId(userId);
		System.out.println(fidnUser);
		List<MemberDto> findReslut = memberService.findId(userId, userNick);
		for(MemberDto dto : findReslut) {
			if(userId.equals(dto.getM_id()) && userNick.equals(dto.getM_nick())) {
				int emailResult = memberService.changePw(userId);
				msg = userId + "로 메일을 전송했습니다";
				System.out.println(emailResult);
				request.setAttribute("findList", findReslut);
				request.setAttribute("msg", msg);
				return "forward:/login";
			}else {
				msg = userId + "는 가입이되지않거나/닉네임이 틀렸습니다";
			}
			request.setAttribute("msg", msg);
		}
		return "login";
	}
	
	@RequestMapping("chPw")
	public String chPw() {
		return "MyPage/chPw";
	}
	
	@RequestMapping(value = "chPw.do", method = RequestMethod.POST)
	@ResponseBody
	public int chPwdo(HttpServletRequest request) throws Exception {
		String pwd = request.getParameter("pwd");
		int pwdCh = memberService.changePw(pwd);
		return pwdCh;
	}
	
	@RequestMapping(value = "serchUserPw", method = RequestMethod.POST)
	@ResponseBody
	public String serchUserPw(HttpServletRequest request) throws IOException, EmailException{
		String searchPw_id = request.getParameter("email");
		int searchPw = memberService.changePw(searchPw_id);
		request.setAttribute("searchPw", searchPw);
		return "home";
	}
	
	@RequestMapping(value = "Withdrawal", method = RequestMethod.POST)
	@ResponseBody
	public boolean deletMemeber(HttpServletRequest request, HttpSession session)throws Exception {
		String m_id = request.getParameter("email");
		String m_pw = request.getParameter("pwd");
		boolean result = false;
		result = memberService.deleteMember(m_id, m_pw);
		if(result) {
			session.invalidate();
			return result;			
		}
		return result;
	}
	// 수정중
	@RequestMapping(value = "nicknameCk", method = RequestMethod.POST)
	@ResponseBody
	public int nickCk(String nick) {
		int result = memberService.nickCk(nick);
		return result;
	}
	
	@RequestMapping(value = "myReview")
	public String myReview(String m_id, Model model){
		model.addAttribute("list",  boardService.getBoardList(m_id));
		return "board/ReviewPage";
	}
}
