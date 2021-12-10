package com.withdog.service;

import java.io.PrintWriter;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.HtmlEmail;
import org.apache.commons.mail.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.withdog.dao.memberDao;
import com.withdog.dto.MemberDto;


import java.security.MessageDigest;
import java.security.SecureRandom;

@Service
public class memberServiceImpl implements MemberService {
	@Autowired
	memberDao dao;
	
	@Override
	public boolean insertMember(MemberDto dto) {
		int result = dao.insert(dto);
		return result == 1;
	}

	@Override
	public int login(String email, String pw) {
		int result= dao.login(email, pw);

		return result;
//		로그인
//		-2:아이디없음
//		-1:서버오류
//		0:비밀번호틀림
//		1:성공
	}

	@Override
	public List<MemberDto> userInfo(String userEmail) {
		List<MemberDto>list = dao.userInfo(userEmail);
		return list;
	}

	@Override
	public List<MemberDto> findId(String userId, String userNick) {
		List<MemberDto> findList = dao.findId(userId, userNick);
		return findList;
	}
	
	@Override
	public int checkId(String id) {
		int a = dao.checkId(id);
		return a;
	}
	
	public void sendHtmlEmail(String text,String id) {
		 HtmlEmail email = new HtmlEmail();
		    try {
		    email.setCharset("euc-kr");
		    email.setHostName("smtp.gmail.com");
		    email.setSmtpPort(465);
		    email.addTo(id, "");
		    email.setFrom("WithDog@admin.com", "");
		    email.setAuthentication("본인gmail아이디", "본인gmail비밀번호");
		    email.setTLS(true);
		    email.setSSL(true);
		    email.setSubject("WithDog의 새비밀번호입니다.");
		    
		    email.setHtmlMsg("<!DOCTYPE html>\r\n"
		    		+ "<html lang=\"en\">\r\n"
		    		+ "<head>\r\n"
		    		+ "    <meta charset=\"UTF-8\">\r\n"
		    		+ "    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n"
		    		+ "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n"
		    		+ "    <title>Document</title>\r\n"
		    		+ "</head>\r\n"
		    		+ "<body>\r\n"
		    		+ "    <table width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"font-family:돋움,dotum,sans-serif;\">\r\n"
		    		+ "        <tbody><tr><td>\r\n"
		    		+ "              <div style=\"width: 600px;\">\r\n"
		    		+ "                <h1 style=\"margin-top: 30px; margin-bottom: 16px;\">\r\n"
		    		+ "                  <a href=\"http://localhost:9081/WithDog/\" target=\"_blank\" rel=\"noreferrer noopener\"><img style=\"border: 0px currentColor; border-image: none; display: block;\" alt=\"WithDog\" src=\"http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/common/logo.png\" loading=\"lazy\"></a>\r\n"
		    		+ "                </h1>\r\n"
		    		+ "                <table width=\"600\" cellspacing=\"0\" cellpadding=\"0\" style=\"width:100%; border-radius:3px; border:1px solid rgb(221, 221, 221); border-image: none; -moz-border-radius:3px; -webkit-border-radius:3px;\">\r\n"
		    		+ "                  <tbody><tr><td style=\"padding:30px;\">\r\n"
		    		+ "                        <table style=\"width:100%; border-collapse: collapse; border-spacing: 0;\" cellspacing=\"0\" cellpadding=\"0\">\r\n"
		    		+ "                          <tbody><tr><td align=\"left\" valign=\"top\" style=\"padding: 0px;\">\r\n"
		    		+ "                                <!-- 회색 박스 안쪽 내용 -->\r\n"
		    		+ "                                <h2 style=\"margin: 0px; color: rgba(255, 128, 13,100); font-family: 돋움,dotum,sans-serif; font-size: 20px;\">\r\n"
		    		+ "                                  비밀번호 재설정 안내\r\n"
		    		+ "                                </h2>\r\n"
		    		+ "                                <div style=\"margin: 0px; padding: 0px; height: 24px;\">\r\n"
		    		+ "                                  &nbsp;&nbsp;&nbsp;\r\n"
		    		+ "                                </div>\r\n"
		    		+ "                                <div style=\"margin: 0px; padding: 0px;\">\r\n"
		    		+ "                                  <p style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); line-height: 1.58; font-size: 12px;\">\r\n"
		    		+ "                                    요청하신 비밀번호 재설정을 위한 안내\r\n"
		    		+ "                                    메일입니다.<br>아래의 비밀번호로 로그인 하신 뒤 마이페이지에서 비밀번호 변경 후 사용하세요.\r\n"
		    		+ "                                  </p>\r\n"
		    		+ "                                  <div style=\"margin: 0px; padding: 34px 0px 0px; text-align: center;\">\r\n"
		    		+ "                                    <a style=\"background: rgba(255, 128, 13,100); padding: 0px; border-radius: 4px; border: 0; border-image: none; text-align: center; color: #fff; font-size: 15px; font-weight: bold; text-decoration: none; display: inline-block;\"  target=\"_blank\" rel=\"noreferrer noopener\"><span style=\"padding: 0px 30px; height: 38px; line-height: 40px;\">"+text+"</span></a>\r\n"
		    		+ "                                  </div>\r\n"
		    		+ "                                  <div style=\"margin: 0px; padding: 0px; height: 34px;\">\r\n"
		    		+ "                                    &nbsp;&nbsp;&nbsp;\r\n"
		    		+ "                                  </div>\r\n"
		    		+ "                                  <p style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); line-height: 1.58; font-size: 12px;\">\r\n"
		    		+ "                                    비밀번호 재설정에 대해 궁금하신 사항이 있으시면\r\n"
		    		+ "                                    질문/답변 게시판 및 고객센터(0000-0000)로<br>접수해\r\n"
		    		+ "                                    주시면 빠르고 친절하게 안내해 드리겠습니다.\r\n"
		    		+ "                                  </p>\r\n"
		    		+ "                                </div>\r\n"
		    		+ "                                <!--// 회색 박스 안쪽 내용 -->\r\n"
		    		+ "                              </td></tr></tbody>\r\n"
		    		+ "                        </table>\r\n"
		    		+ "                      </td></tr></tbody>\r\n"
		    		+ "                </table>\r\n"
		    		+ "      \r\n"
		    		+ "                <table width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n"
		    		+ "                  <tbody><tr><td height=\"15\" style=\"height:15px; line-height:15px;\">\r\n"
		    		+ "                        &nbsp;\r\n"
		    		+ "                      </td></tr></tbody>\r\n"
		    		+ "                </table>\r\n"
		    		+ "      \r\n"
		    		+ "                <div style=\"width:100%; height:47px; overflow:hidden; border-radius:3px; -webkit-border-radius:3px;\">\r\n"
		    		+ "                  <table width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n"
		    		+ "                    <tbody><tr><td height=\"47\" style=\"color:#fff; font-size:14px; font-weight:bold; text-align:center; background-color:rgba(255,128,13, 100);\">\r\n"
		    		+ "                          WithDog 고객센터 0000-0000\r\n"
		    		+ "                        </td></tr></tbody>\r\n"
		    		+ "                  </table>\r\n"
		    		+ "                </div>\r\n"
		    		+ "      \r\n"
		    		+ "                <table width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n"
		    		+ "                  <tbody><tr><td height=\"15\" style=\"height:15px; line-height:15px;\">\r\n"
		    		+ "                        &nbsp;\r\n"
		    		+ "                      </td></tr></tbody>\r\n"
		    		+ "                </table>\r\n"
		    		+ "      \r\n"
		    		+ "                <table width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n"
		    		+ "                  <tbody><tr><td style=\"background: rgb(250, 250, 250); padding: 18px 15px 15px; border-radius: 3px; color: rgb(104, 104, 104); line-height: 18px; font-family: 돋움,dotum,sans-serif; font-size: 11px; overflow:hidden; border-radius:3px; -webkit-border-radius:3px;\">\r\n"
		    		+ "                        본 메일은 정보통신망 이용촉진 및 정보보호 등에 관한 법률에\r\n"
		    		+ "                        의거하여 수신자의 수신동의 여부와 관계없이 발송되는\r\n"
		    		+ "                        메일입니다. 본 메일은 발신전용 메일로 회신되지 않습니다.<br>\r\n"
		    		+ "                        <br>\r\n"
		    		+ "                        (주)펀엔씨 / 대표 이효경 / 서울특별시 강남구 삼성로 570\r\n"
		    		+ "                        석천빌딩 5층<br>\r\n"
		    		+ "                        사업자등록번호 127-86-32494 / 통신판매업 제\r\n"
		    		+ "                        2013-서울강남-01570호 / 개인정보관리책임자 전민환<br>\r\n"
		    		+ "                        팩스 02-585-8477 / 이메일\r\n"
		    		+ "                        <a style=\"color: rgb(104, 104, 104); text-decoration: none;\" href=\"mailto:webmaster@funnc.com\" rel=\"noreferrer noopener\" target=\"_blank\">webmaster@funnc.com</a>\r\n"
		    		+ "                        / 고객센터&nbsp;1588-2469<br>\r\n"
		    		+ "                        평일 09:00~18:00 주말/공휴일 휴무<br>\r\n"
		    		+ "                        <em style=\"font-family: verdana; font-style: normal;\">ⓒ</em>\r\n"
		    		+ "                        <a style=\"color: rgb(104, 104, 104); font-family: verdana; font-weight: bold; text-decoration: none;\" href=\"http://www.funnc.com/\" target=\"_blank\" rel=\"noreferrer noopener\">funNC Inc.</a>\r\n"
		    		+ "                      </td></tr></tbody>\r\n"
		    		+ "                </table>\r\n"
		    		+ "              </div>\r\n"
		    		+ "            </td></tr></tbody>\r\n"
		    		+ "      </table>\r\n"
		    		+ "</body>\r\n"
		    		+ "</html>");
		    email.send();
		    }catch(Exception e) {
		    	e.printStackTrace();
		    }
		}
	    
//	    
//	    try {
//	    email.setCharset("euc-kr");
//	    email.setHostName("smtp.naver.com");
////	    email.setSmtpPort(200);
//	    email.addTo(id, "euc-kr");
//	    email.setFrom("gkswldnwldn@naver.com", "admin");
//	    email.setAuthentication("gkswldnwldn@naver.com", "Gkswldn1234!");
//	    email.setSSL(true);
//	    email.setSubject("WithDog의 새비밀번호입니다.");
//	    
//	    email.setHtmlMsg("<!DOCTYPE html>\r\n"
//	    		+ "<html lang=\"en\">\r\n"
//	    		+ "<head>\r\n"
//	    		+ "    <meta charset=\"UTF-8\">\r\n"
//	    		+ "    <meta http-equiv=\"X-UA-Compatible\" content=\"I	E=edge\">\r\n"
//	    		+ "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n"
//	    		+ "    <title>Document</title>\r\n"
//	    		+ "</head>\r\n"
//	    		+ "<body>\r\n"
//	    		+ "    <table width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"font-family:돋움,dotum,sans-serif;\">\r\n"
//	    		+ "        <tbody><tr><td>\r\n"
//	    		+ "              <div style=\"width: 600px;\">\r\n"
//	    		+ "                <h1 style=\"margin-top: 30px; margin-bottom: 16px;\">\r\n"
//	    		+ "                  <a href=\"https://www.catpre.com\" target=\"_blank\" rel=\"noreferrer noopener\"><img style=\"border: 0px currentColor; border-image: none; display: block;\" alt=\"고양이대통령\" src=\"http://static.catpre.com/images/catpre/email/logo.png\" loading=\"lazy\"></a>\r\n"
//	    		+ "                </h1>\r\n"
//	    		+ "                <table width=\"600\" cellspacing=\"0\" cellpadding=\"0\" style=\"width:100%; border-radius:3px; border:1px solid rgb(221, 221, 221); border-image: none; -moz-border-radius:3px; -webkit-border-radius:3px;\">\r\n"
//	    		+ "                  <tbody><tr><td style=\"padding:30px;\">\r\n"
//	    		+ "                        <table style=\"width:100%; border-collapse: collapse; border-spacing: 0;\" cellspacing=\"0\" cellpadding=\"0\">\r\n"
//	    		+ "                          <tbody><tr><td align=\"left\" valign=\"top\" style=\"padding: 0px;\">\r\n"
//	    		+ "                                <!-- 회색 박스 안쪽 내용 -->\r\n"
//	    		+ "                                <h2 style=\"margin: 0px; color: rgba(162, 0, 199, 1); font-family: 돋움,dotum,sans-serif; font-size: 20px;\">\r\n"
//	    		+ "                                  비밀번호 재설정 안내\r\n"
//	    		+ "                                </h2>\r\n"
//	    		+ "                                <div style=\"margin: 0px; padding: 0px; height: 24px;\">\r\n"
//	    		+ "                                  &nbsp;&nbsp;&nbsp;\r\n"
//	    		+ "                                </div>\r\n"
//	    		+ "                                <div style=\"margin: 0px; padding: 0px;\">\r\n"
//	    		+ "                                  <p style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); line-height: 1.58; font-size: 12px;\">\r\n"
//	    		+ "                                    요청하신 비밀번호 재설정을 위한 안내\r\n"
//	    		+ "                                    메일입니다.<br>아래의 비밀번호로 로그인 하신 뒤 마이페이지에서 비밀번호 변경 후 사용하세요.\r\n"
//	    		+ "                                  </p>\r\n"
//	    		+ "                                  <div style=\"margin: 0px; padding: 34px 0px 0px; text-align: center;\">\r\n"
//	    		+ "                                    <a style=\"background: rgba(162, 0, 199, 1); padding: 0px; border-radius: 4px; border: 0; border-image: none; text-align: center; color: #fff; font-size: 15px; font-weight: bold; text-decoration: none; display: inline-block;\"  target=\"_blank\" rel=\"noreferrer noopener\"><span style=\"padding: 0px 30px; height: 38px; line-height: 40px;\">"+text+"</span></a>\r\n"
//	    		+ "                                  </div>\r\n"
//	    		+ "                                  <div style=\"margin: 0px; padding: 0px; height: 34px;\">\r\n"
//	    		+ "                                    &nbsp;&nbsp;&nbsp;\r\n"
//	    		+ "                                  </div>\r\n"
//	    		+ "                                  <p style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); line-height: 1.58; font-size: 12px;\">\r\n"
//	    		+ "                                    비밀번호 재설정에 대해 궁금하신 사항이 있으시면\r\n"
//	    		+ "                                    질문/답변 게시판 및 고객센터(0000-0000)로<br>접수해\r\n"
//	    		+ "                                    주시면 빠르고 친절하게 안내해 드리겠습니다.\r\n"
//	    		+ "                                  </p>\r\n"
//	    		+ "                                </div>\r\n"
//	    		+ "                                <!--// 회색 박스 안쪽 내용 -->\r\n"
//	    		+ "                              </td></tr></tbody>\r\n"
//	    		+ "                        </table>\r\n"
//	    		+ "                      </td></tr></tbody>\r\n"
//	    		+ "                </table>\r\n"
//	    		+ "      \r\n"
//	    		+ "                <table width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n"
//	    		+ "                  <tbody><tr><td height=\"15\" style=\"height:15px; line-height:15px;\">\r\n"
//	    		+ "                        &nbsp;\r\n"
//	    		+ "                      </td></tr></tbody>\r\n"
//	    		+ "                </table>\r\n"
//	    		+ "      \r\n"
//	    		+ "                <div style=\"width:100%; height:47px; overflow:hidden; border-radius:3px; -webkit-border-radius:3px;\">\r\n"
//	    		+ "                  <table width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n"
//	    		+ "                    <tbody><tr><td height=\"47\" style=\"color:#fff; font-size:14px; font-weight:bold; text-align:center; background-color:rgba(95,95,95, 1);\">\r\n"
//	    		+ "                          고양이대통령 고객센터 0000-0000\r\n"
//	    		+ "                        </td></tr></tbody>\r\n"
//	    		+ "                  </table>\r\n"
//	    		+ "                </div>\r\n"
//	    		+ "      \r\n"
//	    		+ "                <table width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n"
//	    		+ "                  <tbody><tr><td height=\"15\" style=\"height:15px; line-height:15px;\">\r\n"
//	    		+ "                        &nbsp;\r\n"
//	    		+ "                      </td></tr></tbody>\r\n"
//	    		+ "                </table>\r\n"
//	    		+ "      \r\n"
//	    		+ "                <table width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n"
//	    		+ "                  <tbody><tr><td style=\"background: rgb(250, 250, 250); padding: 18px 15px 15px; border-radius: 3px; color: rgb(104, 104, 104); line-height: 18px; font-family: 돋움,dotum,sans-serif; font-size: 11px; overflow:hidden; border-radius:3px; -webkit-border-radius:3px;\">\r\n"
//	    		+ "                        본 메일은 정보통신망 이용촉진 및 정보보호 등에 관한 법률에\r\n"
//	    		+ "                        의거하여 수신자의 수신동의 여부와 관계없이 발송되는\r\n"
//	    		+ "                        메일입니다. 본 메일은 발신전용 메일로 회신되지 않습니다.<br>\r\n"
//	    		+ "                        <br>\r\n"
//	    		+ "                        (주)펀엔씨 / 대표 이효경 / 서울특별시 강남구 삼성로 570\r\n"
//	    		+ "                        석천빌딩 5층<br>\r\n"
//	    		+ "                        사업자등록번호 127-86-32494 / 통신판매업 제\r\n"
//	    		+ "                        2013-서울강남-01570호 / 개인정보관리책임자 전민환<br>\r\n"
//	    		+ "                        팩스 02-585-8477 / 이메일\r\n"
//	    		+ "                        <a style=\"color: rgb(104, 104, 104); text-decoration: none;\" href=\"mailto:webmaster@funnc.com\" rel=\"noreferrer noopener\" target=\"_blank\">webmaster@funnc.com</a>\r\n"
//	    		+ "                        / 고객센터&nbsp;1588-2469<br>\r\n"
//	    		+ "                        평일 09:00~18:00 주말/공휴일 휴무<br>\r\n"
//	    		+ "                        <em style=\"font-family: verdana; font-style: normal;\">ⓒ</em>\r\n"
//	    		+ "                        <a style=\"color: rgb(104, 104, 104); font-family: verdana; font-weight: bold; text-decoration: none;\" href=\"http://www.funnc.com/\" target=\"_blank\" rel=\"noreferrer noopener\">funNC Inc.</a>\r\n"
//	    		+ "                      </td></tr></tbody>\r\n"
//	    		+ "                </table>\r\n"
//	    		+ "              </div>\r\n"
//	    		+ "            </td></tr></tbody>\r\n"
//	    		+ "      </table>\r\n"
//	    		+ "</body>\r\n"
//	    		+ "</html>");
//	    email.send();
//	    }catch(Exception e) {
//	    	e.printStackTrace();
//	    }
	
