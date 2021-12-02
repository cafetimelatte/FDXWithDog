<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

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
    <title>관리자 - 숙소 등록</title>
    
    <script type="text/javascript">
    	/* function readURL(input){
    		if (input.files&&input.files[0]) {
    			var reader = new FileReader();
    			reader.onload = function(e) {
    				document.getElementById('preview').src = e.target.result;
    			};
    			reader.readAsDataURL(input.files[0]);
    		} else {
    			document.getElementById('preview').src = "";
    		}
    	} */
    </script>
</head>

<body>
	<!-- header -->
	<jsp:include page="../header.jsp"/>
	<!-- //header -->
    <!-- container -->
    <div id="Container">
        <div class="sContainer">
        <form action="addHotelM" id="hotelInfo" enctype="multipart/form-data" method="post">
            <!-- sub m top -->
            <div class="s21_tour_de_top">
                <h3 class="area" style="height:60px">
                	숙소명: <input type="text" name="h_name">
                	<span>소개글: <input style="width:400px" type="text" name="h_info"></span>
                </h3>
                <div class="s21_detail_box area pr">
                    <div class="s21_detail_img swiper-container ">
                        <div class="swiper-wrapper">
                            <p class="swiper-slide"><img id="preview" alt="사진"></p>
                        </div>
                    </div>
                    <!-- 	
                    배너 이동 조작
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
						// 배너 이동 조작
                     -->

                    <div class="s21_detail_tbox">
                        <!-- 우측 정보 s -->
                        <ul class="s21_detail_twrap">
                            <li>
                                <dl>
                                    <dt>주소</dt>
                                    <dd>
                                    	<input style="width: 126px" type="text" name="h_add1">
                                    	<input style="width: 126px" type="text" name="h_add2">
                                    	<input style="width: 126px" type="text" name="h_add3">
                                    </dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt>연락처</dt>
                                    <dd>
										<input style="width: 400px" type="text" name="h_phone">
									</dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt>홈페이지</dt>
                                    <dd>
                                    	<input style="width: 400px" type="text" name="h_web">
									</dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt>영업시간</dt>
                                    <dd title="">
										<input style="width: 189px" name="h_chkInTime" type="text"> ~ 
										<input style="width: 189px" name="h_chkOutTime" type="text">
									</dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt>기타</dt>
                                    <dd>
                                    	<input style="width: 400px" name="h_etc" type="text">
									</dd>
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
                                <dd>
									<input style="width: 50px" type="text" name="h_petSize">
											</dd>
                            </dl>
                            <dl>
                                <dt><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/travel/icon_scale_line.png?ver=2" alt="숙소" /></dt>
                                <dd><input style="width:50px" type="text" name="h_petWeight"></dd>
                            </dl>
                            <dl class="mgr_0">
                                <dt><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/travel/icon_moneyadd_line.png?ver=2" alt="숙소" /></dt>
                                <dd><input style="width:50px" type="text" name="h_price"></dd>
                            </dl>
                        </div>
                        <!--// 하단 분류 e -->
                    </div>
                </div>
            </div>
            <!--// sub m top -->
			<div>
				<label style="background-color: green; font-size: 15px; color: white; padding: 10px;">숙소 이미지 업로드</label>
				<input type="file" name="filesI" id="filesI" multiple>
            </div>
            <!-- sub m btm -->
            <div class="s21_tour_de_btm area">
                <div class="s21_tab">
                    <button type="button" class="tablinks" onclick="openCity(event, 'info')" id="defaultOpen">기본정보</button>
                </div>

                <!-- 기본정보 s -->
                <div id="info" class="s21_tabcontent">
                    <div class="s21_tabcontent_left">
                        <!-- <div class="">
                            <img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/202111/M163705024257736193.jpg" style="max-width: 100%; image-orientation: from-image" alt="" />
                            <img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/202111/M163705024616715193.jpg" style="max-width: 100%; image-orientation: from-image" alt="" /><br />
                            <img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/202111/M163705025735263193.jpg" style="max-width: 100%; image-orientation: from-image" alt="" /><br />
                            <img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/202111/M163705026259957193.jpg" style="max-width: 100%; image-orientation: from-image" alt="" /><br />
                            <br />
                        </div> -->
                    </div>

                    <!-- 오른쪽 내용들 s-->
                    <div class="s21_tabcontent_right">
                        <div class="s21_tabcontent_rightbox">

                            <!-- 숙박예약 있을시에 button s -->
                            <div class="s21_tabcontent_rbtn">
                                <button type="submit" form="hotelInfo" class="bg_orange">숙소 등록</button>
                            </div>
                            <!--// 숙박예약 있을시에 button e\
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
<!-- 
                            요청배너 s
                            <div class="s21_tabcontent_rbtn_btm">
                                <button type="button" class="bg_mgray" onclick="alert('로그인 후 이용해주세요.');return;//location.href='?m1Code=etc&m2Code=join'; location.replace('?m1Code=ar_info&m2Code=shop_add&shopadd_tab=0&ar_idx=8892')">장소 및 업체 추가 요청</button>
                            </div>
                            요청배너 e
 -->						
                            <div class="s21_tabcontent_more">
								<label style="background-color: green; font-size: 15px; color: white; padding: 10px;">상세페이지 업로드</label>
	                            <input type="file" name="filesD" id="filesD" multiple>
							</div>
                        </div>
                    </div>

                    <!-- 오른쪽 내용들 e-->

                </div>
                
                <!--// 기본정보 e -->

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
    <jsp:include page="../footer.jsp"/>
	<!-- //footer -->
</body>

</html>