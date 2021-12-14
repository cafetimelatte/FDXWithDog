<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="js/criteria.js"></script>

    <title>Hotel-List</title>
</head>
<body>
	<input type="hidden" id="executeAjax">
	<input type="hidden" name="h_field" value="${h_field}" id="h_field">
	<!-- header -->
	<jsp:include page="../header.jsp"/>
	<!-- //header -->
    <div class="s21_tour_list area">
        <!-- 순 -->
        <div class="s21_tour_sun" style="margin-top:30px">
            <!-- 검색란 체크시 출력-->
            <a id="recent" class="s21_sun_checked" onclick="listOrder('recent')">최신순</a>
            <a id="review" class="" onclick="listOrder('review')">리뷰순</a>
        </div>
        <!--// 순 -->
        <!-- 리스트 시작 -->
        <div class="s21_tour_list_box">
        </div>
        <!--// 리스트 끝 -->

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