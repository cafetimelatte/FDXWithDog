<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>login</title>

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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(function(){
		$('#loginBtn').click(function(){
			
			var user_email = $('#email').val();
			var user_pw = $('#pw').val();
			if(user_email == ""){
				alert('이메일을 입력해주세요');
				location.reload();
			}else if(user_pw == ""){
				alert('비밀번호를 입력해주세요');
				location.reload();
			} 
			$.ajax({
				url: 'login.do',
				data: {'email': user_email, 'pw' : user_pw},
			    type: 'post',
			    success: function(loginRs) {
			   		if (loginRs == -2 || loginRs== 0) {
						alert("이메일(아이디)또는 비밀번호가 일치하지 않습니다.");
					}else{
						// 로그인성공후 페이지 이동처리
						location.href='/WithDog/';
					}  
				}, error: function() {
					alert('서버오류입니다 관리자에게 문의하세요.');
				}
			});
		});
	});
</script>

</head>

<body>
	<header id="header" class="pr">
		<div id="headerInnerWrap">
			<!-- ****************** 헤더상단 ********************** -->
			<div id="headerTop">
				<div class="area">
					<p class="top_text">반려견과 함께 위드독에 오신것을 환영 합니다.</p>
					<ul>
						<li class="line">|</li>
						<li class=""><a onclick="location.href='login'">로그인 </a></li>
						<li class="line">|</li>
						<li class=""><a onclick="">공지사항</a></li>
						<li class="line">|</li>
						<li class=""><a onclick="location.href=''">고객센터</a></li>
					</ul>
				</div>
			</div>
			<div id="headerInner" class="clearfix">
				<div class="area">
					<h1 class="logo">
						<a
							onclick="location.href='/WithDog/'">
							<img
							src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/common/logo.png"
							alt="위드독">
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

	<!-- <form action="login.do" method="post" name="loginform"> -->
		<div class="h21_community_m_top pr" style="height: 500px">
			<div class="h21_top_cbox pr area">
				<h3 class="">
					<span>로그인</span>
				</h3>
				<p class="h21_h3_line_c"></p>
				<p class="h21_h3_text_c">
				<div style="float: left; margin-left: 470px">
					<img src="./resources/images/KakaoTalk_20211025_1600145711.png"
						style="width: 100px; height: 100px" />
				</div>
				<div>
					<input type="text" name="email" id="email" placeholder="Email"style="width: 190px; height: 40px; margin: 0 0 8px 5px"><br />
					<input type="password" name="pw" id="pw" placeholder="Password"style="width: 190px; height: 40px; margin-left: 5px" /><br />
				</div>
				<br /> 
				<input type="button" name="serch" id="serch"value="아이디/이메일 찾기" onclick="location.href='serchUser'" style="width: 150px; height: 30px; margin-left: 470px" />
				<input type="button" name="join" id="join" value="회원가입"onclick="location.href='join'" style="width: 150px; height: 30px" /><br />
				<input type="submit" name="login" id="loginBtn" onclick="login()" value="로그인" style="width: 303px; height: 30px; margin: 5px 0 0 470px" />

				</p>
			</div>
		</div>
	<!-- </form> -->

	<!-- footer -->
	<div id="footer">
		<div class="footerBottom area">
			<div class="footerBottom_left">
				<p>
					(주)스마트나우 전주지사 주소 : 전라북도 전주시 완산구 현무1길 9 (케이티전주지사3층) 대표이사 : 송현두 |
					사업자등록번호: 402-85-34440<br> 이메일 : dju@smartnow.co.kr
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

</body>
</html>