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
		$('#chBtn').click(function(){
			var pwd = $('#pwd').val();
			var pwdCh = $('#pwdCh').val();
			
			if(pwd == ""){
				alert('비밀번호를 입력해주세요.');
			}else if(pwdCh == ""){
				alert('비밀번호 확인를 입력해주세요.')
			}
			$.ajax({
				
				url: 'chPw.do',
				data: {'pwd':pwd},
				type: 'post',
				success: function(pwdCh){
					if(pwdCh == 0){
						
					}
				}, error: function(){
					alert('서버오류입니다 관리자에게 문의하세요.');
				}
			});
		});
	});
	
	/* $(function(){
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
	}); */
</script>
</head>

<body>
	<!-- header -->
	<jsp:include page="./header.jsp"/>
	<!-- //header -->
	
	<form action="" method="post">
    <div class="s21_event_m_top pr" style="height:800px">
		<div class="h21_top_cbox pr area">
			<h3 class="" style="height:230px">비밀번호 수정</h3>
			<p class="s21_h3_line"></p>
			<p class="s21_h3_text">
			<div style="margin-left: 540px;">
				<div class="join">
					<label>비밀번호</label>
					<input type="password" name="pwd" id="pwd" placeholder="바꾸실 비밀번호를 입력하세요"/>
				</div>
				<div class="join">
					<label>비밀번호 확인</label>
					<input type="password" name="pwdCh" id="pwdCh" placeholder="바꾸실 비밀번호를 다시 입력하세요"/>
				</div>
				<div class="join">
					<button type="submit" name="chBtn" id="chBtn" onclick="chBtn()">수정</button>
					<input type="reset" name="cancel" value="취소"/>
				</div>
			</div>
		</div>
	</div>
	</form>
	
	<!-- footer -->
    <jsp:include page="./footer.jsp"/>
	<!-- //footer -->
</body>
</html>