<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update</title>
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
	
		<div class="h21_community_s_top pr">
			<div class="h21_top_cbox pr area">
				<h3 class="">
					위드독<span> 여행후기</span>
				</h3>
				<p class="h21_h3_line_c"></p>
				<p class="h21_h3_text_c">위드독에서 우리 반려견에 대한 이야기를 공유해보세요.</p>
			</div>
		</div>
		<div class="s21_sm_search_box area pr">
			<div class="h21_com_sm_tab pa">
				<ul>
					<li id="taball">
						<a onclick="go_link('ReviewPage?num=1')">전체목록</a>
					</li>
					<li id="tabbest">
						<a onclick="storeDel()">베스트글</a>
					</li>
					<li id="tabreview">
						<a onclick="go_link('ReviewPage?num=1')">여행후기</a>
					</li>
				</ul>
			</div>
		</div>
<script>
function go_link(link){ location.href=link; } 
</script>
		<div class="h21_community pr area">
			<div class="h21_com_btn_prev">
				<a href="${path}ReviewPage?num=1">
					<img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/community/btn_prev.png" alt="뒤로">
				</a>
			</div>
			<form name = "update" method = "POST" action ="${path}updatePro" enctype="multipart/form-data">
				<div class="h21_width800px">
					<div class="h21_community_view_stop">
						<div class="c_info pr">
							<span class="com_division">
								여행후기
							</span> 
						</div>
					</div>
					<div class="h21_community_view">
						<span class = "h21_write_input last_bottom_line">
							<h5>제목</h5>
							<input type="text" name="mb_title" id="mb_title" placeholder="${detail.mb_title}" />
						</span>
						
						<input type="hidden" name="mb_id" value="${detail.mb_id}"/>
						
						<span class="h21_write_textarea">
							<textarea id="mb_content" name="mb_content" style="" class="s21_je_textarea" placeholder="${detail.mb_content}"></textarea>
						</span>
						
						<div class="h21_write_btn">
							<div class="h21_btn_cancel"><a href="${path}ReviewPage?num=1">취소</a></div>
							<div class="h21_btn_write"><button type="submit"><a>등록</a></button></div>
					    </div>
				  </div>
			</form>
		</div>
</body>
</html>