<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
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
    
    <script type="text/javascript">
	$(function(){
		$("#delBtn").click(function(){
			var delReview = document.getElementsByClassName("delReview")[0];
			var selectDel = document.getElementsByClassName("selectDel");
			for(var i = 0; i < selectDel.length; i++){
				if(selectDel[i].checked){
					var addDel = document.createElement('input');
					delReview.append(addDel);
					addDel.type="hidden";
					addDel.value = selectDel[i].value;
					addDel.name = "mb_id";
				}
			}
			if(delReview.childElementCount == 0){
				alert("앨범을 선택해주세요.");
				return false;
			}
			if(!confirm("선택한 앨범을 삭제하시겠습니까?")){
				while (delReview.firstChild) {
					delReview.removeChild(delReview.firstChild);
		        }
				return false;
			}
			document.deleteReview.submit();
	});  
}); 
    </script>
    
    <style>
    	#search select{
    		border:1px solid black;
    		padding:9px;
    	}
    	#search input{
 	    	border:1px solid black;
 	    	padding-left:5px;
    		height:30px;
    	}
    	#search button{
    		background-color:white;
 	    	border:1px solid black;
 	    	padding:8px;
    	}
    	
    </style>
</head>
<body>
   <!-- header-->
	<jsp:include page="../header.jsp"/>
	<!-- //header -->

    <div class="sContainer">
        <div class="s21_album_m_top pr">
            <div class="s21_top_tbox">
                <div class="s21_top_tbox_left">
                    <h3 class="">
                    	<span>여행앨범 관리</span>
                    </h3>
                    <p class="s21_h3_line_l"></p>
                    <p class="s21_h3_text_l">사랑스런 반려견과 함께한 소중한 추억을 간직하는 현명한 방법!<br>위드독 여행앨범과 스마트한 여행되세요!</p>
                </div>
	            <div class="s21_top_tbox_right">
	               	<form id="search" name="search" action="ReviewPageM" method="post" style="margin-top: 50px">
		           		<select name="c">
		           			<option ${category == 'm_id'?'selected':''} value="m_id">회원아이디</option>
		           			<option ${category == 'm_nick'?'selected':''} value="m_nick">회원닉네임</option>
		           			<option ${category == 'mb_id'?'selected':''} value="mb_id">게시글번호</option>
		           			<option ${category == 'mb_title'?'selected':''} value="mb_title">게시글제목</option>
		           			<option ${category == 'mb_content'?'selected':''} value="mb_content">게시글내용</option>
		           		</select>
		           		<input type="text" name="f" value="${field}">
		           		<button type="button" onclick="return checkReviewSearch(this);">검색</button>
	               	</form>
				</div>
        	</div>
        </div>

        <!-- 상단리스트 -->
        <div class="s21_album_top area">
        	<div class="s21_album_list area">
            	<div class="s21_tour_sun">
                	<!-- 검색란 체크시 출력 -->
                		<h3 class="span_h3">
                			<span class="span_h3_ttl">공개앨범</span>
	                			<form action="deleteReviewM" name="deleteReview" method="post">
		                			<button id="delBtn" type="button" style="float:right;height:40px;width:80px;background-color:red;font-size:20px;color:white;">
		                				삭제</button>
		           					<div class="delReview"></div>
	                			</form>
                		</h3>
            	</div>
          
	            <div class="s21_tour_list_box">
		            <c:if test="${empty list}">
						<li>
							<h1 style="margin:40px 0 40px 0;">등록된 앨범이 없습니다.</h1>
						</li>
					</c:if>
	            	<c:forEach var="ReviewPage" items="${list}" varStatus="st">
	            		<a href="${path}detailReviewPageM?mb_id=${ReviewPage.mb_id}">
	                    	<div class=${st.count % 3 == 0?"'s21_tour_list_conts pr mgr_0'":"'s21_tour_list_conts pr'"} >
	                        	<dl class="s21_tour_list_photo">
	                            	<dt>
	                                	<img src="${ReviewPage.mb_img}" alt="">
	                                </dt>
	                                <dd>선택</dd>
	                                <dd>
	                                	<input type="checkbox" class="selectDel" name="mb_id" value="${ReviewPage.mb_id}" style="height:25px;width:25px">
	                                </dd>
	                        	</dl>
								<div class="s21_tour_list_tbox">
									<h4 class="s21_best_tip">${ReviewPage.mb_title}</h4>
									<div class="s21_album_desc" onclick="">
										<div class="s21_album_desc_bx pr">
											<p>
												<img src="http://appdata.hungryapp.co.kr/images/hatdog/img/common/login_logoutimg.jpg/hungryapp/resize/200" alt="">
											</p>
											<dl>
												<dt>${ReviewPage.m_nick}</dt>
												<dd>${ReviewPage.mb_regidate}</dd>
											</dl>
										</div>
									</div>
								</div>
							</div>
	                    </a>
	            	</c:forEach>
	            </div>
	
	            <!-- paging s -->
	            <div class="s21_page">
	                <div class="s21_pagination jquery-paging" id="PageNav">
							<div>
								<c:if test="${prev}">
									<span> <a href="ReviewPageM?num=${startPageNum - 1}&f=${field}&c=${category}">이전</a>
										
									</span>
								</c:if>
	
								<c:forEach begin="${startPageNum}" end="${endPageNum}" var="num">
									<span> <c:if test="${select != num}">
											<a href="ReviewPageM?num=${num}&f=${field}&c=${category}">${num}</a>
										</c:if> <c:if test="${select == num}">
											<a><b>${num}</b></a>
										</c:if>
									</span>
								</c:forEach>
	
								<c:if test="${next}">
									<span> 
										<a href="ReviewPageM?num=${endPageNum + 1}&f=${field}&c=${category}">다음</a>
									</span>
								</c:if>
							</div>
	                  </div>
	            </div> 
	            <!--// paging e -->
          </div>
	 </div>
</div>

<!-- footer -->
<jsp:include page="../footer.jsp"/>
<!-- //footer -->

</body>
</html>