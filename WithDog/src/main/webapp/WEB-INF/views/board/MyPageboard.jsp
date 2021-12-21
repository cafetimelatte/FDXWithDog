<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Review</title>
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
    <script src="js/verification.js"></script>
</head>
<body>
   <!-- header-->
	<jsp:include page="../header.jsp"/>
	<!-- //header -->

	   <!-- container -->
    <div id="Container">
        <div class="sContainer">
            <!-- sub m top -->
            <div class="s21_tour_de_top">
                <h3 class="area" style="height:60px">숙소 예약 목록</h3>
                <div class="s21_detail_box area pr">
                    <div class="s21_detail_tbox" style="width:100%; float:none">
                        <ul class="s21_detail_twrap_mod">
                        <!-- 예약 정보 입력 s -->
							<li>
								<dl>
									<dt style="text-align:center;width:8%;padding:0 3px 0 3px">게시글번호</dt>
									<dt style="text-align:center;width:13%;padding:0 3px 0 3px">제목</dt>
									<dt style="text-align:center;width:8%;padding:0 3px 0 3px">내용</dt>
									<dt style="text-align:center;width:8%;padding:0 3px 0 3px">조회수</dt>
									<dt style="text-align:center;width:8%;padding:0 3px 0 3px">작성일</dt>
									<dt style="text-align:center;width:8%;padding:0 3px 0 3px">숙소명</dt>
								</dl>
							</li>
							<c:forEach var="b" items="${boardlist}">
							<li class="reserved">
								<dl>
									<dd style="text-align:center;width:8%;padding:0 3px 0 3px">${b.mb_id}</dd>
									<dd style="text-align:center;width:13%;padding:0 3px 0 3px">${b.mb_title}</dd>
									<dd style="text-align:center;width:8%;padding:0 3px 0 3px">${b.mb_content}</dd>
									<dd style="text-align:center;width:8%;padding:0 3px 0 3px">${b.mb_hit}</dd>
									<dd style="text-align:center;width:8%;padding:0 3px 0 3px">${b.mb_regidate}</dd>
									<dd style="text-align:center;width:8%;padding:0 3px 0 3px">${b.h_id}</dd>
						
									<dd style="text-align:center;width:8%;padding:0 3px 0 3px"><a href="update?mb_id=${b.mb_id}&h_id=${b.h_id}">수정</a> | <a name="delBtn" onclick="if(validate(this)){location.href='delete?mb_id=${b.mb_id}'}">삭제</a></dd>
								</dl>
							</li>
						</c:forEach>
						<c:if test="${empty boardlist}">
							<li>
								<h1 style="margin:40px 0 40px 0;">작성한 글이 없습니다</h1>
							</li>
						</c:if>
						<input class="bbtn" type="button" value="결제하기">
						<input class="bbtn" type="button" value="돌아가기" onclick="location.href='hotelList';">
                        <!-- 예약 정보 입력 e -->
						</ul>
					</div>
				</div>
			</div>
            <!--// sub m top -->
		</div>
	</div>
    <!-- //container -->
    
<!-- footer -->
<jsp:include page="../footer.jsp"/>
<!-- //footer -->
    
</body>
</html>