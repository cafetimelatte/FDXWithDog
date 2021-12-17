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

</script>
</head>

<body>
	<!-- header -->
	<jsp:include page="../header.jsp"/>
	<!-- //header -->
	<form action="serchUserID" method="post"> 
    <div class="s21_event_m_top pr" style="height:800px">
		<div class="h21_top_cbox pr area">
			<h3 class="" style="height:230px">아이디 찾기</h3>
			<p class="s21_h3_line"></p>
			<p class="s21_h3_text">
			<div style="margin-left: 540px;">
				<div class="join">
					<label>이메일</label>
  					<input type="text" name="email" id="email" placeholder="이메일을 입력하세요"/> @ 
	  				<select name="last_email">
		                <option value="@gmail.com">gmail.com</option><option value="@naver.com">naver.com</option>
		            </select>		
				</div>
				<div class="join">
					<label>닉네임</label>
					<input type="text" name="nick" id="nick" placeholder="닉네임을 입력하세요"/>
				</div>
				<div class="join">
					<button type="submit" name="findBtn" id="findBtn" onclick="findCk()">아이디 찾기</button>
					<input type="reset" name="cancel" value="취소"/>
				</div>
			</div>
		</div>
	</div>
	</form>
	
	<!-- footer -->
    <jsp:include page="../footer.jsp"/>
	<!-- //footer -->
</body>
</html>