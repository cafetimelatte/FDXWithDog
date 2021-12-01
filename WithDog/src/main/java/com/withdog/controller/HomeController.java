package com.withdog.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.withdog.dto.MemberDto;
import com.withdog.service.MemberService;



@Controller
public class HomeController {
	
	@Autowired
	MemberService memberService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "mainTemplate";
	}
	
	@RequestMapping("login")
	public String login() {
		return "login";
	}
	
	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public String loginAction(HttpServletRequest requset) throws UnsupportedEncodingException {
		requset.setCharacterEncoding("UTF-8");
		String email = requset.getParameter("email");
		String pw = requset.getParameter("pw");
		int loginRs= memberService.login(email, pw);
		HttpSession session = requset.getSession();
		if(loginRs==1) {
			session.setAttribute("loginEmail", email);
		}
		session.setAttribute("loginRs", loginRs);
		return "mainTemplate";
	}
	
	@RequestMapping("logout")
	public String logout(HttpServletRequest requset) {
		HttpSession session = requset.getSession();
		session.invalidate();	
		return "mainTemplate";
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
		int brith = Integer.parseInt(request.getParameter("brith") + request.getParameter("mo") + request.getParameter("day"));
		String phone = request.getParameter("phone1") + request.getParameter("phone2") + request.getParameter("phone3");
		String addr1  = request.getParameter("addr1"), addr2 = request.getParameter("addr2"), addr3 = request.getParameter("addr3");
		memberService.insertMember(new MemberDto(userEmail+lastEmail, userpw, userNickname, brith, phone,addr1, addr2, addr3, ""));
		return "home";
	}
	
	@RequestMapping("myPage")
	public String myPage(HttpSession session, HttpServletRequest request) {
		String userEmail = (String)session.getAttribute("loginEmail");
		int loginRs = (int) session.getAttribute("loginRs");
		if(userEmail == null) {
			return "mainTemplate";
		}
		List<MemberDto> list = memberService.userInfo(userEmail);
		request.setAttribute("userList", list); 
		session.setAttribute("loginRs", loginRs);
		return "myPage";
	}
	
	@RequestMapping("serchUser")
	public String serchUser() {
		return "serchID";
	}
	
	@RequestMapping(value = "serchUserID", method = RequestMethod.POST)
	public String serchUserID(HttpServletRequest request) throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");	
		String userId = request.getParameter("email") + request.getParameter("last_email");
		String userNick = request.getParameter("nick");
		List<MemberDto> findReslut = memberService.findId(userId, userNick);
		for(MemberDto dto : findReslut) {
			if(userId.equals(dto.getM_id()) && userNick.equals(dto.getM_nick())) {
				request.setAttribute("findList", findReslut);				
			}
		}
		return "home";
	}
	
}
