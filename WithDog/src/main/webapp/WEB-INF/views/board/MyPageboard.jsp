<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<<<<<<< HEAD
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update</title>
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
<title>Insert title here</title>
=======
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
>>>>>>> refs/remotes/origin/main
</head>
<body>
<<<<<<< HEAD
	<!-- header-->
	<jsp:include page="../header.jsp"/>
	<!-- //header -->
=======
   <!-- header-->
	<jsp:include page="../header.jsp"/>
	<!-- //header -->

>>>>>>> refs/remotes/origin/main
	   <!-- container -->
    <div id="Container">
        <div class="sContainer">
            <!-- sub m top -->
            <div class="s21_tour_de_top">
                <h3 class="area" style="height:60px">????????? ?????? ??????</h3>
                <div class="s21_detail_box area pr">
                    <div class="s21_detail_tbox" style="width:100%; float:none">
                        <ul class="s21_detail_twrap_mod">
                        <!-- ?????? ?????? ?????? s -->
							<li>
								<dl>
									<dt style="float:left; text-align:center;width:8%;padding:0 3px 0 3px">???????????????</dt>
									<dt style="text-align:center;width:13%;padding:0 3px 0 75px">??????</dt>
									<dt style="text-align:center;width:8%;padding:0 3px 0 75px">??????</dt>
									<dt style="text-align:center;width:8%;padding:0 3px 0 75px">?????????</dt>
									<dt style="text-align:center;width:8%;padding:0 3px 0 75px">?????????</dt>
									<dt style="text-align:center;width:8%;padding:0 3px 0 75px">?????????</dt>
									<dt style="float:right ;text-align:center;width:8%;padding:0 3px 0 75px">??????</dt>
								</dl>
							</li>
							<c:forEach var="b" items="${boardList}">	
									<li class="reserved">
										<dl>
											<dd style="float:left; text-align:center;width:8%;padding:0 3px 0 3px">${b.mb_id}</dd>
											<dd style="text-align:center;width:13%;padding:0 3px 0 75px">${b.mb_title}</dd>
											<dd style="text-align:center;width:8%;padding:0 3px 0 75px">${b.mb_content}</dd>
											<dd style="text-align:center;width:8%;padding:0 3px 0 75px">${b.mb_hit}</dd>
											<dd style="text-align:center;width:8%;padding:0 3px 0 75px">${b.mb_regidate}</dd>
											<dd style="text-align:center;width:8%;padding:0 3px 0 75px">${h_name}</dd>
											<dd style="float:right; text-align:center;width:8%;padding:0 3px 0 3px"><a href="update?mb_id=${b.mb_id}&h_id=${b.h_id}">??????</a> | <a name="delBtn" onclick="if(validate(this)){location.href='delete?mb_id=${b.mb_id}'}">??????</a></dd>
										</dl>
									</li>
						</c:forEach>
						<c:if test="${empty boardList}">
							<li>
								<h1 style="margin:40px 0 40px 0;">????????? ?????? ????????????</h1>
							</li>
						</c:if>
						<input class="bbtn" type="button" value="????????????" onclick="location.href='myPage';">
                        <!-- ?????? ?????? ?????? e -->
						</ul>
					</div>
				</div>
			</div>
            <!--// sub m top -->
		</div>
	</div>
    <!-- //container -->
<<<<<<< HEAD
    <!-- footer -->
	<jsp:include page="../footer.jsp"/>
	<!-- //footer -->
=======
    
<!-- footer -->
<jsp:include page="../footer.jsp"/>
<!-- //footer -->
    
>>>>>>> refs/remotes/origin/main
</body>
</html>