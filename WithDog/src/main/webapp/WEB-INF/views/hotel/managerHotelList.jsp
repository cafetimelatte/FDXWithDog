<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <script src="js/swiper-bundle.min.js"></script>
	<script src="js/verification.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="js/criteria.js"></script>
	<script type="text/javascript">
		$(document).on('click','#modalBtn',function(){
			modal.style.display="flex";
			$('.close-area').click(function(event){
				modal.style.display="none";
			})
			$('.modal-overlay').click(function(event){
				if(event.target.classList.contains('modal-overlay')){
					modal.style.display="none";
				}
			})
		})
	</script>
	
    <title>Manager-HotelList</title>
    <style>
        #modal.modal-overlay {
            width: 100%;
            height: 150%;
            position: absolute;
            left: 0;
            top: 0;
            display: none;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            background: rgba(255, 255, 255, 0.25);
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
            backdrop-filter: blur(1.5px);
            border-radius: 10px;
            border: 1px solid rgba(255, 255, 255, 0.18);
            z-index:100;
        }
        #modal .modal-window {
            background: rgba( 255, 112, 18, 0.70 );
            box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
            backdrop-filter: blur( 13.5px );
            border-radius: 10px;
            border: 1px solid rgba( 255, 255, 255, 0.18 );
            width: 1400px;
            height: 600px;
            position: relative;
            top: -100px;
            padding: 30px;
        }
        #modal .title {
            padding-left: 10px;
            display: inline;
            text-shadow: 1px 1px 2px gray;
            font-size:30px;
            color: white;
        }
        #modal .title h2 {
            display: inline;
            text-decoration: underline;
        }
        #modal .close-area {
            display: inline;
            float: right;
            padding: 10px 15px 10px 15px;
            cursor: pointer;
            text-shadow: 1px 1px 2px gray;
            color: white;
            font-size:30px;
            border:1px solid white;
            text-align: center;
        }
        
        #modal .content {
            margin-top: 20px;
            padding: 0px 10px;
            text-shadow: 1px 1px 2px gray;
            
        }
        #modal .content td{
        	color: white;
            font-size: 20px;
            padding: 10px;
            border: 1px solid white;
            text-align: center;
        }
    </style>
</head>
<body>
	<input type="hidden" id="executeAjax">
	<!-- header -->
	<jsp:include page="../header.jsp"/>
	<!-- //header -->
    <div class="s21_tour_list area">
        <!-- 순 -->
        <div class="s21_tour_sun" style="margin-top:30px">
        	<div style="float:left">
		    	<select name="category" id="category" style="text-align:center;height:25px;width:60px">
		    		<option value="h_name">숙소명</option>
		    		<option value="add">주소명</option>
		    	</select>
		    	<input name="field" id="field" type="text">
		    	<button type="button" style="border:1px solid black;background-color:#EAEAEA;height:25px;width:40px" id="search">검색</button>
	    		<span style="display:inline-block;width:100px"></span>
	    		<a style="border:solid;background-color: green;font-size: 13px; color:white; padding:7px" type="button" href="addHotelM">숙소 추가</a>
	    		<a style="border:solid;background-color: green;font-size: 13px; color:white; padding:7px" type="button" id="modalBtn">숙소 신청 확인</a>
	    	</div>
            <!-- 검색란 체크시 출력-->
            <a id="recent" class="s21_sun_checked" onclick="listOrder('recent')">최신순</a>
            <a id="review" class="" onclick="listOrder('review')">리뷰순</a>
        </div>
        <!--// 순 -->
        <!-- 리스트 시작 -->
        <div class="s21_tour_list_box">
		</div>
        <!--// 리스트 끝 -->
        <div id="modal" class="modal-overlay">
	        <div class="modal-window">
	            <div class="title">
	                <h2>숙소 신청 리스트</h2>
	            </div>
	            <div class="close-area">X</div>
	            <div class="content">
	            	<table>
	            		<tr>
	            			<td>신청번호</td>
	            			<td>신청자</td>
	            			<td>숙소명</td>
	            			<td>주소</td>
	            			<td>전화번호</td>
	            			<td>홈페이지</td>
	            			<td>신청일</td>
	            			<td>신청결과</td>
	            		</tr>
	            		<c:if test="${empty a_list}">
	            			<tr>
	            				<td colspan="8" height="300px" width="1400px" style="border:none">신청 내역이 없습니다.</td>
	            			</tr>
	            		</c:if>
						<c:forEach items="${a_list}" var="a">
	            		<tr>
	            			<td>${a.a_id}</td>
	            			<td>${a.m_id}</td>
	            			<td>${a.h_name}</td>
	            			<td>${a.h_add1} ${a.h_add2} ${a.h_add3}</td>
	            			<td>${a.h_phone}</td>
	            			<td><a style="color: white" target="_blank" href="https://${a.h_web}">${a.h_web}</a></td>
	            			<td>${a.a_regiDate}</td>
	            			<c:if test="${a.a_state eq '신청대기'}">
		            			<td><a style="color: white" name="approveBtn" onclick="return validate(this);" href="applyHotelM?a_id=${a.a_id}&a_state=접수완료">접수</a> | <a style="color: white" name="returnBtn" onclick="return validate(this);" href="applyHotelM?a_id=${a.a_id}&a_state=신청반려">반려</a></td>
	            			</c:if>
	            			<c:if test="${a.a_state ne '신청대기'}">
		            			<td>${a.a_state}</td>
	            			</c:if>
	            		</tr>
						</c:forEach>
	            	</table>
	            </div>
	        </div>
	    </div>
        <!-- paging s -->
        <div class="s21_page">
            <div class="s21_pagination jquery-paging" style="margin-left: 410px;" id="PageNav">
            </div>
        </div>
        <!--// paging e -->
    </div>
	<!-- footer -->
    <jsp:include page="../footer.jsp"/>
	<!-- //footer -->
</body>
</html>