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
                        <a onclick="Store.clear(); top.location.href='http://hatdog.co.kr/pc_hatdog/';">
                            <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/common/logo.png" alt="하트독">
                        </a>
                    </h1>
                    <div class="s21_w1422 pr">
                        <a onclick="Store.clear(); top.location.href='http://hatdog.co.kr/pc_hatdog/';"></a>
                        <div class="s_search">
                            <input type="text" class="SearchInput" name="h_sch_text" id="h_sch_text" placeholder="어디에서 무엇을 하고 싶으세요?" title="">
                            <span class="j21_btn_search" onclick="Store.clear();go_arinfo();"><a><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/common/ico_search.png" alt="검색"></a></span>
                        </div>
                    </div>
                </div>
            </div>
            <nav id="gnb">
                <h2 class="blind">주메뉴</h2>
                <div class="gnb-wrapper area">
                    <ul class="clearfix">
                        <li class="" onclick="Store.clear()"><a onclick="top.location.href='http://hatdog.co.kr/pc_hatdog/?m1Code=ar_info&amp;m2Code=ar_info';"><span>전체보기</span></a></li>
                        <li class="" onclick="Store.clear()"><a onclick="top.location.href='http://hatdog.co.kr/pc_hatdog/?m1Code=tip&amp;m2Code=tip';"><span>숙소</span></a></li>
                        <li class="" onclick="Store.clear()"><a onclick="top.location.href='http://hatdog.co.kr/pc_hatdog/?m1Code=cmm&amp;m2Code=cmm';"><span>후기게시판</span></a></li>
                    </ul>
                </div>
            </nav>
        </div>
    </header>

    <div class="sContainer">

        <!-- sub m top -->
        <div class="s21_album_m_top pr">
            <div class="s21_top_tbox">
                <div class="s21_top_tbox_left">
                    <h3 class=""><span>여행앨범</span></h3>
                    <p class="s21_h3_line_l"></p>
                    <p class="s21_h3_text_l">사랑스런 반려견과 함께한 소중한 추억을 간직하는 현명한 방법!<br>하트독 여행앨범과 스마트한 여행되세요!</p>
                    <p class="s21_top_link">
                        <a href="javascript:$('html, body').css('overflow','hidden');$('#myModal').show();" class="code_view s21Btn1">
                             <span class="lb">여행앨범 가이드</span>
                             <i class="ico-arr2"></i>
                        </a>						
                    </p>
                </div>
                <div class="s21_top_tbox_right">
                    <div class="s21_top_cal" onclick="Store.clear()">
<a onclick="go_link('${path}wirteReview')">
    <div class="s21_top_right_box">
        <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/album/top_ico1.png" alt=""></p>
        <dl>
            <dt>앨범등록</dt>
            <dd><span>+</span></dd>
        </dl>
    </div>
</a>
<a onclick="go_link('?m1Code=album&amp;m2Code=album_my')">
    <div class="s21_top_right_box">
        <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/album/top_ico2.png" alt=""></p>
        <dl>
            <dt>마이앨범</dt>
            <dd><span>+</span></dd>
        </dl>
    </div>
</a>
</div>

<script>
function go_link(link){ location.href=link; } 

</script>					</div>
            </div>
        </div>
        <!--// sub m top -->


        <!-- 상단리스트 -->
        <div class="s21_album_top area">
            
        <div class="s21_album_list area">
            <!-- 순 -->
            <div class="s21_tour_sun">
                <!-- 검색란 체크시 출력 -->
                <h3 class="span_h3"><span class="span_h3_ttl">공개앨범</span></h3>
            </div>
            <!--// 순 -->

            <!-- 리스트 시작 -->
            <form id="frmSetData" name="frmSetData" method="POST" onsubmit="return false;">
                <input type="hidden" id="m2Code" name="m2Code" value="album">
                <input type="hidden" id="mode" name="mode" value="mainlist">
                <input type="hidden" id="page" name="page" value="0">
            </form>
            <div class="s21_tour_list_box">
            
            <c:forEach var="ReviewPage" items="${list}">
            
            <a onclick="Store.set('ab_m_scroll',document.documentElement.scrollTop)" href="${path}detailReviewPage?mb_id=${ReviewPage.mb_id}">
                            <div class="s21_tour_list_conts pr ">
                                <dl class="s21_tour_list_photo">
                                    <dt>
                                    	<img src="resources/${ReviewPage.mb_img}" alt="">
                                   		<%-- ${listReview.img} 첫번째 이미지--%>
                                    </dt>
                                   <!--  <dd>
                                    	<img src="resources/${ReviewPage.mb_img}" alt="">
                                   		<%-- ${listReview.img} 두번째 이미지--%>
                                    </dd>
                                    <dd>
                                    	<img src="resources/${ReviewPage.mb_img}" alt="">
                                    	<%-- ${listReview.img} 세번째 이미지--%>
                                    </dd> -->
                                </dl>
                                <div class="s21_tour_list_tbox">
                                    <h4 class="s21_best_tip">
                                    	<a href="${path}detailReviewPage?mb_id=${ReviewPage.mb_id}">${ReviewPage.mb_title}</a>
                                    </h4>
                                    <div class="s21_album_desc" onclick="">
                                      
                                       <div class="s21_album_desc_bx pr">
                                            <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/common/login_logoutimg.jpg/hungryapp/resize/200" alt=""></p>
                                            <dl>
                                                <dt>${ReviewPage.mb_title}</dt>
                                                <dd>${ReviewPage.mb_regidate}</dd>
                                            </dl>
                                        </div>

                               </div>
                            </div>
                            </div>
                        </a>
                        </c:forEach>
                        </div>
            <!--// 리스트 끝 -->

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
								<span> <a href="ReviewPage?num=${endPageNum + 1}">다음</a>
									
								</span>
							</c:if>
						</div>

					</div>
            </div> 
	</div>
            <!--// paging e -->
</div>
        <!--// 하단 리스트 -->
</div>




    
    <!-- footer -->
    <footer style="margin-bottom: auto;">
        <div id="footer">
            <div class="footerBottom area">
                <div class="footerBottom_left">
                    <p>(주)여름엔 크림빵과 코코아 주소 : 서울 서초구 강남대로27길 15-5 3층 (케이티전주지사3층) 대표이사 : 여름이 | 사업자등록번호: 123-45-78987<br>
                        이메일 : summer@summer.com
                    </p>

                    <address>Copyright STYLE II. All rights reserved.</address>
                </div>
                <ul class="footerBottom_right">
                    <li><a href="http://hatdog.co.kr/pc_hatdog/?m1Code=etc&m2Code=policy" target="_top">이용약관</a></li>
                    <li><a href="http://hatdog.co.kr/pc_hatdog/?m1Code=etc&m2Code=policy2" target="_top">개인정보처리방침</a></li>
                </ul>
            </div>
        </div>
    </footer>
    <!-- footer -->
</body>
</html>