	public String randomPwCreate(int size) {
		char[] charSet = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z' }; 
		StringBuffer sb = new StringBuffer(); 
		SecureRandom sr = new SecureRandom(); 		
		sr.setSeed(new Date().getTime()); 
		int idx = 0; 
		int len = charSet.length; 
		for (int i=0; i<size; i++) { 
			idx = sr.nextInt(len); 
			sb.append(charSet[idx]); 
		}
		return sb.toString();
	}

	@Override
	public int changePw(String userEmail) throws EmailException {
		int rs=checkId(userEmail);
		System.out.println(rs);
		if(rs==-1) {
			String changePwResult = randomPwCreate(6);
			sendHtmlEmail(changePwResult,userEmail);
			dao.changePw(encryptionPw(changePwResult), userEmail);
		}
		return rs;
	}
	
	public String encryptionPw(String pw) {
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			md.update(pw.getBytes());
			byte byteData[] = md.digest();
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < byteData.length; i++) {
				sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
			}
			StringBuffer hexString = new StringBuffer();
			for (int i = 0; i < byteData.length; i++) {
				String hex = Integer.toHexString(0xff & byteData[i]);
				if (hex.length() == 1) {
					hexString.append('0');
				}
				hexString.append(hex);
			}
			return hexString.toString();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}
	
}

