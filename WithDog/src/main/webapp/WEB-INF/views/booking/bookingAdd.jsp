<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WithDog-Booking</title>

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
	
    <title>WithDog-Booking</title>
    
    <style>
    	.bbtn{
    		height: 40px;
    		width:200px;
    		margin: 50px;
    		font-size: 15px;
    		border: 1px solid black;
    		background-color: #D5D5D5;
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
                <h3 class="area" style="height:60px">숙소 예약
                </h3>
                <div class="s21_detail_box area pr">
                    <div class="s21_detail_tbox" style="width:100%; float:none">
                        <!-- 예약 정보 입력 s -->
                        <ul class="s21_detail_twrap_mod">
                        	<form name="bookingInfo" action="booking" method="post">
	                            <input type="hidden" name="h_id" value="${h_booking.h_id}">
	                            <input type="hidden" name="m_id" value="${loginEmail}">
	                            <input type="hidden" name="b_state" value="예약대기">
	                            <input type="hidden" name="b_name" value="${h_booking.h_name}">
	                            <input type="hidden" name="b_price" value="${h_booking.h_price}">
	                            <li>
	                                <dl>
	                                    <dt>숙소명</dt>
	                                    <dd>${h_booking.h_name}</dd>
	                                    <dt>예약자</dt>
	                                    <dd>${m_info.m_nick}</dd>
	                                </dl>
	                            </li>
	                            <li>
	                                <dl>
	                                    <dt>주소</dt>
	                                    <dd>${h_booking.h_add1} ${h_booking.h_add2} ${h_booking.h_add3}</dd>
	                                    <dt>1일 숙박비</dt>
	                                    <dd>${h_booking.h_price}</dd>
	                                </dl>
	                            </li>
	                            <li>
	                                <dl>
	                                    <dt>입실날짜</dt>
	                                    <dd>
	                                    	<input name="b_chkInDate" style="width:200px" type="date">
	                                    </dd>
	                                    <dt>퇴실날짜</dt>
	                                    <dd>
	                                    	<input name="b_chkOutDate" style="width:200px" type="date">
										</dd>
	                                </dl>
	                            </li>
	                            <li>
	                                <dl>
	                                    <dt>숙박인원</dt>
	                                    <dd>
		                                    <select name="b_humanNum" style="text-align:center;height:24px;width:10%">
	                                    		<option value="1">1</option>
	                                    		<option value="2">2</option>
	                                    		<option value="3">3</option>
	                                    		<option value="4">4</option>
	                                    	</select>명
	                                    </dd>
	                                    <dt>동반애완동물</dt>
	                                    <dd>
	                                    	<select name="b_petNum" style="text-align:center;height:24px;width:10%">
	                                    		<option value="0">0</option>
	                                    		<option value="1">1</option>
	                                    		<option value="2">2</option>
	                                    		<option value="3">3</option>
	                                    		<option value="4">4</option>
	                                    	</select>마리
	                                    </dd>
	                                </dl>
	                            </li>
	                            	<button class="bbtn" type="button" onclick="return checkBookingInfo(this)" name="bookBtn">예약하기</button>
	                            	<button class="bbtn" type="button" onclick="location.href='hotelList'">돌아가기</button>
                            </form>
                        </ul>
                        <!-- 예약 정보 입력 e -->
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