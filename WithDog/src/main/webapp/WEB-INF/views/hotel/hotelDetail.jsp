<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WithDog-HotelDetail</title>

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
    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="js/functions.js?ver=3"></script>
	<script type="text/javascript" src="js/jquery.fileupload.js"></script>
	<script type="text/javascript" src="js/jquery.paging.js"></script>
	
    <title>Document</title>
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
                <h3 class="area" style="height:60px">${h_detail.h_name} <span>${h_detail.h_info}</span>
                </h3>
                <div class="s21_detail_box area pr">
                    <div class="s21_detail_img swiper-container ">
                        <div class="swiper-wrapper">
                        	<c:forTokens var="h_i" items="${h_detail.h_img}" delims=",">
                            	<p class="swiper-slide"><img src="hotel/${h_detail.h_id}/h_img/${h_i}" alt="바코홈"></p>
                            </c:forTokens>
                        </div>
                    </div>
                    	
                    <!-- 배너 이동 조작 -->
                    <div class="s21_today_arrow pa" style="z-index:9">
                        <button type="button" class="button_stop" onclick="$(this).hide();$('.button_start').show();swiper_main.autoplay.stop();">정지</button>
                        <button type="button" class="button_start" onclick="$(this).hide();$('.button_stop').show();swiper_main.autoplay.start();">재생</button>
                        <p class="swiper-pagination4"><span class="f_orange">1</span><span class="op30">/</span><span>8</span></p>
                        <div><button type="button" class="button_prev">이전</button><button type="button" class="button_next">다음</button></div>
                    </div>
                    <!--// 배너 이동 조작 -->

                    <div class="s21_detail_tbox">
                        <!-- 우측 정보 s -->
                        <ul class="s21_detail_twrap">
                            <li>
                                <dl>
                                    <dt>주소</dt>
                                    <dd>${h_detail.h_add1} ${h_detail.h_add2} ${h_detail.h_add3} </dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt>연락처</dt>
                                    <dd>${h_detail.h_phone}</dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt>홈페이지</dt>
                                    <dd><a href="https://${h_detail.h_web}" target="_blank">${h_detail.h_web}</a></dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt>영업시간</dt>
                                    <dd title="">${h_detail.h_chkInTime} ~ ${h_detail.h_chkOutTime}</dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt>기타</dt>
                                    <dd>${h_detail.h_etc}</dd>
                                </dl>
                            </li>
                        </ul>
                        <!-- //우측 정보 e -->
                        <!-- 하단 분류 s -->
                        <div class="s21_detail_top_btm">
                            <dl class="mgl_0">
                                <dt>
                                    <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/travel/icon_accommodation_line.png?ver=2" /></dt>
                                <dd>펜션</dd>
                            </dl>
                            <dl>
                                <dt>
                                    <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/travel/icon_dog_line.png?ver=2" /></dt>
                                <dd>${h_detail.h_petSize}</dd>
                            </dl>
                            <dl>
                                <dt><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/travel/icon_scale_line.png?ver=2" alt="숙소" /></dt>
                                <dd>${h_detail.h_petWeight}</dd>
                            </dl>
                            <dl class="mgr_0">
                                <dt><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/travel/icon_moneyadd_line.png?ver=2" alt="숙소" /></dt>
                                <dd>${h_detail.h_price}원</dd>
                            </dl>
                        </div>
                        <!--// 하단 분류 e -->
                    </div>
                </div>
            </div>
            <!--// sub m top -->

            <!-- sub m btm -->
            <div class="s21_tour_de_btm area">
                <div class="s21_tab">
                    <button class="tablinks" onclick="openCity(event, 'info')" id="defaultOpen">기본정보</button>
                    <button class="tablinks" id="reviewOpen" onclick="openCity(event, 'review')">리뷰</button>
                </div>

                <!-- 기본정보 s -->
                <div id="info" class="s21_tabcontent">
                    <div class="s21_tabcontent_left">
                        <div class="">
                        	<c:forTokens var="h_d" items="${h_detail.h_detail}" delims=",">
                            	<img src="hotel/${h_detail.h_id}/h_detail/${h_d}" style="max-width: 100%; image-orientation: from-image" alt="" />
                            </c:forTokens>
                            <br />
                        </div>
                    </div>

                    <!-- 오른쪽 내용들 s-->
                    <div class="s21_tabcontent_right">
                        <div class="s21_tabcontent_rightbox">

                            <!-- 숙박예약 있을시에 button s -->
                            <div class="s21_tabcontent_rbtn">
                                <button type="button" class="bg_orange" onclick="location.href='booking?h_id=${h_detail.h_id}'">숙박예약</button>

