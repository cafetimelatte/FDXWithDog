<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <title>Document</title>
    
    <style>
    	.bbtn{
    		height: 40px;
    		width:200px;
    		margin: 50px;
    		font-size: 15px;
    	}
    	.applyInput{
    		height:25px;
    		width:203px;
    		padding-left:5px;
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
                <h3 class="area" style="height:60px">숙소 등록 신청</h3>
                <div class="s21_detail_box area pr">

                    <div class="s21_detail_tbox" style="width:100%; float:none">
                        <!-- 예약 정보 입력 s -->
                        <ul class="s21_detail_twrap_mod">
                        	<form action="" method="">
                            <li>
                                <dl>
                                    <dt>숙소명</dt>
                                    <dd><input class="applyInput" type="text"></dd>
                                    <dt>전화번호</dt>
                                    <dd><input class="applyInput" type="text" placeholder="'-' 제외"></dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt>주소</dt>
                                    <dd><input class="applyInput" style="width:91px;margin-right:10px" type="text"><input class="applyInput" style="width:91px" type="text"></dd>
                                    <dt>홈페이지</dt>
                                    <dd><input class="applyInput" type="text" placeholder="example@google.com"></dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt>상세주소</dt>
                                    <dd>
                                    	<input class="applyInput" style="width:300px" type="text">
                                    </dd>
                                </dl>
                            </li>
                            	<input class="bbtn" type="button" value="신청하기" name="submit">
                            	<input class="bbtn" type="button" value="돌아가기" name="cancel" onclick="location.href='hotelList'">
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