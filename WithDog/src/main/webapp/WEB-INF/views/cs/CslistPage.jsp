<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CsWrite</title>
	<link rel='shortcut icon' href='http://appdata.hungryapp.co.kr/images/hatdog/img/intro/00_hatdog_logo.ico'>
    <link rel="stylesheet" href="./resources/css/sub_j.css">
    <link rel="stylesheet" href="./resources/css/sub_h.css">
    <link rel="stylesheet" href="./resources/css/sub.css">
    <link rel="stylesheet" href="./resources/css/default.css">
    <link rel="stylesheet" href="./resources/css/main.css">
    <link rel="stylesheet" href="./resources/css/layout.css">
    <link rel="stylesheet" href="./resources/css/shot.css">
    <link rel="stylesheet" href="./resources/css/swiper-bundle.min.css">
    
    <link rel="icon" type="image/png" href="http://example.com/myicon.png"> 

    <script src="./resources/js/jquery.js"></script>
    <script src="./resources/js/swiper-bundle.min.js"></script>
</head>
<body>
	<!-- header-->
	<jsp:include page="../header.jsp"/>
	<!-- //header -->
	
		<div class="h21_community pr area">
			<div class="h21_com_btn_prev">
				<a href="/WithDog/">
					<img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/community/btn_prev.png" alt="뒤로">
				</a>
			</div>
			<form name="CslistPage" method="POST" action="${path}CslistPagepro">
				<div class="h21_width800px">
					<div class="h21_community_view_stop">
						<div class="c_info pr">
							<span class="com_division">
								문의사항을 상세히 적어주세요.
							</span> 
						</div>
					</div>
					<div class="h21_community_view">
						<span class = "h21_write_input last_bottom_line">
							<h5>제목</h5>
							<input type="text" name="cs_title" id="cs_title" placeholder="제목을 입력해주세요." />
							<input type="hidden" name="m_id" value="${loginEmail}">
						</span>
						<span class="h21_write_textarea">
							<textarea id="cs_content" name="cs_content" style="" class="s21_je_textarea" 
								placeholder="3일이내로 회원가입시 이메일로 답변을 보내드립니다."></textarea>
						</span>
					<div class="h21_write_btn">
						<div class="h21_btn_cancel"><a href="/WithDog/">취소</a></div>
						<div class="h21_btn_write"><button type="submit"><a>등록</a></button></div>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>