<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	
	<link rel='shortcut icon'
		href='http://appdata.hungryapp.co.kr/images/hatdog/img/intro/00_hatdog_logo.ico'>
	<link rel="stylesheet" href="resources/css/sub_j.css">
	<link rel="stylesheet" href="resources/css/sub_h.css">
	<link rel="stylesheet" href="resources/css/sub.css">
	<link rel="stylesheet" href="resources/css/default.css">
	<link rel="stylesheet" href="resources/css/main.css">
	<link rel="stylesheet" href="resources/css/layout.css">
	<link rel="stylesheet" href="resources/css/shot.css">
	<link rel="stylesheet" href="resources/css/swiper-bundle.min.css">
	
	
	<script src="resources/js/jquery.js"></script>
	<script src="resources/js/swiper-bundle.min.js"></script>
	<title>DetailReviewPage</title>
</head>
<body>

	<!-- header-->
	<header id="header" class="pr">
	<div id="headerInnerWrap">
		<div id="headerTop">
			<div class="area">
				<p class="top_text">반려견과 함께 WithDog에 오신것을 환영 합니다.</p>
				<ul>
					<li class="line">|</li>
					<li class=""><a href="">로그인</a></li>
					<li class="line">|</li>
					<li class=""><a href="">마이페이지</a></li>
					<li class="line">|</li>
					<li class=""><a onclick="top.location.href=''">고객센터</a></li>
				</ul>
			</div>
		</div>
		<div id="headerInner" class="clearfix">
			<div class="area">
				<h1 class="logo">
					<a
						onclick="Store.clear(); top.location.href='http://hatdog.co.kr/pc_hatdog/';">
						<img
						src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/common/logo.png"
						alt="하트독">
					</a>
				</h1>
				<div class="s21_w1422 pr">
					<a
						onclick="Store.clear(); top.location.href='http://hatdog.co.kr/pc_hatdog/';"></a>
					<div class="s_search">
						<input type="text" class="SearchInput" name="h_sch_text"
							id="h_sch_text" placeholder="어디에서 무엇을 하고 싶으세요?" title="">
						<span class="j21_btn_search" onclick="Store.clear();go_arinfo();"><a><img
								src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/common/ico_search.png"
								alt="검색"></a></span>
					</div>
				</div>
			</div>
		</div>
		<nav id="gnb">
		<h2 class="blind">주메뉴</h2>
		<div class="gnb-wrapper area">
			<ul class="clearfix">
				<li class="" onclick="Store.clear()"><a
					onclick="top.location.href='http://hatdog.co.kr/pc_hatdog/?m1Code=ar_info&amp;m2Code=ar_info';"><span>전체보기</span></a></li>
				<li class="" onclick="Store.clear()"><a
					onclick="top.location.href='http://hatdog.co.kr/pc_hatdog/?m1Code=tip&amp;m2Code=tip';"><span>숙소</span></a></li>
				<li class="" onclick="Store.clear()"><a
					onclick="top.location.href='http://hatdog.co.kr/pc_hatdog/?m1Code=cmm&amp;m2Code=cmm';"><span>후기게시판</span></a></li>
			</ul>
		</div>
		</nav>
	</div>
	</header>

	<div class="sContainer">
		<!-- sub s top -->
		<!-- cmm.php, cmm_list.php 빼고 다 사용-->
		<div class="h21_community_s_top pr">
			<div class="h21_top_cbox pr area">
				<h3 class="">
					위드독<span> 여행후기</span>
				</h3>
				<p class="h21_h3_line_c"></p>
				<p class="h21_h3_text_c">위드독에서 우리 반려견에 대한 이야기를 공유해보세요.</p>
			</div>
		</div>
		<!--// sub m top -->

		<!-- sub com menu -->
		<div class="s21_sm_search_box area pr">
			<div class="h21_com_sm_tab pa">
				<ul>
					<li
						onclick="Store.set(&quot;bbs_bcode&quot;,&quot;all&quot;);location.href=&quot;?m1Code=cmm&amp;m2Code=cmm_list&quot;"
						id="taball"><a onclick="storeDel()">전체목록<span
							class="list_allnb">18415</span></a></li>
					<li
						onclick="Store.set(&quot;bbs_bcode&quot;,&quot;best&quot;);location.href=&quot;?m1Code=cmm&amp;m2Code=cmm_list&quot;"
						id="tabbest"><a onclick="storeDel()">베스트글<span
							class="list_allnb">100</span></a>
					<li
						onclick="Store.set(&quot;bbs_bcode&quot;,&quot;review&quot;);location.href=&quot;?m1Code=cmm&amp;m2Code=cmm_list&quot;"
						id="tabreview"><a onclick="storeDel()">여행후기<span
							class="list_allnb">106</span></a>
				</ul>
			</div>
		</div>
		<!-- 커뮤니티 글보기 -->
		<div class="h21_community pr area">
			<div class="h21_com_btn_prev">
				<a href="?m1Code=cmm&amp;m2Code=cmm_list"><img
					src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/community/btn_prev.png"
					alt="뒤로"></a>
			</div>
			<div class="h21_width800px">
				<div class="h21_community_view_stop">
					<div class="c_info pr">
						<span class="com_division">여행후기<span
							class="dot_div dot_pink"></span></span> <span class="desc"> <span
							class="thmb_img"><img
								src="http://appdata.hungryapp.co.kr/images/hatdog/img/common/login_logoutimg.jpg"
								alt="프로필이미지"></span> <span class="d_name"><span
								class="d_level"><!-- <img
									src="http://appdata.hungryapp.co.kr/images/hatdog/img/lv/lv6.png?ver=4"
									alt="프로필사진"> --></span>${detail.m_id}</span> <span class="d_date">ㅣ ${detail.mb_regidate}</span>
							<span class="d_hit">ㅣ 조회 <c:out value="${detail.mb_hit}" /></span>
						</span>
					</div>
				</div>
				<div class="h21_community_view">
					<h4>${detail.mb_title}</h4>
						<img src="${detail.mb_img}" />
						<img src="resources${detail.mb_img}" alt="">
					<div>
						${detail.mb_content}
					</div>
					<p></p>

				</div>
				
				<div>
					<a href="${path}update?mb_id=${detail.mb_id}" role="button">수정</a>
					<a href="${path}delete?mb_id=${detail.mb_id}" role="button">삭제</a>
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
					<span class="button_report"> 
						<a id="falsify">신고</a>
					</span>
				</div>
			</div>

			<div class="s21_event_review_box area900">
				<div class="s21_event_review_tit pr">
					<h5>
						댓글
					</h5>
				</div>
				
				<form name="comment-form" action="replywrite" method="post" autocomplete="off">
					<div class="h21_event_write">
						<input type="hidden" name="mb_id" value="${detail.mb_id}">
						<textarea id="mbre_content" name="mbre_content" style="" class="s21_je_textarea" placeholder="댓글을 입력해주세요"></textarea>
							<span class="s21_je_form_btn"> 
								<div class="s21_je_in_btn">
									<span class="s21_je_btn_register" data-mode="cmtin" style="margin-right: 5px">
										<button type="submit" class="replyWriteBtn">등록</button>
									</span>
								</div>
							</span>
					</div>
				<!-- </form> -->
				<c:forEach items="${reply}" var="reply">
				<div class="s21_review_list" id="s21_review_list">
					<div class="s21_review_list db_none  pr" id="r_idx_13158">
						<p>
							<img
								src="http://appdata.hungryapp.co.kr/images/hatdog/img/common/login_logoutimg.jpg/hungryapp/resize/200x200"
								alt="">
						</p>
						<dl>
							<dt>
								<%-- ${reply.m_id} --%>임시
								<span>${reply.mbre_regidate}</span>
							</dt>
							<dd>
								<span id="r_contents13158">
									<p>${reply.mbre_content}</p>
								</span>
							</dd>

						</dl>
						<div class="s21_review_ico pa">
							<a href="${path}ReplyReviewPage?mb_id=${ReviewPage.mb_id}">수정</a>
							<button type = "button" id = "btn_reply_Delete" >삭제</button>
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
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
			<script>
			/* $(function(){
			    //댓글 수정 버튼
			    $("#btn_reply_Update").click(function(){
			    var mbre_content = $('#mbre_content').val();
			    $.ajax({
					url: "ReplyUpdate",
					type: "POST",
					data: {"mbre_content":mbre_content},
					success: function(){
						alert('수정되었습니다');
						}
				});//end ajax
			  });
			    
			    $(function(){
				    //댓글 삭제 버튼
				    $("#btn_reply_Delete").click(function(){
				    var mbre_id = $('#mbre_id').val();
				    $.ajax({
						url: "ReplyDelete",
						type: "GET",
						data: {"mbre_id":mbre_id},
						success: function(){
							alert('삭제되었습니다');
							}
					});//end ajax
				  });
			    /* if(confirm("수정 하시겠습니까?")){ */
			        
			    //수정하는데 필요한 정보들, 댓글 번호, 글 내용, 작성자 아이디, 게시글 번호를 변수에 저장한다.
			       // var mbre_id = $("#mbre_id").val();
			        //var m_id = $("#m_id").val();
			        //var mb_id = $("#mb_id").val();
			        
			    //게시글 세부 페이지로 포워딩을 하기위해 페이지 관련 값들을 변수에 저장해서 컨트롤러로 보낸다.
			     /*    var curPage = $("#curPage").val();
			        var search_option = $("#search_option").val();
			        var keyword = $("#keyword").val();
			        
			        //페이지 관련 값들과 댓글 수정에 필요한 값들을 url로 전송한다.
			        document.form1.action="reply_update.do?mbre_id="+mbre_id+"&mbre_content="+encodeURI(mbre_content)+"&m_id="+m_id+"&mb_id="+mb_id+"&curPage="+curPage+"&search_option="+search_option+"&keyword="+keyword;
			        document.form1.submit();
			        
			        
			        alert("댓글이 수정되었습니다.") */
			                /* } */
			}); */
			</script>
		</div>
	</div>



	<!-- footer -->
	<footer style="margin-bottom: auto;">
	<div id="footer">
		<div class="footerBottom area">
			<div class="footerBottom_left">
				<p>
					(주)여름엔 크림빵과 코코아 주소 : 서울 서초구 강남대로27길 15-5 3층 (케이티전주지사3층) 대표이사 : 여름이
					| 사업자등록번호: 123-45-78987<br> 이메일 : summer@summer.com
				</p>

				<address>Copyright STYLE II. All rights reserved.</address>
			</div>
			<ul class="footerBottom_right">
				<li><a
					href="http://hatdog.co.kr/pc_hatdog/?m1Code=etc&m2Code=policy"
					target="_top">이용약관</a></li>
				<li><a
					href="http://hatdog.co.kr/pc_hatdog/?m1Code=etc&m2Code=policy2"
					target="_top">개인정보처리방침</a></li>
			</ul>
		</div>
	</div>
	</footer>
	<!-- footer -->

</body>
</html>