<!--                                 <button type="button" class="bg_orange" onclick="alert('로그인 후 이용해주세요.');return;//location.href='?m1Code=etc&m2Code=join';;location.href='?m1Code=ar_info&m2Code=inquiry&idx=8892&inquiry_tab=2'">숙박예약</button> -->
                            </div>
                            <!--// 숙박예약 있을시에 button e -->

                            <!-- 숙박예약 있을시에 button s
							<div class="s21_tabcontent_rbtn">
								<button type="button" class="bg_mgray">수정요청</button>
							</div>
							// 숙박예약 있을시에 button e -->

                            <!-- 공통주의사항 s -->
                            <div class="s21_tabcontent_more">
                                <div class="s21_tabcontent_more_tit">
                                    <h4>공통 <span>주의사항</span></h4>
                                </div>
                                <p class="s21_tabcontent_more_spot">
                                    업체의 사정으로 가격, 시설물 등을 포함한 애견정책이 예고 없이 변경될 수 있습니다.
                                    <br><span>따라서, 방문 전 꼭 전화로 확인 부탁드립니다.</span>
                                </p>
                            </div>
                            <!--// 공통주의사항 e -->

                            <!-- 요청배너 s -->
                            <div class="s21_tabcontent_rbtn_btm">
                                <button type="button" class="bg_mgray" onclick="location.href='applyHotel'">장소 및 업체 추가 요청</button>
                            </div>
                            <!-- 요청배너 e -->

                        </div>
                    </div>

                    <!-- 오른쪽 내용들 e-->

                </div>
                
                <!--// 기본정보 e -->

                <!-- 리뷰 s -->
                
                <div id="review" class="s21_tabcontent">
                    <input type="hidden" id="rpage" name="page" value="1" />
                    <input type="hidden" id="ppage" name="page" value="1" />
                    <div class="s21_tabcontent_left">
						<!-- 유저리뷰s -->
						<div class="s21_review_box">
							<div class="s21_review_tit pr">
								<h5>유저리뷰 <span id="review_total">10</span></h5>
								<button type="button" class="s21_review_wbtn pa" onclick="review_set('in','')">리뷰작성</button>
							</div>
							
							<div class="s21_review_listb" id="review_list">
							
								<div class="s21_review_list">
									<p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/common/login_logoutimg.jpg/hungryapp/resize/200x200"></p>
									<dl>
										<dt class="pr">사중맘<span>2021-04-17</span></dt>
										<dd>너무 친절하세요ㅠ
	탕슉 정말 맛나고 짬뽕도 기가막혀요ㅠ
	강아지랑 혼자여행중 알게된곳인데 말동무해주시고 필요한거 알아서 챙겨주시고~강아지 너무 이뻐해주시고 정말 제주도 가믄 꼭 탕슉이랑 짬뽕먹으러 다시갈께요^^</dd>
										<dd><a><img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/202104/M161859388919377246.jpg/hungryapp/resize/100x100" onclick="javascript:viewImgSlide('5265','0');" data-tab="5265"></a></dd>
									</dl>
								</div>
								<div class="s21_review_list">
									<p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/common/login_logoutimg.jpg/hungryapp/resize/200x200"></p>
									<dl>
										<dt class="pr">쑤니0725<span>2021-02-28</span></dt>
										<dd>짬뽕국물 진하고 맛있어요!
	강아지도 예뻐해주셨어요^^</dd>
									</dl>
								</div>
								<div class="s21_review_list">
									<p><img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/202010/M16016420692229019.jpg/hungryapp/resize/200x200"></p>
									<dl>
										<dt class="pr">초당<span>2020-09-30</span></dt>
										<dd>사장님이 개 이뻐해주시고 맛은 보통입니다 다만 2층이라 계단으로 올라가야는데 대형견은 안고 올라가야됩니다</dd>
									</dl>
								</div>
								<div class="s21_review_list">
									<p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/common/login_logoutimg.jpg/hungryapp/resize/200x200"></p>
									<dl>
										<dt class="pr">달콩이레오<span>2019-08-22</span></dt>
										<dd>사장님 친절하시고 짬뽕 탕수육 진짜 맛있어요~</dd>
										<dd><a><img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/201908/M15664532463973664.jpg/hungryapp/resize/100x100" onclick="javascript:viewImgSlide('2713','0');" data-tab="2713"></a></dd>
									</dl>
								</div>
								<div class="s21_review_list">
									<p><img src="http://appdata.hungryapp.co.kr/images/hatdog/ar/201906/1560819511_M156081951196651132.jpg/hungryapp/resize/200x200"></p>
									<dl>
										<dt class="pr">인절미쥬아<span>2019-07-30</span></dt>
										<dd>진짜 짬뽕먹고 반해브렸네용ㅎㅎㅎ</dd>
									</dl>
								</div>
							</div>

							<!-- more btn s -->
							<span class="addreview_1">
								<a id="addreview">
									<p class="s21_review_more">+ 더보기</p>
								</a>
							</span>
							<!--// more btn e -->

						</div>
						<!--// 유저리뷰e -->

						<!-- 리뷰작성 팝업 s -->
						<div id="id01" class="modal">
							  <span onclick="document.getElementById('id01').style.display='none'; " class="close" title="Close Modal">×</span>
							 <form class="modal-content" id="checkForm" name="checkForm">
									<input type="hidden" name="m1Code" value="ar_info">
									<input type="hidden" name="m2Code" value="ar_info">
									<input type="hidden" name="bcode" id="bcode" value="review">
									<input type="hidden" name="idx" value="315">
									<input type="hidden" id="r_idx" name="r_idx">
									<input type="hidden" id="r_mode" name="mode" value="in">
								<div class="s21_review_writeform">
								  <h1>리뷰 작성</h1>
								 


									<textarea class="textarea3" name="contents" id="contents" placeholder="리뷰 내용을 입력해 주세요."></textarea>
							

									<div class="s21_form_photo">
										<img src="http://appdata.hungryapp.co.kr/images/hatdog/img/common/icon_photo_l.png" alt="photo" onclick="check();">
									</div>
									
										<div class="s21_upload_img" id="imgupload">
										 																																																												</div>
										<input type="file" id="upload_file" name="upload_file" style="display:none;" accept="image/*">
									
								  <div class="clearfix">
									<button type="button" id="mul_input_submit" onclick="document.getElementById('id01').style.display='none'" class="deletebtn">확인</button>
									<button type="button" onclick="$('html').css('overflow','scroll');document.getElementById('id01').style.display='none'" class="cancelbtn">취소</button>
								  </div>
								</div></form>
							 
						</div>

						<script>
						// Get the modal
						var modal = document.getElementById('id01');

						// When the user clicks anywhere outside of the modal, close it
						window.onclick = function(event) {
						  if (event.target == modal) {
							modal.style.display = "none";
						  }
						}
						</script>
						<!--// 리뷰작성 팝업 e -->

						<!-- 인스타그램 s >
						<div class="s21_review_box">
							<div class="s21_review_tit pr">
								<h5>인스타그램 <span>#짬뽕바나나</span></h5>
							</div>
							
							<div class="s21_review_listb">
								<!-- 포토 s>
								<div class="s21_instar" id="instagram_list">
									<p class="">검색된 내용이 없습니다.</p>
								</div>
								<!--// 포토 e >
							</div>

							<!-- more btn s >
							<div id="more_div">
							<a href="https://instagram.com/explore/tags/" target="_blank" id="instar_more"><p class="s21_review_more">+ 더보기</p></a>
							</div>
							<!--// more btn e >

						</div>
						<!--// 인스타그램 e -->
						
						<!-- 네이버 리뷰 s -->
						<div class="s21_review_box">
							<div class="s21_review_tit pr">
								<h5>네이버 리뷰 <span id="naver_total">45933</span></h5>
								
							</div>
							
							<div class="s21_review_listb" id="review_n"><div class="s21_review_naver" onclick="window.open('https://blog.naver.com/violetdevil3?Redirect=Log&amp;logNo=222038583726')">
									<p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/common/naver_review.png" alt=""></p>
									<dl>
										<dt>제주도 짬뽕 맛집 <b>짬뽕바나나</b><br><p>보라앙마 일상맛집미용 블로그<span>20200723</span></p></dt>
										<dd>짬뽕에 반하다. 그래서 <b>짬뽕바나나</b>. 특별한 국물맛. 난 바나나 들어간 줄 알았쟈나 ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ 응아니야 다행히(?) 반한거였구요 ㅋㅋㅋㅋㅋㅋㅋ 주문즉시 조리와 1일 1 식재료... </dd>
									</dl>
								</div><div class="s21_review_naver" onclick="window.open('https://blog.naver.com/zltm31?Redirect=Log&amp;logNo=221759993203')">
									<p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/common/naver_review.png" alt=""></p>
									<dl>
										<dt>제주 짬뽕 맛집 , 이도동맛집 : <b>짬뽕바나나</b> 맛에 반하나♡<br><p>제주여행의모든것<span>20200104</span></p></dt>
										<dd>또 이게 제일 작은 사이즈인데 양이 많이 나와서 존좋♥ 6세 울집 아들도 여태껏 먹었던 탕수육 중 제일 많이 먹은거 같아요 정말 무섭게 먹더라구요 ㅎㅎㅎㅎㅎㅎ 이거슨 이거슨 <b>짬뽕바나나</b>의 바나나짬뽕 진짜... </dd>
									</dl>
								</div><div class="s21_review_naver" onclick="window.open('https://blog.naver.com/kcr1745?Redirect=Log&amp;logNo=222392142316')">
									<p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/common/naver_review.png" alt=""></p>
									<dl>
										<dt>[이도동]먹으면 반하는 제주도 짬뽕 맛집 ‘<b>짬뽕바나나</b>’<br><p>제주교차로 여행•맛집 블로그<span>20210610</span></p></dt>
										<dd>상호명 : <b>짬뽕바나나</b> 주소 : 제주시 남광로 44(이도2동 1972-2) 전화 : 064-723-6103 영업시간 : 매일 11시~21시(매주 수요일 휴무) 메뉴 : 바나나짬뽕 8,000원, 짜장면 6,000원, 중화비빔밥 10,000원, 제주산생등심탕수육(소) 13... </dd>
									</dl>
								</div><div class="s21_review_naver" onclick="window.open('https://blog.naver.com/razena3?Redirect=Log&amp;logNo=222265683184')">
									<p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/common/naver_review.png" alt=""></p>
									<dl>
										<dt>제주 반려견 동반 식당 <b>짬뽕바나나</b> 추천 꾹!<br><p>쑤니와 행복한추억만들기<span>20210305</span></p></dt>
										<dd>제주 <b>짬뽕바나나</b>는 도민들 사이에 짬뽕 맛집으로 소문난 집이더라고요! 반려견 동반 가능하다고 해서 어찌나 감사하던지 ㅠㅠ 사장님 부부가 강아지도 예뻐해 주셨어요! 강풍을 뚫고 도착해서 주차를 하고... </dd>
									</dl>
								</div><div class="s21_review_naver" onclick="window.open('https://blog.naver.com/lizzypark1016?Redirect=Log&amp;logNo=222089754960')">
									<p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/common/naver_review.png" alt=""></p>
									<dl>
										<dt><b>짬뽕바나나</b> 제주 : 짬뽕을 먹고 반한다고요? 탕수육 먹고도... <br><p>◆아트리더 박수은의 근사한 미술읽기◆<span>20200915</span></p></dt>
										<dd>제주 <b>짬뽕바나나</b> 바나나짬뽕 (8,000원) 캬... 제주도에 위치한 짬뽕집답게 해물도 제대로 들어있고요? 바다와 늘 함께하는 곳에서는 해물 재료도 풍성해요 이 점은 진짜 최고... 사실 저는 은근히 오뎅은 잘... </dd>
									</dl>
								</div></div>

							<!-- more btn s -->
							<a href="https://search.naver.com/search.naver?where=post&amp;sm=tab_jum&amp;query= 짬뽕바나나" target="_blank"><p class="s21_review_more">+ 더보기</p></a>
							<!--// more btn e -->

						</div>
						<!--// 네이버 리뷰 e -->

						
						<!-- 유저사진리뷰 s -->
						<div class="s21_review_box">
							<div class="s21_review_tit pr">
								<h5>유저 사진 리뷰 <span id="poto_total">5</span></h5>
							</div>
							
							<div class="s21_review_listb">
								<!-- 포토 s -->
								<div class="s21_instar" id="photo_list"><p><img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/202104/M161859388919377246.jpg/hungryapp/resize/200x200" onclick="javascript:viewImgSlide('','0');"></p><p><img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/201908/M15664532463973664.jpg/hungryapp/resize/200x200" onclick="javascript:viewImgSlide('','1');"></p><p><img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/201809/M153804318440400201.jpg/hungryapp/resize/200x200" onclick="javascript:viewImgSlide('','2');"></p><p><img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/201809/M153804311152528201.jpg/hungryapp/resize/200x200" onclick="javascript:viewImgSlide('','3');"></p><p><img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/201809/M153804314694181201.jpg/hungryapp/resize/200x200" onclick="javascript:viewImgSlide('','4');"></p></div>
								<!--// 포토 e -->
							</div>

							<!-- more btn s -->
							<span class="addphoto_1"><p class="s21_review_more"></p></span>
							<!--// more btn e -->

						</div>
						<!--// 유저사진리뷰 e -->
						

					</div>

                    <!-- 오른쪽 내용들 s-->
                    <div class="s21_tabcontent_right">
                        <div class="s21_tabcontent_rightbox">

                            <!-- 숙박예약 있을시에 button s -->
                            <div class="s21_tabcontent_rbtn">
								<button type="button" class="bg_orange" onclick="location.href='/booking?h_id=${h_detail.h_id}'">숙박예약</button>
								<!-- <button type="button" class="bg_orange" onclick="alert('로그인 후 이용해주세요.');return;//location.href='?m1Code=etc&m2Code=join';;location.href='?m1Code=ar_info&m2Code=inquiry&idx=8892&inquiry_tab=2'">숙박예약</button> -->
                            </div>
                            <!--// 숙박예약 있을시에 button e -->

                            <!-- 숙박예약 있을시에 button s
							<div class="s21_tabcontent_rbtn">
							<button type="button" class="bg_mgray">수정요청</button>
							</div>
							// 숙박예약 있을시에 button e -->


                            <!-- 공통주의사항 s -->
                            <div class="s21_tabcontent_more">
                                <div class="s21_tabcontent_more_tit">
                                    <h4>공통 <span>주의사항</span></h4>
                                </div>
                                <p class="s21_tabcontent_more_spot">
                                    업체의 사정으로 가격, 시설물 등을 포함한 애견정책이 예고 없이 변경될 수 있습니다.
                                    <br><span>따라서, 방문 전 꼭 전화로 확인 부탁드립니다.</span>
                                </p>
                            </div>
                            <!--// 공통주의사항 e -->

                            <!-- 요청배너 s -->
                            <div class="s21_tabcontent_rbtn_btm">
                                <button type="button" class="bg_mgray" onclick="location.href='applyHotel'">장소 및 업체 추가 요청</button>
                            </div>
                            <!-- 요청배너 e -->

                        </div>
                    </div>
                    <!-- 오른쪽 내용들 e-->

                </div>
                <!--// 리뷰 e -->

                <script>
                
                

				var swiper_main = new Swiper('.swiper-container', {
					loop: true,
					autoplay: {
				        delay: 5000,
				        disableOnInteraction: false,
				     },
					pagination: {
				        el: '.swiper-pagination4',
				        type: 'fraction',
				      },
					navigation: {
						prevEl: '.button_prev',
						nextEl: '.button_next',	
					},threshold : 20,//터치거리 px

				});
				

				/**이벤트 발생 (크롬,파이어폭스,사파이어 OK!) **/
				function eventOccur(evEle, evType){
					if (evEle.fireEvent) {
						evEle.fireEvent('on' + evType);
					} else {
						//MouseEvents가 포인트 그냥 Events는 안됨~ ??
						var mouseEvent = document.createEvent('MouseEvents');
						/* API문서 initEvent(type,bubbles,cancelable) */
						mouseEvent.initEvent(evType, true, false);
						var transCheck = evEle.dispatchEvent(mouseEvent);
						if (!transCheck) {
							//만약 이벤트에 실패했다면
							//console.log("클릭 이벤트 발생 실패!");
						}
					}
				}
				function viewImgSlide(review_idx,n){
					window.open("?m1Code=ar_info&m2Code=ar_img&mode=view&bidx=8898&review_idx="+review_idx+"&img_key="+n);
				}

	                    function openCity(evt, cityName) {
	                        var i, tabcontent, tablinks;
	                        tabcontent = document.getElementsByClassName("s21_tabcontent");
	                        for (i = 0; i < tabcontent.length; i++) {
	                            tabcontent[i].style.display = "none";
	                        }
	                        tablinks = document.getElementsByClassName("tablinks");
	                        for (i = 0; i < tablinks.length; i++) {
	                            tablinks[i].className = tablinks[i].className.replace(" active", "");
	                        }
	                        document.getElementById(cityName).style.display = "block";
	                        evt.currentTarget.className += " active";
	                        if (cityName == "map_info") {
	                            kakaomap_init();
	                        }
	
	                        if ($(".s21_tab").position().top == 0) { //상단메뉴탭 탑이동 후 다른 탭 클릭시 컨텐츠 첫부분 보이게 수정 
	                            if (cityName == "info") {
	                                class_position = ".s21_de_food_img_st";
	                            } else if (cityName == "map_info") {
	                                class_position = ".s21_map_twrap";
	                            } else {
	                                class_position = ".s21_review_tit";
	                            }
	                            $('html').animate({
	                                scrollTop: $(class_position).position().top + 40
	                            }, 0);
	                        }
	                    }
	                    // Get the element with id="defaultOpen" and click on it
	                    document.getElementById("defaultOpen").click();
	                    
	                    function check(){
	                    	if($("input[class='imgupload']").length >= 3) { 
	                    		alert('최대 3개만 첨부 가능합니다.');
	                    		return false;
	                    	}

	                    	eventOccur(document.getElementById('upload_file'),'click');
	                    }

	                    $('#upload_file').fileupload({
	                    		url : 'http://img.hungryapp.co.kr/image_upload.php',
	                    		dataType : 'json',
	                    		formData : {upload_path:"/images/hatdog/upload/202112/",max_width:1000},
	                    		//replaceFileInput: false,
	                    		sequentialUploads: true,
	                    		add: function(e, data){
	                    			
	                    			$("#imgUploadWAIT").addClass("advice_on");  
	                    			var uploadFile = data.files[0];

	                    			if (!(/png|jpe?g|gif/i).test(uploadFile.name)){
	                    				alert('png, jpg, gif 형식만 가능합니다');
	                    				$("#imgUploadWAIT").removeClass("advice_on"); 
	                    				return false;
	                    			}else if (uploadFile.size > (5*1024*1024)) { // 5mb
	                    				alert('파일 용량은 5MB를 초과할 수 없습니다.');
	                                    $("#imgUploadWAIT").removeClass("advice_on"); 
	                    				return false;
	                    			}
	                    			data.submit();
	                    		},done: function (e, data){
	                    			var result = data.result;
	                    			if(!result){
	                    				alert("오류 발생");
	                    				return false;
	                    			}

	                    			if(result.result == 1){
	                    				var tag = "";
	                    				tag = "<div id=\""+result.path+"\" onclick=\"javascript:removeImg(this);\">";
	                    				tag += "<a class=\"s21_img_del_btn\">삭제</a>";
	                    				tag += "<img src='"+result.path+"' style='max-width:100%;image-orientation: from-image;'>";
	                    				tag += "<input type=\"hidden\" class=\"s21_imgupload imgupload\" name=\"imgupload[]\"  value=\""+result.path+"\" > </div>";
	                    				$("#imgupload").append(tag);
	                    				$("#imgUploadWAIT").removeClass("advice_on"); 
	                    			}else{
	                    				alert(result.msg);
	                    			}
	                    		},fail: function(e, data) {
	                    			alert(JSON.stringify(e));
	                    			alert("업로드 중 오류가 발생했습니다.\n잠시 후에 다시 시도해주세요.");
	                    			$("#imgUploadWAIT").removeClass("advice_on"); 
	                    		}
	                    	});
	                            
	                    	$("#mul_input_submit").click(function() {
	                    		if(!$.trim($("#contents").val()).length){
	                    			alert("리뷰 내용을 입력해 주세요.");
	                    			$("#contents").focus();
	                    			return;
	                    		}
	                            
	                    		if ($(".imgupload").length == 0 ) {
	                    			if (!confirm("이미지가 등록되지 않았습니다.\n그래도 등록 하시겠습니까?")) return;
	                    		}

	                    		formData = $("#checkForm").serialize();
	                    		imgData = $("#imgForm").serialize();
	                    		$.ajax({
	                    				url: "reviewHotel",
	                    				type: "POST",
	                    				dataType: 'json',
	                    				data: formData+"&"+imgData,
	                    				success: function(r){
	                    				//	alert(r.msg);
	                    						console.log("success");
	                    					if(!r.result){
	                    						console.log(r);
	                    						console.log(r.asdf);
	                    						//alert(r.msg);
	                    						//alert("서버와의 연결이 원활하지 않습니다.\n\n잠시 후에 다시 시도해주세요.");
	                    					}else{
	                    						Store.set("ar_tab","reviewOpen");
	                    						location.reload();
	                    						
	                    					}
	                    				},
	                    				
	                    				error: function(request,status,error){
	                    						console.log("error");
	                    				}
	                    		});//end ajax
	                                    
	                                    
	                    });
	                    function removeImg(n){
	                    	if (!confirm("삭제하시겠습니까?")) return;
	                    	$(n).remove();
	                    }
	                    
	                    function review_set(mode, r_idx){
	                    	$("html").css("overflow","hidden");
	                    	$("#id01").show();
	                    	$('#r_mode').val(mode)
	                    	$('#r_idx').val(r_idx)
	                    	if (mode=="up"){
	                    		$.ajax({
	                    			url: "ajaxData_arinfo.php",
	                    			type: "POST",
	                    			dataType: 'json',
	                    			data: "m2Code=ar_info&mode=review_get&r_idx="+r_idx,
	                    			success: function(r){
	                    				$("#contents").val(r.r_content);
	                    				$("#imgupload").html(r.r_img_arr);
	                    			},
	                    			
	                    			error: function(request,status,error){
	                    			}
	                    		});//end ajax
	                    	}
	                    }
	                    function delReview(idx){
	                        if (!confirm("리뷰를 삭제 하시겠습니까?")) return;
	                        $.ajax({
	                                url: "ajaxData_arinfo.php",
	                                type: "POST",
	                                dataType: 'json',
	                                data: "idx=" + idx + "&mode=del&m2Code=ar_info",
	                                success: function(r){
	                                    if(!r.result){
	                                        alert(r.msg);
	                                    }else{
	                                         Store.set("ar_tab","reviewOpen");
	                    					location.reload();
	                                    }
	                                },
	                                error: function(error){
	                                }
	                            });//end ajax
	                    }
	                </script>
            </div>
            <!--// sub m btm -->
        </div>
    </div>
    <!-- //container -->
    <!-- footer -->
    <jsp:include page="../footer.jsp"/>
	<!-- //footer -->
</body>

</html>