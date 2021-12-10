<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
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
    <title>Manager-HotelList</title>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp"/>
	<!-- //header -->
    <div class="s21_tour_list area">
        <!-- 순 -->
        <div class="s21_tour_sun" style="margin-top:30px">
        	<div style="float:left">
			    <form name="search" action="hotelListM" method="post">
		    		<select name="category" style="text-align:center;height:25px;width:60px">
		    			<option <c:if test="${h_crit.category == 'h_name'}">selected</c:if> value="h_name">숙소명</option>
		    			<option <c:if test="${h_crit.category == 'add'}">selected</c:if> value="add">주소명</option>
		    		</select>
		    		<input name="field" value="${h_crit.field}" type="text">
		    		<button type="button" style="border:1px solid black;background-color:#EAEAEA;height:25px;width:40px" onclick="return checkSearch(this)">검색</button>
	    			<span style="display:inline-block;width:100px"></span>
	    			<a style="border:solid;background-color: green;font-size: 13px; color:white; padding:5px" type="button" href="addHotelM">숙소 추가</a>
				</form>        	
	    	</div>
            <!-- 검색란 체크시 출력-->
            <a id="dtDesc" href="?p=1&f=${h_crit.field}&c=${h_crit.category}&o=recent" class=<c:if test="${h_crit.order eq 'recent'}">'s21_sun_checked'</c:if>>최신순</a>
            <a id="cntReview" href="?p=1&f=${h_crit.field}&c=${h_crit.category}&o=review" class=<c:if test="${h_crit.order eq 'review'}">'s21_sun_checked'</c:if>>리뷰순</a>
        </div>
        <!--// 순 -->
        <!-- 리스트 시작 -->
        
        <div class="s21_tour_list_box">
        	<c:forEach var="h" items="${h_list}" varStatus="h_cnt">
				<a href="updateHotelM?h_id=${h.h_id}">
		        	<c:choose>
		        		<c:when test="${h_cnt.count % 3 eq 0}">
							<div class="s21_tour_list_conts mgr_0 pr">     			
		        		</c:when>
		        		<c:otherwise>
	                        <div class="s21_tour_list_conts pr">
		        		</c:otherwise>
		        	</c:choose>
                    	<span class="s21_reser_ok_btn pa"><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/common/icon_New2.png"></span>
						<dl class="s21_tour_list_photo">
                        	<c:forTokens var="h_img" items="${h.h_img}" delims="," begin="0" end="2" varStatus="img">
	                           	<c:choose>
	                           		<c:when test="${img.count eq 1}">
	                               		<dt><img src="hotel/${h.h_id}/h_img/${h_img}" alt="바라던바다 onerror=" noimage(this);"=""></dt>
	                           		</c:when>
	                           		<c:otherwise>
	                              	 		<dd><img src="hotel/${h.h_id}/h_img/${h_img}" alt="바라던바다" onerror="noimage(this);"></dd>                            	
	                           		</c:otherwise>
	                           	</c:choose>
                            </c:forTokens>
                        </dl>
                        <div class="s21_tour_list_tbox">
                        	<h4 class="s21_tour_accommodation">${h.h_name}</h4>
                            <p class="s21_tour_list_text">${h.h_info}</p>
                            <div class="s21_desc" onclick="">
                            	<div class="s21_d_comment"><p class="icon_comment">댓글</p>0</div>
                            </div>
                        </div>
                    </div>
                </a>
        	</c:forEach>
        <!--// 리스트 끝 -->
        <!-- paging s -->
        <div class="s21_page">
            <div class="s21_pagination jquery-paging" style="margin-left: 410px;" id="PageNav">
            	<c:if test="${h_crit.prev}">
	            	<a href="?p=1&f=${h_crit.field}&c=${h_crit.category}&o=${h_crit.order}" class="">«</a>
	            	<a href="?p=${h_crit.startNum - 5}&f=${h_crit.field}&c=${h_crit.category}&o=${h_crit.order}" class="PageNavPrev">←</a>
            	</c:if>
            	
            	<c:forEach var="i" begin="0" end="4">
	            	<c:if test="${(h_crit.startNum + i) <= h_crit.lastNum}">
		            	<a href="?p=${h_crit.startNum + i}&f=${h_crit.field}&c=${h_crit.category}&o=${h_crit.order}" class="${(h_crit.page == h_crit.startNum + i)?'active':''}">${h_crit.startNum + i}</a>
	            	</c:if>
            	</c:forEach>
            	
            	<c:if test="${h_crit.next}">
	            	<a href="?p=${h_crit.startNum + 5}&f=${h_crit.field}&c=${h_crit.category}&o=${h_crit.order}" class="PageNavNext">→</a>
	            	<a href="?p=${h_crit.lastNum}&f=${h_crit.field}&c=${h_crit.category}&o=${h_crit.order}" class="">»</a>
            	</c:if>
            </div>
        </div>
        <!--// paging e -->
    </div>
	<!-- footer -->
    <jsp:include page="../footer.jsp"/>
	<!-- //footer -->
</body>
</html>