package com.withdog.interceptor;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AdminInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession(false);
		String auth = (String)session.getAttribute("loginEmail");
		if(auth != null && auth.equals("admin@gmail.com")) {
			return true;
		} else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('관리자 계정으로 로그인 후 이용해주세요.');location.href=history.go(-1);</script>");
			out.flush();
		}
		return false;
	}
	
}
