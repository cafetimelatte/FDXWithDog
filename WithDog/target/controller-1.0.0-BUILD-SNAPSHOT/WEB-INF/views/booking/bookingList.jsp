<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WithDog</title>

    <link rel='shortcut icon' href='http://appdata.hungryapp.co.kr/images/hatdog/img/intro/00_hatdog_logo.ico'>
    <link rel="stylesheet" href="css/sub_j.css">
    <link rel="stylesheet" href="css/sub_h.css">
    <link rel="stylesheet" href="css/sub.css">
    <link rel="stylesheet" href="css/default.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/layout.css">
    <link rel="stylesheet" href="css/shot.css">
    <link rel="stylesheet" href="css/swiper-bundle.min.css">


    <script src="js/jquery.js"></script>
    <script src="js/swiper-bundle.min.js"></script>
	<script src="js/verification.js"></script>
	
    <title>Document</title>
    
    <style>
    	.bbtn{
    		height: 40px;
    		width:200px;
    		margin: 50px;
    		font-size: 15px;
    	}
    	.reserved:hover {
    		background-color: #FAED7D;
    	}
    </style>
</head>

<body>
	<!-- header -->
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
									<dt style="text-align:center;width:8%;padding:0 3px 0 3px">예약번호</dt>
									<dt style="text-align:center;width:13%;padding:0 3px 0 3px">숙소명</dt>
									<dt style="text-align:center;width:8%;padding:0 3px 0 3px">숙박인원</dt>
									<dt style="text-align:center;width:8%;padding:0 3px 0 3px">반려동물</dt>
									<dt style="text-align:center;width:8%;padding:0 3px 0 3px">입실날짜</dt>
									<dt style="text-align:center;width:8%;padding:0 3px 0 3px">퇴실날짜</dt>
									<dt style="text-align:center;width:8%;padding:0 3px 0 3px">숙박일수</dt>
									<dt style="text-align:center;width:8%;padding:0 3px 0 3px">숙박비</dt>
									<dt style="text-align:center;width:8%;padding:0 3px 0 3px">예약상태</dt>
									<dt style="text-align:center;width:8%;padding:0 3px 0 3px">예약일</dt>
									<dt style="text-align:center;width:8%;padding:0 3px 0 3px">비고</dt>
								</dl>
							</li>
							<c:forEach var="b" items="${b_info}">
							<li class="reserved">
								<dl>
									<dd style="text-align:center;width:8%;padding:0 3px 0 3px">${b.b_id}</dd>
									<dd style="text-align:center;width:13%;padding:0 3px 0 3px">${b.b_name}</dd>
									<dd style="text-align:center;width:8%;padding:0 3px 0 3px">${b.b_humanNum}</dd>
									<dd style="text-align:center;width:8%;padding:0 3px 0 3px">${b.b_petNum}</dd>
									<dd style="text-align:center;width:8%;padding:0 3px 0 3px">${b.b_chkInDate}</dd>
									<dd style="text-align:center;width:8%;padding:0 3px 0 3px">${b.b_chkOutDate}</dd>
									<dd style="text-align:center;width:8%;padding:0 3px 0 3px">
										<fmt:parseNumber value="${b.b_chkInDate.time / (1000*60*60*24)}" integerOnly="true" var="inDate"></fmt:parseNumber>
										<fmt:parseNumber value="${b.b_chkOutDate.time / (1000*60*60*24)}" integerOnly="true" var="outDate"></fmt:parseNumber>
										${outDate - inDate}
									</dd>
									<dd style="text-align:center;width:8%;padding:0 3px 0 3px">${b.b_price * (outDate - inDate)}원</dd>
									<dd style="text-align:center;width:8%;padding:0 3px 0 3px">${b.b_state}</dd>
									<dd style="text-align:center;width:8%;padding:0 3px 0 3px">${b.b_regiDate}</dd>
									<dd style="text-align:center;width:8%;padding:0 3px 0 3px"><a href="updateBooking?b_id=${b.b_id}&h_id=${b.h_id}">수정</a> | <a name="delBtn" onclick="if(validate(this)){location.href='deleteBooking?b_id=${b.b_id}'}">삭제</a></dd>
								</dl>
							</li>
						</c:forEach>
						<c:if test="${empty b_info}">
							<li>
								<h1 style="margin:40px 0 40px 0;">결제대기 예약이 없습니다.</h1>
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