<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	
    <title>예약 정보 수정</title>
    
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
                <h3 class="area" style="height:60px">숙소 예약 수정 [예약번호 : ${b_info.b_id}]
					<span>
                		예약일 : ${b_info.b_regiDate}
                	</span>
                </h3>
                <div class="s21_detail_box area pr">
                    <div class="s21_detail_tbox" style="width:100%; float:none">
                        <!-- 예약 정보 입력 s -->
                        <ul class="s21_detail_twrap_mod">
                        	<form name="bookingInfo" action="updateBooking" method="POST">
                        		<input type="hidden" name="b_id" value="${b_info.b_id}">
                        		<input type="hidden" name="h_id" value="${h_booking.h_id}">
	                            <input type="hidden" name="m_id" value="${b_info.m_id}">
	                            <input type="hidden" name="b_state" value="예약대기">
	                            <input type="hidden" name="b_name" value="${h_booking.h_name}">
	                            <input type="hidden" name="b_price" value="${h_booking.h_price}">
                        	
                            <li>
                                <dl>
                                    <dt>숙소명</dt>
                                    <dd>${b_info.b_name}</dd>
                                    <dt>예약자</dt>
                                    <dd>${b_info.m_id}</dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt>주소</dt>
                                    <dd>${h_booking.h_add1} ${h_booking.h_add2} ${h_booking.h_add3}</dd>
                                    <dt>1일 숙박비</dt>
                                    <dd>${h_booking.h_price}원</dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt>입실날짜</dt>
                                    <dd>
                                    	<input style="width:200px" name="b_chkInDate" type="date" value="${b_info.b_chkInDate}">
                                    </dd>
                                    <dt>퇴실날짜</dt>
                                    <dd>
                                    	<input style="width:200px" name="b_chkOutDate" type="date" value="${b_info.b_chkOutDate}">
									</dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt>숙박인원</dt>
                                    <dd>
	                                    <select name="b_humanNum" style="text-align:center;height:24px;width:10%" >
                                    		<option value="1" <c:if test="${b_info.b_humanNum eq 1}">selected</c:if>>1</option>
                                    		<option value="2" <c:if test="${b_info.b_humanNum eq 2}">selected</c:if>>2</option>
                                    		<option value="3" <c:if test="${b_info.b_humanNum eq 3}">selected</c:if>>3</option>
                                    		<option value="4" <c:if test="${b_info.b_humanNum eq 4}">selected</c:if>>4</option>
                                    	</select>명
                                    </dd>
                                    <dt>반려동물</dt>
                                    <dd>
                                    	<select name="b_petNum" style="text-align:center;height:24px;width:10%">
                                    		<option value="0" <c:if test="${b_info.b_petNum eq 0}">selected</c:if>>0</option>
                                    		<option value="1" <c:if test="${b_info.b_petNum eq 1}">selected</c:if>>1</option>
                                    		<option value="2" <c:if test="${b_info.b_petNum eq 2}">selected</c:if>>2</option>
                                    		<option value="3" <c:if test="${b_info.b_petNum eq 3}">selected</c:if>>3</option>
                                    		<option value="4" <c:if test="${b_info.b_petNum eq 4}">selected</c:if>>4</option>
                                    	</select>마리
                                    </dd>
                                </dl>
                            </li>
								<c:if test="${h_booking.h_id ne null}">
	                            	<button class="bbtn" type="button" onclick="return checkBookingInfo(this)" name="modBtn">수정하기</button>
                            	</c:if>
                            	<button class="bbtn" type="button" onclick="location.href='bookingListM'">돌아가기</button>
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