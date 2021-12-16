<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Write</title>
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
    <script type="text/javascript">
    $(window).on('load', function(){
	    var cancelBtn = document.getElementsByClassName('h21_btn_cancel')[0];
	    var submitBtn = document.getElementsByClassName('h21_btn_write')[0];
	    submitBtn.style.cursor = "pointer";
	    cancelBtn.style.cursor = "pointer";
    	$(cancelBtn).click(function(){
    		location.href="ReviewPage?num=1";
    	})
    	$(submitBtn).click(function(){
    		document.writeReview.submit();
    	})
    })
    </script>
    <style type="text/css">
    	.h21_write_input select{
    		width: 78%;float: left;
			overflow: hidden;
			margin-left: 1%;
			padding: 13px 10px 13px 10px;
			font-size: 16px;
			font-weight: 300;
			border: none;
    	}
    </style>
</head>
<body>
	<!-- header-->
	<jsp:include page="../header.jsp"/>
	<!-- //header -->
	
	<div class="h21_community_s_top pr">
		<div class="h21_top_cbox pr area">
			<h3 class="">
				위드독<span> 여행후기</span>
			</h3>
			<p class="h21_h3_line_c"></p>
			<p class="h21_h3_text_c">위드독에서 우리 반려견에 대한 이야기를 공유해보세요.</p>
		</div>
	</div>
	<div class="s21_sm_search_box area pr">
		<div class="h21_com_sm_tab pa">
			<ul>
				<li id="taball">
					<a onclick="go_link('ReviewPage?num=1')">전체목록</a>
				</li>
				<li id="tabbest">
					<a onclick="storeDel()">베스트글</a>
				</li>
				<li id="tabreview">
					<a onclick="go_link('ReviewPage?num=1')">여행후기</a>
				</li>
			</ul>
		</div>
	</div>
	<script>
		function go_link(link){ location.href=link; } 
	</script>
	<div class="h21_community pr area">
		<div class="h21_com_btn_prev">
			<a href="${path}ReviewPage?num=1">
				<img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/community/btn_prev.png" alt="뒤로">
			</a>
		</div>
		<form name="writeReview" method="POST" action="${path}writeReviewpro" enctype="multipart/form-data">
			<div class="h21_width800px">
				<div class="h21_community_view_stop">
					<div class="c_info pr">
						<span class="com_division">
							여행후기
						</span>
					</div>
				</div>
				<div class="h21_community_view">
					<span class = "h21_write_input last_bottom_line">
						<h5>제목</h5>
						<input type="text" name="mb_title" id="mb_title" placeholder="제목을 입력해주세요." />
					</span>
					<span class = "h21_write_input last_bottom_line">
						<h5>호텔번호</h5>
						<select name="h_id">
							<option value="" disabled selected>호텔을 선택해주세요.</option>
							<c:forEach items="${bookingList}" var="b_info">
								<option value="${b_info.h_id}">${b_info.b_name}</option>
							</c:forEach>
						</select>
						<input type="hidden" name="m_id" value="${bookingList[0].m_id}">
					</span>
					<span class="h21_write_textarea">
						<textarea id="mb_content" name="mb_content" style="" class="s21_je_textarea" placeholder="내용을 입력해주세요"></textarea>
					</span>
					<div class="inputArea">
						<label for="mb_img">이미지</label> 
						<input type="file" id="mb_img" name="file" />
						<div class="select_img">
							<img src="" />
						</div>
					</div>
					<script>
						$("#mb_img").change(function() {
							if (this.files && this.files[0]) {
								var reader = new FileReader;
								reader.onload = function(data) {
									$(".select_img img").attr("src", data.target.result).width(500);
								}
								reader.readAsDataURL(this.files[0]);
							}
						});
						
					</script>
					<div class="h21_write_btn">
						<div class="h21_btn_cancel" style="text-align: center;"><a>취소</a></div>
						<div class="h21_btn_write" style="text-align: center;"><a>등록</a></div>
					</div>
				</div>
			</div>
		</form>
	</div>
	<!-- footer -->
	<jsp:include page="../footer.jsp"/>
	<!-- //footer -->
</body>
</html>