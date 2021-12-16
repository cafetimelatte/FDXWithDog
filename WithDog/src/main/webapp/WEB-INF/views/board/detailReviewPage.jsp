<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<link rel="stylesheet" href="resources/css/sub_j.css">
<link rel="stylesheet" href="resources/css/sub_h.css">
<link rel="stylesheet" href="resources/css/sub.css">
<link rel="stylesheet" href="resources/css/default.css">
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/css/layout.css">
<link rel="stylesheet" href="resources/css/shot.css">
<link rel="stylesheet" href="resources/css/swiper-bundle.min.css">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="resources/js/jquery.js"></script>
<script src="resources/js/swiper-bundle.min.js"></script>
<title>DetailReviewPage</title>
</head>
<body>
	<!-- header-->
	<jsp:include page="../header.jsp" />
	<!-- //header -->
	
	<div class="sContainer">
		<div class="h21_community_s_top pr">
			<div class="h21_top_cbox pr area">
				<h3 class="">위드독
					<span> 여행후기</span>
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
	
		<!-- 커뮤니티 글보기 -->
		<div class="h21_community pr area">
			<div class="h21_com_btn_prev">
				<a href="${path}ReviewPage?num=1">
					<img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/community/btn_prev.png" alt="뒤로">
				</a>
			</div>
			<div class="h21_width800px">
				<div class="h21_community_view_stop">
					<div class="c_info pr">
						<span class="com_division">여행후기 
							<span class="dot_div dot_pink"> </span>
						</span> 
						<span class="desc"> 
							<span class="thmb_img"> 
								<img src="http://appdata.hungryapp.co.kr/images/hatdog/img/common/login_logoutimg.jpg" alt="프로필이미지">
							</span> 
							<span class="d_name"> 
								<span class="d_level"> </span>
								${detail.m_nick}
							</span> 
							<span class="d_date">ㅣ ${detail.mb_regidate}</span> 
							<span class="d_hit">ㅣ 조회 
								<c:out value="${detail.mb_hit}" />
							</span>
						</span>
					</div>
				</div>
				<div class="h21_community_view">
					<h4>${detail.mb_title}</h4>
					<img src="${detail.mb_img}" /> 
					<img src="resources${detail.mb_img}" alt="">
					<div>${detail.mb_content}</div>
				</div>


				<div class="h21_community_btn pr">
					<span class="button_like_off" id="like_cnt_st10386" onclick="bbs_like(10386)"> 
						<a> 
							<img id="icon_like10386" src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/community/icon_like_off.png" alt="좋아요">
						</a>
					</span> 
					<span class="button_list"> 
						<a href="${path}ReviewPage?num=1">목록</a>
					</span>

					<a href="${path}update?mb_id=${detail.mb_id}" role="button">수정</a>
					<a href="${path}delete?mb_id=${detail.mb_id}" role="button">삭제</a>
						
					<span class="button_report" style="margin: auto;"> 
						<a href="${path}CslistPage">신고</a>
					</span>
				</div>
			</div>
			
			<!-- 댓글 -->
			<div class="s21_event_review_box area900">
				<div class="s21_event_review_tit pr">
					<h5>댓글</h5>
				</div>

				<form name="comment-form" action="replywrite" method="post" autocomplete="off">
					<div class="h21_event_write">
						<input type="hidden" name="mb_id" value="${detail.mb_id}">
						<input type="hidden" name="m_id" value="${detail.m_id}">
						<textarea id="mbre_content" name="mbre_content" style="" class="s21_je_textarea" placeholder="댓글을 입력해주세요"></textarea>
						<span class="s21_je_form_btn">
							<div class="s21_je_in_btn">
								<span class="s21_je_btn_register" data-mode="cmtin" style="margin-right: 5px">
									<button type="submit" class="replyWriteBtn">등록</button>
								</span>
							</div>
						</span>
					</div>
				</form>
					<c:forEach items="${reply}" var="reply">
						<div class="s21_review_list">
							<div class="s21_review_list db_none  pr">
								<p>
									<img src="http://appdata.hungryapp.co.kr/images/hatdog/img/common/login_logoutimg.jpg/hungryapp/resize/200x200" alt="">
								</p>
								<dl>
									<dt>
										${reply.m_id}  ${reply.mbre_id}
										<input type="hidden" value="${reply.mbre_id}" name="mbre_id" class="mbre_id">
										 <span>${reply.mbre_regidate}</span>
									</dt>
									<dd>
										<span class="r_contents13158">
											<p>${reply.mbre_content}</p>
										</span>
									</dd>

								</dl>
								<div class="s21_review_ico pa">
									<button type="button" name="btn_reply_Update"
										class="btn_reply_Update">수정</button>
									<button type="button" name="btn_reply_Delete" 
										class="btn_reply_Delete">삭제</button>
								</div>
							</div>
						</div>
					</c:forEach>
			</div>
			<!-- paging s -->
			<div class="s21_page dt_none">
				<div class="s21_pagination jquery-paging" id="PageNav">
					<a class=" active">1</a>
				</div>
			</div>
			<!--// paging e -->
			
			<script>
			 $(function(){
			    //댓글 수정 버튼
			    $(".btn_reply_Update").click(function(){
			  	
			  	var sp = this.closest('.s21_review_list').querySelector('.r_contents13158');
			  	var mbre_id = this.closest('.s21_review_list').querySelector(".mbre_id").value;
			  	var ip = document.createElement('input');
			  	var par = sp.parentElement;
			  	par.insertBefore(ip,sp);
			  	var pt = sp.children[0].textContent;
			  	ip.append(sp.children[0]);
			  	ip.value = pt;
			  	sp.remove();
			  	this.textContent = "완료";
			  	ip.name = "reply_reply";
			  	
			  	this.addEventListener("click", function(){
			  			//alert(ip.value);
			  			var mbre_content = ip.value;
			  			var r_id = mbre_id;
					    $.ajax({
							url: 'ReplyUpdate',
							type: 'post',
							data: {'mbre_content' : mbre_content, 'mbre_id' : r_id},
							success: function(){
								alert("수정이 완료되었습니다.");
								location.replace(location.href);
							}
						});//end ajax 
			  	},false)  
			  });
			 });
			 
			     $(function(){
				    //댓글 삭제 버튼
				    $(".btn_reply_Delete").click(function(){
				    	
				    var mbre_id = this.closest('.s21_review_list').querySelector(".mbre_id").value;
				    console.log(mbre_id);
					
					this.addEventListener("click", function(){
					    $.ajax({
							url: 'ReplyDelete',
							type: 'post',
							data: {'mbre_id' : mbre_id},
							success: function(){
								alert("삭제가 완료되었습니다.");
								location.replace(location.href);
							}
						});//end ajax 
			  	},false) 	
			 });  
		    }); 
			</script>
		</div>
	</div>
	
	<!-- footer -->
    <jsp:include page="../footer.jsp"/>
	<!-- //footer -->
</body>
</html>