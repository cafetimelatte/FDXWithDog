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
                    	<span>여행앨범</span>
                    </h3>
                    <p class="s21_h3_line_l"></p>
                    <p class="s21_h3_text_l">사랑스런 반려견과 함께한 소중한 추억을 간직하는 현명한 방법!<br>위드독 여행앨범과 스마트한 여행되세요!</p>
                    <p class="s21_top_link">
                        <a href="javascript:$('html, body').css('overflow','hidden');$('#myModal').show();" class="code_view s21Btn1">
                             <span class="lb">여행앨범 가이드</span>
                             <i class="ico-arr2"></i>
                        </a>						
                    </p>
                </div>
	            <div class="s21_top_tbox_right">
	                <div class="s21_top_cal" onclick="Store.clear()">
						<a onclick="go_link('writeReview')">
	   						<div class="s21_top_right_box">
	       						<p>
	       							<img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/album/top_ico1.png" alt="">
	       						</p>
	       						<dl>
	            					<dt>앨범등록</dt>
	            					<dd><span>+</span></dd>
	        					</dl>
	    					</div>
						</a>
						<a onclick="go_link('?m1Code=album&amp;m2Code=album_my')">
	    					<div class="s21_top_right_box">
	        					<p>
	        						<img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/album/top_ico2.png" alt="">
	        					</p>
	        					<dl>
	            					<dt>마이앨범</dt>
	            					<dd><span>+</span></dd>
	        					</dl>
	    					</div>
						</a>
					</div>
					<script>
					function go_link(link){ location.href=link; } 
					</script>
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
                		</h3>
            	</div>
          
	            <div class="s21_tour_list_box">
	            	<c:forEach var="ReviewPage" items="${list}">
	            		<a onclick="Store.set('ab_m_scroll',document.documentElement.scrollTop)" href="${path}detailReviewPage?mb_id=${ReviewPage.mb_id}">
	                    	<div class="s21_tour_list_conts pr ">
	                        	<dl class="s21_tour_list_photo">
	                            	<dt>
	                                	<img src="resources/${ReviewPage.mb_img}" alt="">
	                                </dt>
	                        	</dl>
	                                <div class="s21_tour_list_tbox">
	                                    <h4 class="s21_best_tip">
	                                    	<a href="${path}detailReviewPage?mb_id=${ReviewPage.mb_id}">${ReviewPage.mb_title}</a>
	                                    </h4>
	                                    <div class="s21_album_desc" onclick="">
	                                        <div class="s21_album_desc_bx pr">
	                                            <p>
	                                            	<img src="http://appdata.hungryapp.co.kr/images/hatdog/img/common/login_logoutimg.jpg/hungryapp/resize/200" alt="">
	                                            </p>
	                                            <dl>
	                                                <dt>${ReviewPage.m_id}</dt>
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
									<span> <a href="ReviewPage?num=${startPageNum - 1}">이전</a>
										
									</span>
								</c:if>
	
								<c:forEach begin="${startPageNum}" end="${endPageNum}" var="num">
									<span> <c:if test="${select != num}">
											<a href="ReviewPage?num=${num}">${num}</a>
										</c:if> <c:if test="${select == num}">
											<a><b>${num}</b></a>
										</c:if>
									</span>
								</c:forEach>
	
								<c:if test="${next}">
									<span> 
										<a href="ReviewPage?num=${endPageNum + 1}">다음</a>
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