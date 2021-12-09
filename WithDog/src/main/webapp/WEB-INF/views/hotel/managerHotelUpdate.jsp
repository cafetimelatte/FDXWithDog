<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>WithDog</title>

<link rel='shortcut icon'
	href='http://appdata.hungryapp.co.kr/images/hatdog/img/intro/00_hatdog_logo.ico'>
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
<script src="js/verification.js"></script>
<script src="js/filePreview.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

<title>Manager-HotelUpdate</title>
	<style>
    	.pv{
    		border:solid 1px blue;
    		display:inline-block;
    		padding:5px
    	}
    	.pv img{
    		min-height: 0;
    		max-height: 80px;
    	}
    	.pv button{
    		border:solid;
    		background-color: red;
    		font-size: 13px;
    		color:white;
    		padding:5px;
    	}
    	.uploadedImg{
    		border:solid 1px blue;
    		display:inline-block;
    		padding:5px;
    	}
    	.uploadedImg img{
    		min-height:0;
    		max-height:80px;
    	}
    	.uploadedImg button{
    		border:solid;
    		background-color:red;
    		font-size:13px;
    		color:white;
    		padding:5px;
    	}
    	.fileSelect{
    		margin-top: 50px;
    	}
    	.fileSelect label{
    		background-color: green;
    		font-size: 15px;
    		color: white;
    		padding: 10px;
    	}
    	.fileSelect input{
    		display: none;
    	}
    	.fileSelect span{
    		font-size:10px;
    		color: gray;
    	}
    </style>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp" />
	<!-- //header -->
	<!-- container -->
	<div id="Container">
		<div class="sContainer">
			<form action="updateHotelM" name="hotelInfo" id="hotelInfo" enctype="multipart/form-data" method="post">
				<input type="hidden" name="h_id" id="h_id" value="${h_detail.h_id}">
				<input type="hidden" name="h_img" value="${h_detail.h_img}">
				<input type="hidden" name="h_detail" value="${h_detail.h_detail}">
				<!-- sub m top -->
				<div class="s21_tour_de_top">
					<h3 class="area" style="height: 60px">
						숙소명: <input type="text" name="h_name" value="${h_detail.h_name}">
						<span>
							소개글: <input style="width: 400px" type="text" name="h_info" value="${h_detail.h_info}">
						</span>
						<span>
							숙소 등록일: ${h_detail.h_regiDate}
						</span>
					</h3>
					<div class="s21_detail_box area pr">
						<div class="s21_detail_img swiper-container ">
							<div class="swiper-wrapper">
								<c:forTokens var="h_i" items="${h_detail.h_img}" delims=",">
									<p class="swiper-slide">
										<img src="hotel/${h_detail.h_id}/h_img/${h_i}" alt="${h_detail.h_name}">
									</p>
								</c:forTokens>
							</div>

						</div>


						<!-- 배너 이동 조작 -->
						<div class="s21_today_arrow pa" style="z-index: 9">
							<button type="button" class="button_stop"
								onclick="$(this).hide();$('.button_start').show();swiper_main.autoplay.stop();">정지</button>
							<button type="button" class="button_start"
								onclick="$(this).hide();$('.button_stop').show();swiper_main.autoplay.start();">재생</button>
							<p class="swiper-pagination4">
								<span class="f_orange">1</span><span class="op30">/</span><span>8</span>
							</p>
							<div>
								<button type="button" class="button_prev">이전</button>
								<button type="button" class="button_next">다음</button>
							</div>
						</div>
						<!--// 배너 이동 조작 -->


						<div class="s21_detail_tbox">
							<!-- 우측 정보 s -->
							<ul class="s21_detail_twrap">
								<li>
									<dl>
										<dt>주소</dt>
										<dd>
											<input style="width: 126px" type="text" name="h_add1"
												value="${h_detail.h_add1}"> <input
												style="width: 126px" type="text" name="h_add2"
												value="${h_detail.h_add2}"> <input
												style="width: 126px" type="text" name="h_add3"
												value="${h_detail.h_add3}">
										</dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt>연락처</dt>
										<dd>
											<input style="width: 400px" type="text" name="h_phone"
												value="${h_detail.h_phone}">
										</dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt>홈페이지</dt>
										<dd>
											<input style="width: 400px" type="text" name="h_web"
												value="${h_detail.h_web}">
										</dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt>영업시간</dt>
										<dd title="">
											<input style="width: 189px" name="h_chkInTime" type="text"
												value="${h_detail.h_chkInTime}"> ~ <input
												style="width: 189px" name="h_chkOutTime" type="text"
												value="${h_detail.h_chkOutTime}">
										</dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt>기타</dt>
										<dd>
											<input style="width: 400px" name="h_etc" type="text"
												value="${h_detail.h_etc}">
										</dd>
									</dl>
								</li>
							</ul>
							<!-- //우측 정보 e -->
							<!-- 하단 분류 s -->
							<div class="s21_detail_top_btm">
								<dl class="mgl_0">
									<dt>
										<img
											src="http://appdata.hungryapp.co.kr/images/hatdog/img/travel/icon_accommodation_line.png?ver=2" />
									</dt>
									<dd>펜션</dd>
								</dl>
								<dl>
									<dt>
										<img
											src="http://appdata.hungryapp.co.kr/images/hatdog/img/travel/icon_dog_line.png?ver=2" />
									</dt>
									<dd>
										<input style="width: 50px" type="text" name="h_petSize"
											value="${h_detail.h_petSize}">
									</dd>
								</dl>
								<dl>
									<dt>
										<img
											src="http://appdata.hungryapp.co.kr/images/hatdog/img/travel/icon_scale_line.png?ver=2"
											alt="숙소" />
									</dt>
									<dd>
										<input style="width: 50px" type="text" name="h_petWeight"
											value="${h_detail.h_petWeight}">
									</dd>
								</dl>
								<dl class="mgr_0">
									<dt>
										<img
											src="http://appdata.hungryapp.co.kr/images/hatdog/img/travel/icon_moneyadd_line.png?ver=2"
											alt="숙소" />
									</dt>
									<dd>
										<input style="width: 50px" type="text" name="h_price"
											value="${h_detail.h_price}">
									</dd>
								</dl>
							</div>
							<!--// 하단 분류 e -->
						</div>
					</div>
				</div>
			
		<!--// sub m top -->
			<div class="imgContainer">
				<div class="uploadedImgs"> 현재 이미지 : &nbsp;
					<c:forTokens var="h_i" items="${h_detail.h_img}" delims="," varStatus="st">
						<div class="uploadedImg">
							<img title="${h_i}" src="hotel/${h_detail.h_id}/h_img/${h_i}" alt="${h_detail.h_name}">
							<button type="button" onclick="exclude(this);" >제외</button>
						</div>
					</c:forTokens>
				</div>
				<hr>
				<div class="selectedImg">
				</div>
				<div class="fileSelect">
					<label for="filesI">숙소 이미지 선택</label>
					<input onchange="uploadPreview(this);" type="file" name="filesI" id="filesI" accept="image/*" multiple>
					<span>※첨부파일은 최대 5개까지 등록이 가능합니다.</span>
				</div>
			</div>

			<!-- sub m btm -->
			<div class="s21_tour_de_btm area">
				<div class="s21_tab">
					<button type="button" class="tablinks" onclick="openCity(event, 'info')"
						id="defaultOpen">기본정보</button>
					<button type="button" class="tablinks" id="reviewOpen"
						onclick="openCity(event, 'review')">리뷰</button>
				</div>
	
				<!-- 기본정보 s -->
				<div id="info" class="s21_tabcontent">
					<div class="s21_tabcontent_left">
						<div class="">
							<c:forTokens var="h_d" items="${h_detail.h_detail}" delims=",">
								<img src="hotel/${h_detail.h_id}/h_detail/${h_d}"
									style="max-width: 100%; image-orientation: from-image" alt="${h_detail.h_name}" />
							</c:forTokens>
							<br>
						</div>
					</div>
	
					<!-- 오른쪽 내용들 s-->
					<div class="s21_tabcontent_right">
						<div class="s21_tabcontent_rightbox">
	
							<!-- 숙박예약 있을시에 button s -->
							<div class="s21_tabcontent_rbtn">
								<button type="button" onclick="return checkHotelInfo(this);" name="upBtn" class="bg_orange">숙소 업로드</button>
								<button type="button" class="bg_red" name="delBtn"
									onclick="if(validate(this)){location.href='deleteHotelM?h_id=${h_detail.h_id}'}">숙소
									삭제</button>
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
									<h4>
										공통 <span>주의사항</span>
									</h4>
								</div>
								<p class="s21_tabcontent_more_spot">
									업체의 사정으로 가격, 시설물 등을 포함한 애견정책이 예고 없이 변경될 수 있습니다. <br>
									<span>따라서, 방문 전 꼭 전화로 확인 부탁드립니다.</span>
								</p>
							</div>
							<!--// 공통주의사항 e -->
							<!-- 
	                            요청배너 s
	                            <div class="s21_tabcontent_rbtn_btm">
	                                <button type="button" class="bg_mgray" onclick="alert('로그인 후 이용해주세요.');return;//location.href='?m1Code=etc&m2Code=join'; location.replace('?m1Code=ar_info&m2Code=shop_add&shopadd_tab=0&ar_idx=8892')">장소 및 업체 추가 요청</button>
	                            </div>
	                            요청배너 e
	 -->
							<div class="s21_tabcontent_more">
								<div class="imgContainer">
									<div class="uploadedImgs">
										<c:forTokens var="h_d" items="${h_detail.h_detail}" delims="," varStatus="st">
											<div class="uploadedImg">
												<img title="${h_d}" src="hotel/${h_detail.h_id}/h_detail/${h_d}" alt="${h_detail.h_name}">
												<button type="button" onclick="exclude(this);" >제외</button>
											</div>
										</c:forTokens>
									</div>
									<hr>
									<div class="selectedImg">
									</div>
									<div class="fileSelect">
										<label for="filesD">상세페이지 이미지 선택</label>
										<input onchange="uploadPreview(this);" type="file" name="filesD" id="filesD" accept="image/*" multiple>
										<span>※첨부파일은 최대 5개까지 등록이 가능합니다.</span>
									</div>
								</div>
							</div>
						</div>
					</div>
	
					<!-- 오른쪽 내용들 e-->
	
				</div>
	
				<!--// 기본정보 e -->
	
				<!-- 리뷰 s -->
	
				<div id="review" class="s21_tabcontent">
					<input type="hidden" id="rpage" name="page" value="1" /> <input
						type="hidden" id="ppage" name="page" value="1" />
					<div class="s21_tabcontent_left">
	
						<!-- 유저리뷰s -->
	
						<div class="s21_review_box">
							<div class="s21_review_tit pr">
								<h5>
									유저리뷰 <span id="review_total">20</span>
								</h5>
								<button type="button" class="s21_review_wbtn pa"
									onclick="alert('로그인 후 이용해주세요.');return;//location.href='?m1Code=etc&m2Code=join';review_set('in','')">리뷰작성</button>
							</div>
							<div class="s21_review_listb" id="review_list"></div>
	
							<!-- more btn s -->
							<span class="addreview_1"><a id="addreview">
									<p class="s21_review_more">+ 더보기</p>
							</a></span>
							<!--// more btn e -->
	
						</div>
	
						<!--// 유저리뷰e -->
	
						<!-- 리뷰작성 팝업 s -->
						<div id="id01" class="modal">
							<span
								onclick="document.getElementById('id01').style.display='none'; "
								class="close" title="Close Modal">×</span>
							
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
					</div>
					<!-- 오른쪽 내용들 s-->
					<div class="s21_tabcontent_right">
						<div class="s21_tabcontent_rightbox">
							<!-- 숙박예약 있을시에 button s -->
							<div class="s21_tabcontent_rbtn">
								<button type="button" onclick="return checkHotelInfo(this);" name="upBtn" class="bg_orange">숙소 업로드</button>
								<button type="button" class="bg_red" name="delBtn"
									onclick="if(validate(this)){location.href='deleteHotelM?h_id=${h_detail.h_id}'}">숙소
									삭제</button>
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
									<h4>
										공통 <span>주의사항</span>
									</h4>
								</div>
								<p class="s21_tabcontent_more_spot">
									업체의 사정으로 가격, 시설물 등을 포함한 애견정책이 예고 없이 변경될 수 있습니다. <br>
									<span>따라서, 방문 전 꼭 전화로 확인 부탁드립니다.</span>
								</p>
							</div>
							<!--// 공통주의사항 e -->
							<!-- 
	                            요청배너 s
	                            <div class="s21_tabcontent_rbtn_btm">
	                                <button type="button" class="bg_mgray" onclick="alert('로그인 후 이용해주세요.');return;//location.href='?m1Code=etc&m2Code=join'; location.replace('?m1Code=ar_info&m2Code=shop_add&shopadd_tab=0&ar_idx=8892')">장소 및 업체 추가 요청</button>
	                            </div>
	                            요청배너 e
	 -->
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
	                </script>
			</div>
			<!--// sub m btm -->
			</form>
		</div>
	</div>
	<!-- //container -->
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
	<!-- //footer -->
</body>
</html>