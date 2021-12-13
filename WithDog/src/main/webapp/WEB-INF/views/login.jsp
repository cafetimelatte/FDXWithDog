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
			    dataType : 'text',
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
	<!-- header -->
	<jsp:include page="./header.jsp"/>
	<!-- //header -->

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
    <jsp:include page="./footer.jsp"/>
	<!-- //footer -->
</body>
</html>