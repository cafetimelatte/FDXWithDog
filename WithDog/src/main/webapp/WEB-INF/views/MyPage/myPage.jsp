<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel='shortcut icon'
	href='http://appdata.hungryapp.co.kr/images/hatdog/img/intro/00_hatdog_logo.ico'>
<link rel="stylesheet" href="./resources/css/sub_j.css">
<link rel="stylesheet" href="./resources/css/sub_h.css">
<link rel="stylesheet" href="./resources/css/sub.css">
<link rel="stylesheet" href="./resources/css/default.css">
<link rel="stylesheet" href="./resources/css/main.css">
<link rel="stylesheet" href="./resources/css/layout.css">
<link rel="stylesheet" href="./resources/css/shot.css">
<link rel="stylesheet" href="./resources/css/swiper-bundle.min.css">


<script src="./resources/js/jquery.js"></script>
<script src="./resources/js/swiper-bundle.min.js"></script>
<script>

</script>
<title>MyPage</title>
</head>
<body>

	<!-- header -->
	<jsp:include page="../header.jsp"/>
	<!-- //header -->
	
	<div class="sContainer">
		<!-- sub m top -->
		<div class="h21_member_s_top pr">
			<div class="h21_mypage_m pr area">
				<div class="h21_top_tbox_left pr">
					<div class="h21_myinfo_box">
						<div class="h21_myimg_box">
							<span class="login_myimg"><img id="profile_img"
								src="http://appdata.hungryapp.co.kr/images/hatdog/img/common/login_logoutimg.jpg/hungryapp/resize/200x200"
								alt="내사진"></span> <span class="icon_photo"><img
								src="http://appdata.hungryapp.co.kr/images/hatdog/img/common/icon_photo.png"
								alt="사진"></span>
						</div>
						<c:forEach items="${userList}" var="userList">
						<div class="h21_nickname_box">
							<p class="h21_mynickname_s">${userList.m_nick}</p>
						</div>
						</c:forEach>
					</div>
				</div>
				<div class="h21_top_tbox_right pr">
					<div class="h21_mymenu_box_s" style="display:inline-flex; overflow: hidden; float:right; width:90%; text-align:right;">
						<p class="h21_top_left_box_s" style="">
							<a onclick="location.href='logout'" class="code_view h21Btn1">
								<span class="lb">로그아웃</span> <i class="ico-arr2"></i>
							</a>
						</p>
						<p class="h21_top_left_box_s">
							<a onclick="location.href='chPw'"
								class="code_view h21Btn1"> <span class="lb">비밀번호수정</span> <i
								class="ico-arr2"></i>
							</a>
						</p>
						<p class="h21_top_left_box_s">
							<a href="?m1Code=mem&amp;m2Code=m_withdrawal"
								class="code_view h21Btn1"> <span class="lb">회원탈퇴</span> <i
								class="ico-arr2"></i>
							</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<!--// sub m top -->
		<div class="h21_sm_mymenu_box area pr">
			<div class="h21_sm_tab pa">
				<button class=""
					onclick="Store.clear();location.href='?m1Code=etc&amp;m2Code=m_like'">MY예약</button>
				<button class=""
					onclick="Store.clear();location.href='?m1Code=etc&amp;m2Code=m_write'">MY작성글</button>
				<button class="h21_sm_tab_right "
					"="" onclick="Store.clear();location.href='?m1Code=etc&amp;m2Code=m_comment'">MY댓글</button>
			</div>
		</div>
		<input type="file" id="profile_file" name="profile_file"
			style="display: none;" accept="image/*">
		<div class="h21_my_mc_w2 pr area">
			<div class="h21_com_allnb_name">
				여행지 즐겨찾기<span class="h21_com_allnb"> 0</span>
			</div>
			<div class="h21_tab h21_tab_mypage">
				<button class="tablinks"
					onclick="openCity(event, 'm_bookmark', 'H')" id="HOpen">숙소</button>
			</div>
			<!-- 하단 리스트 -->
			<div class="s21_tour_list area">
				<!-- 리스트 시작 -->
				<div class="s21_tour_list_box">
					<div class="s21_cal_btm_nolist">
						<dl class="">
							<dt>
								<img
									src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/common/pc_noimg.png">
							</dt>
							<dd>즐겨찾기한 목록이 없습니다.</dd>
						</dl>
					</div>
				</div>
				<!-- paging s -->
				<div class="s21_page">
					<div class="s21_pagination" id="PageNav" style="display: none;"></div>
				</div>
				<!--// paging e -->
			</div>
			<!--// 하단 리스트 -->
		</div>
	</div>
	<!-- footer -->
    <jsp:include page="../footer.jsp"/>
	<!-- //footer -->

</body>
</html>