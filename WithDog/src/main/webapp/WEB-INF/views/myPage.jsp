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

	<!-- header-->
	<header id="header" class="pr">
	<div id="headerInnerWrap">
		<div id="headerTop">
			<div class="area">
				<p class="top_text">반려견과 함께 WithDog에 오신것을 환영 합니다.</p>
				<c:choose>
					<c:when test="${loginRs == 1}">
						<ul>
							<li class="line">|</li>
							<li class=""><a onclick="location.href='logout'">로그아웃 </a></li>
							<li class="line">|</li>
							<li class="">${loginEmail}</li>
							<li class="line">|</li>
							<li class=""><a onclick="location.href='myPage'">마이페이지</a></li>
							<li class="line">|</li>
							<li class=""><a onclick="location.href='myPage'">고객센터</a></li>
						</ul>
					</c:when>
				</c:choose>
			</div>
		</div>
		<div id="headerInner" class="clearfix">
			<div class="area">
				<h1 class="logo">
					<a
						onclick="Store.clear(); top.location.href='http://hatdog.co.kr/pc_hatdog/';">
						<img
						src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/common/logo.png"
						alt="하트독">
					</a>
				</h1>
				<div class="s21_w1422 pr">
					<a
						onclick="Store.clear(); top.location.href='http://hatdog.co.kr/pc_hatdog/';"></a>
					<div class="s_search">
						<input type="text" class="SearchInput" name="h_sch_text"
							id="h_sch_text" placeholder="어디에서 무엇을 하고 싶으세요?" title="">
						<span class="j21_btn_search" onclick="Store.clear();go_arinfo();"><a><img
								src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/common/ico_search.png"
								alt="검색"></a></span>
					</div>
				</div>
			</div>
		</div>
		<nav id="gnb">
		<h2 class="blind">주메뉴</h2>
		<div class="gnb-wrapper area">
			<ul class="clearfix">
				<li class="" onclick="Store.clear()"><a
					onclick="top.location.href='http://hatdog.co.kr/pc_hatdog/?m1Code=ar_info&amp;m2Code=ar_info';"><span>전체보기</span></a></li>
				<li class="" onclick="Store.clear()"><a
					onclick="top.location.href='http://hatdog.co.kr/pc_hatdog/?m1Code=tip&amp;m2Code=tip';"><span>숙소</span></a></li>
				<li class="" onclick="Store.clear()"><a
					onclick="top.location.href='http://hatdog.co.kr/pc_hatdog/?m1Code=cmm&amp;m2Code=cmm';"><span>후기게시판</span></a></li>
			</ul>
		</div>
		</nav>
	</div>
	</header>
	
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
					<div class="h21_mymenu_box_s">
						<p class="h21_top_left_box_s">
							<a onclick="location.href='logout'" class="code_view h21Btn1">
								<span class="lb">로그아웃</span> <i class="ico-arr2"></i>
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
	<footer style="margin-bottom: auto;">
	<div id="footer">
		<div class="footerBottom area">
			<div class="footerBottom_left">
				<p>
					(주)여름엔 크림빵과 코코아 주소 : 서울 서초구 강남대로27길 15-5 3층 (케이티전주지사3층) 대표이사 : 여름이
					| 사업자등록번호: 123-45-78987<br> 이메일 : summer@summer.com
				</p>

				<address>Copyright STYLE II. All rights reserved.</address>
			</div>
			<ul class="footerBottom_right">
				<li><a
					href="http://hatdog.co.kr/pc_hatdog/?m1Code=etc&m2Code=policy"
					target="_top">이용약관</a></li>
				<li><a
					href="http://hatdog.co.kr/pc_hatdog/?m1Code=etc&m2Code=policy2"
					target="_top">개인정보처리방침</a></li>
			</ul>
		</div>
	</div>
	</footer>
	<!-- footer -->

</body>
</html>