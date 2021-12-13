<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WithDog</title>

    <link rel='shortcut icon' href='http://appdata.hungryapp.co.kr/images/hatdog/img/intro/00_hatdog_logo.ico'>
    <link rel="stylesheet" href="./resources/css/sub_j.css">
    <link rel="stylesheet" href="./resources/css/sub_h.css">
    <link rel="stylesheet" href="./resources/css/sub.css">
    <link rel="stylesheet" href="./resources/css/default.css">
    <link rel="stylesheet" href="./resources/css/main.css">
    <link rel="stylesheet" href="./resources/css/layout.css">
    <link rel="stylesheet" href="./resources/css/shot.css">
    <link rel="stylesheet" href="./resources/css/swiper-bundle.min.css">


    <script src="./resources/js/jquery.js"></script>
    <script src="./resources/js/swiper-bundle.min.js"></script>
	<script type="text/javascript">
		
	</script>
</head>

<body>
    <!-- header -->
	<jsp:include page="./header.jsp"/>
	<!-- //header -->
    <div class="mContainer">
        <!-- m01 오늘의추천장소&이벤트배너-->
        <div class="m_box area">
            <!-- 오늘의 추천장소 -->
            <div class="m_top_left swiper-container swiper_main swiper-container-initialized swiper-container-horizontal">
                <!-- 배너 이동 조작 -->
                <div class="today_arrow"> <button type="button" class="button_stop" onclick="$(this).hide();$('.button_start').show();swiper_main.autoplay.stop();">정지</button> <button type="button" class="button_start" onclick="$(this).hide();$('.button_stop').show();swiper_main.autoplay.start();">재생</button>
                    <p class="swiper-pagination3 swiper-pagination-fraction"><span class="swiper-pagination-current f_orange">13</span><span class="op30"> / </span><span class="swiper-pagination-total">22</span></p>
                    <div><button type="button" class="button_prev" tabindex="0" aria-label="Previous slide" aria-controls="swiper-wrapper-54e1c3146c75a66c">이전</button><button type="button" class="button_next" tabindex="0" aria-label="Next slide" aria-controls="swiper-wrapper-54e1c3146c75a66c">다음</button></div>
                </div>
                <!--// 배너 이동 조작 -->
                <div class="swiper-wrapper" id="swiper-wrapper-54e1c3146c75a66c" aria-live="off" style="transition-duration: 300ms; transform: translate3d(-11791px, 0px, 0px);">
                    <div class="today_box bg_today swiper-slide swiper-slide-duplicate" style="background: url(&quot;http://appdata.hungryapp.co.kr//images/hatdog/ar/202001/1578544182_M157854418260877132.jpg/hungryapp/resize/900&quot;) center center / cover no-repeat; width: 907px;" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=ar_info&amp;m2Code=ar_info&amp;mode=view&amp;idx=4909', 'H');" data-swiper-slide-index="21" role="group" aria-label="1 / 24">
                        <div class="mask">
                            <!-- 텍스트박스 -->
                            <div class="mtext-box">
                                <div class="mtext01 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
                                    <p class="tx_line"></p>오늘의 <span>부산</span> 추천장소<p class="tx_line"></p>
                                </div>
                                <div class="mtext02 aos-init aos-animate" data-aos="fade-up">
                                    <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/main/icon_food_line.png?ver=3" alt="음식점"></p>
                                    <p class="mtext02_ttl">갈삼구이</p>
                                    <p class="mtext02_line"></p>
                                    <p class="mtext02_text">부산에서만 즐길 수 있는 갈삼구이 한번도 안먹어 본 사람은 있어도 한번만 먹어보는 사람은 없을 정도로 단골이 많은 가게</p>
                                </div>
                            </div>
                            <!--// 텍스트박스 -->
                        </div>
                    </div>
                    <!--슬라이드1-->
                    <div class="today_box bg_today swiper-slide" style="background: url(&quot;http://appdata.hungryapp.co.kr//images/hatdog/ar/201803/1521422782_1520159302_main01.jpg/hungryapp/resize/900&quot;) center center / cover no-repeat; width: 907px;" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=ar_info&amp;m2Code=ar_info&amp;mode=view&amp;idx=165', 'H');" data-swiper-slide-index="0" role="group" aria-label="2 / 24">
                        <div class="mask">
                            <!-- 텍스트박스 -->
                            <div class="mtext-box">
                                <div class="mtext01 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
                                    <p class="tx_line"></p>오늘의 <span>서귀포시서부</span> 추천장소<p class="tx_line"></p>
                                </div>
                                <div class="mtext02 aos-init aos-animate" data-aos="fade-up">
                                    <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/main/icon_tourism_line.png?ver=3" alt="관광지"></p>
                                    <p class="mtext02_ttl">안덕계곡</p>
                                    <p class="mtext02_line"></p>
                                    <p class="mtext02_text">'구가의 서' 촬영지이며, 제주의 아름다운 계곡 중 하나로 꼽히는 신비한 안덕계곡!</p>
                                </div>
                            </div>
                            <!--// 텍스트박스 -->
                        </div>
                    </div>
                    <div class="today_box bg_today swiper-slide" style="background: url(&quot;http://appdata.hungryapp.co.kr//images/hatdog/ar/202107/1625472557_M162547255755718193.jpg/hungryapp/resize/900&quot;) center center / cover no-repeat; width: 907px;" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=ar_info&amp;m2Code=ar_info&amp;mode=view&amp;idx=7872', 'H');" data-swiper-slide-index="1" role="group" aria-label="3 / 24">
                        <div class="mask">
                            <!-- 텍스트박스 -->
                            <div class="mtext-box">
                                <div class="mtext01 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
                                    <p class="tx_line"></p>오늘의 <span>제주시</span> 추천장소<p class="tx_line"></p>
                                </div>
                                <div class="mtext02 aos-init aos-animate" data-aos="fade-up">
                                    <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/main/icon_food_line.png?ver=3" alt="음식점"></p>
                                    <p class="mtext02_ttl">로스트 앤 헤븐</p>
                                    <p class="mtext02_line"></p>
                                    <p class="mtext02_text">루프탑이 있는 바다 뷰 감성 카페</p>
                                </div>
                            </div>
                            <!--// 텍스트박스 -->
                        </div>
                    </div>
                    <div class="today_box bg_today swiper-slide" style="background: url(&quot;http://appdata.hungryapp.co.kr//images/hatdog/ar/201807/1531880201_M153188020137265132.jpg/hungryapp/resize/900&quot;) center center / cover no-repeat; width: 907px;" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=ar_info&amp;m2Code=ar_info&amp;mode=view&amp;idx=964', 'H');" data-swiper-slide-index="2" role="group" aria-label="4 / 24">
                        <div class="mask">
                            <!-- 텍스트박스 -->
                            <div class="mtext-box">
                                <div class="mtext01 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
                                    <p class="tx_line"></p>오늘의 <span>전라북도</span> 추천장소<p class="tx_line"></p>
                                </div>
                                <div class="mtext02 aos-init aos-animate" data-aos="fade-up">
                                    <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/main/icon_accommodation_line.png?ver=3" alt="숙소"></p>
                                    <p class="mtext02_ttl">꼴 펜션</p>
                                    <p class="mtext02_line"></p>
                                    <p class="mtext02_text">공예를 하고 있는 예술가들이 운영을 하고 있는 게스트하우스 꼴!</p>
                                </div>
                            </div>
                            <!--// 텍스트박스 -->
                        </div>
                    </div>
                    <div class="today_box bg_today swiper-slide" style="background: url(&quot;http://appdata.hungryapp.co.kr//images/hatdog/ar/202109/1630965762_M16309657627229187.jpg/hungryapp/resize/900&quot;) center center / cover no-repeat; width: 907px;" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=ar_info&amp;m2Code=ar_info&amp;mode=view&amp;idx=8422', 'H');" data-swiper-slide-index="3" role="group" aria-label="5 / 24">
                        <div class="mask">
                            <!-- 텍스트박스 -->
                            <div class="mtext-box">
                                <div class="mtext01 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
                                    <p class="tx_line"></p>오늘의 <span>울산</span> 추천장소<p class="tx_line"></p>
                                </div>
                                <div class="mtext02 aos-init aos-animate" data-aos="fade-up">
                                    <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/main/icon_food_line.png?ver=3" alt="음식점"></p>
                                    <p class="mtext02_ttl">카페 엔아미슈</p>
                                    <p class="mtext02_line"></p>
                                    <p class="mtext02_text">울산대공원 동문근처 펫프렌들리카페와 애견용품 편집샵이 함께 있는 카페 엔아미슈 입니다</p>
                                </div>
                            </div>
                            <!--// 텍스트박스 -->
                        </div>
                    </div>
                    <div class="today_box bg_today swiper-slide" style="background: url(&quot;http://appdata.hungryapp.co.kr//images/hatdog/ar/202107/1627429891_M16274298918464287.jpg/hungryapp/resize/900&quot;) center center / cover no-repeat; width: 907px;" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=ar_info&amp;m2Code=ar_info&amp;mode=view&amp;idx=8126', 'H');" data-swiper-slide-index="4" role="group" aria-label="6 / 24">
                        <div class="mask">
                            <!-- 텍스트박스 -->
                            <div class="mtext-box">
                                <div class="mtext01 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
                                    <p class="tx_line"></p>오늘의 <span>인천</span> 추천장소<p class="tx_line"></p>
                                </div>
                                <div class="mtext02 aos-init aos-animate" data-aos="fade-up">
                                    <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/main/icon_food_line.png?ver=3" alt="음식점"></p>
                                    <p class="mtext02_ttl">카페더문</p>
                                    <p class="mtext02_line"></p>
                                    <p class="mtext02_text">인천 구월동 디저트와 커피가 맛있는 예쁜 카페 </p>
                                </div>
                            </div>
                            <!--// 텍스트박스 -->
                        </div>
                    </div>
                    <div class="today_box bg_today swiper-slide" style="background: url(&quot;http://appdata.hungryapp.co.kr//images/hatdog/ar/202004/1587658721_M15876587215436887.jpg/hungryapp/resize/900&quot;) center center / cover no-repeat; width: 907px;" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=ar_info&amp;m2Code=ar_info&amp;mode=view&amp;idx=5227', 'H');" data-swiper-slide-index="5" role="group" aria-label="7 / 24">
                        <div class="mask">
                            <!-- 텍스트박스 -->
                            <div class="mtext-box">
                                <div class="mtext01 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
                                    <p class="tx_line"></p>오늘의 <span>대전</span> 추천장소<p class="tx_line"></p>
                                </div>
                                <div class="mtext02 aos-init aos-animate" data-aos="fade-up">
                                    <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/main/icon_food_line.png?ver=3" alt="음식점"></p>
                                    <p class="mtext02_ttl">비밀의정원 카페</p>
                                    <p class="mtext02_line"></p>
                                    <p class="mtext02_text">분위기있는 아담한정원과 야외발코니가 있는 용운동 대표 감성카페</p>
                                </div>
                            </div>
                            <!--// 텍스트박스 -->
                        </div>
                    </div>
                    <div class="today_box bg_today swiper-slide" style="background: url(&quot;http://appdata.hungryapp.co.kr//images/hatdog/ar/202106/1624522911_M16245229112538311.jpg/hungryapp/resize/900&quot;) center center / cover no-repeat; width: 907px;" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=ar_info&amp;m2Code=ar_info&amp;mode=view&amp;idx=7789', 'H');" data-swiper-slide-index="6" role="group" aria-label="8 / 24">
                        <div class="mask">
                            <!-- 텍스트박스 -->
                            <div class="mtext-box">
                                <div class="mtext01 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
                                    <p class="tx_line"></p>오늘의 <span>서귀포시</span> 추천장소<p class="tx_line"></p>
                                </div>
                                <div class="mtext02 aos-init aos-animate" data-aos="fade-up">
                                    <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/main/icon_tourism_line.png?ver=3" alt="관광지"></p>
                                    <p class="mtext02_ttl">소정방폭포</p>
                                    <p class="mtext02_line"></p>
                                    <p class="mtext02_text">제주 아담하고 운치있는 소정방폭포</p>
                                </div>
                            </div>
                            <!--// 텍스트박스 -->
                        </div>
                    </div>
                    <div class="today_box bg_today swiper-slide" style="background: url(&quot;http://appdata.hungryapp.co.kr//images/hatdog/ar/201909/1568881017_M156888101759694108.jpg/hungryapp/resize/900&quot;) center center / cover no-repeat; width: 907px;" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=ar_info&amp;m2Code=ar_info&amp;mode=view&amp;idx=4130', 'H');" data-swiper-slide-index="7" role="group" aria-label="9 / 24">
                        <div class="mask">
                            <!-- 텍스트박스 -->
                            <div class="mtext-box">
                                <div class="mtext01 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
                                    <p class="tx_line"></p>오늘의 <span>서귀포시동부</span> 추천장소<p class="tx_line"></p>
                                </div>
                                <div class="mtext02 aos-init aos-animate" data-aos="fade-up">
                                    <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/main/icon_food_line.png?ver=3" alt="음식점"></p>
                                    <p class="mtext02_ttl">플라이오조</p>
                                    <p class="mtext02_line"></p>
                                    <p class="mtext02_text">제주 혼인지에서 가까운 수국 같은 제주 성산 카페</p>
                                </div>
                            </div>
                            <!--// 텍스트박스 -->
                        </div>
                    </div>
                    <div class="today_box bg_today swiper-slide" style="background: url(&quot;http://appdata.hungryapp.co.kr//images/hatdog/ar/202008/1597034148_M159703414865603222.png/hungryapp/resize/900&quot;) center center / cover no-repeat; width: 907px;" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=ar_info&amp;m2Code=ar_info&amp;mode=view&amp;idx=5484', 'H');" data-swiper-slide-index="8" role="group" aria-label="10 / 24">
                        <div class="mask">
                            <!-- 텍스트박스 -->
                            <div class="mtext-box">
                                <div class="mtext01 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
                                    <p class="tx_line"></p>오늘의 <span>충청남도</span> 추천장소<p class="tx_line"></p>
                                </div>
                                <div class="mtext02 aos-init aos-animate" data-aos="fade-up">
                                    <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/main/icon_camping_line.png?ver=3" alt="캠핑"></p>
                                    <p class="mtext02_ttl">청산리오토캠핑장</p>
                                    <p class="mtext02_line"></p>
                                    <p class="mtext02_text">태안의 일출맛집<br>#바다뷰 #낭만적</p>
                                </div>
                            </div>
                            <!--// 텍스트박스 -->
                        </div>
                    </div>
                    <div class="today_box bg_today swiper-slide" style="background: url(&quot;http://appdata.hungryapp.co.kr//images/hatdog/ar/201808/1535431034_M153543103479306132.jpg/hungryapp/resize/900&quot;) center center / cover no-repeat; width: 907px;" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=ar_info&amp;m2Code=ar_info&amp;mode=view&amp;idx=1637', 'H');" data-swiper-slide-index="9" role="group" aria-label="11 / 24">
                        <div class="mask">
                            <!-- 텍스트박스 -->
                            <div class="mtext-box">
                                <div class="mtext01 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
                                    <p class="tx_line"></p>오늘의 <span>경상북도</span> 추천장소<p class="tx_line"></p>
                                </div>
                                <div class="mtext02 aos-init aos-animate" data-aos="fade-up">
                                    <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/main/icon_accommodation_line.png?ver=3" alt="숙소"></p>
                                    <p class="mtext02_ttl">애견펜션 햇살가득</p>
                                    <p class="mtext02_line"></p>
                                    <p class="mtext02_text">조용하고 따스한 햇살을 머금은 프로방스풍의 펜션 햇살가득펜션!</p>
                                </div>
                            </div>
                            <!--// 텍스트박스 -->
                        </div>
                    </div>
                    <div class="today_box bg_today swiper-slide" style="background: url(&quot;http://appdata.hungryapp.co.kr//images/hatdog/ar/201805/1525852091_M152585209196729108.jpg/hungryapp/resize/900&quot;) center center / cover no-repeat; width: 907px;" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=ar_info&amp;m2Code=ar_info&amp;mode=view&amp;idx=291', 'H');" data-swiper-slide-index="10" role="group" aria-label="12 / 24">
                        <div class="mask">
                            <!-- 텍스트박스 -->
                            <div class="mtext-box">
                                <div class="mtext01 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
                                    <p class="tx_line"></p>오늘의 <span>경기도</span> 추천장소<p class="tx_line"></p>
                                </div>
                                <div class="mtext02 aos-init aos-animate" data-aos="fade-up">
                                    <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/main/icon_tourism_line.png?ver=3" alt="관광지"></p>
                                    <p class="mtext02_ttl">이천 사기막골 도예촌</p>
                                    <p class="mtext02_line"></p>
                                    <p class="mtext02_text">예쁜 카페처럼 생긴 수많은 공방들이 어우러져 있어 감성적인 풍경을 자아내는 사기막골 도예촌입니다.</p>
                                </div>
                            </div>
                            <!--// 텍스트박스 -->
                        </div>
                    </div>
                    <div class="today_box bg_today swiper-slide swiper-slide-prev" style="background: url(&quot;http://appdata.hungryapp.co.kr//images/hatdog/ar/201811/1541556250_M154155625064793108.jpg/hungryapp/resize/900&quot;) center center / cover no-repeat; width: 907px;" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=ar_info&amp;m2Code=ar_info&amp;mode=view&amp;idx=2994', 'H');" data-swiper-slide-index="11" role="group" aria-label="13 / 24">
                        <div class="mask">
                            <!-- 텍스트박스 -->
                            <div class="mtext-box">
                                <div class="mtext01 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
                                    <p class="tx_line"></p>오늘의 <span>충청북도</span> 추천장소<p class="tx_line"></p>
                                </div>
                                <div class="mtext02 aos-init aos-animate" data-aos="fade-up">
                                    <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/main/icon_food_line.png?ver=3" alt="음식점"></p>
                                    <p class="mtext02_ttl">슬로울리</p>
                                    <p class="mtext02_line"></p>
                                    <p class="mtext02_text">청주 경계의 드라이브하기 좋은 대청댐 옆 카페</p>
                                </div>
                            </div>
                            <!--// 텍스트박스 -->
                        </div>
                    </div>
                    <div class="today_box bg_today swiper-slide swiper-slide-active" style="background: url(&quot;http://appdata.hungryapp.co.kr//images/hatdog/ar/202102/1612231682_M161223168298905222.jpg/hungryapp/resize/900&quot;) center center / cover no-repeat; width: 907px;" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=ar_info&amp;m2Code=ar_info&amp;mode=view&amp;idx=6528', 'H');" data-swiper-slide-index="12" role="group" aria-label="14 / 24">
                        <div class="mask">
                            <!-- 텍스트박스 -->
                            <div class="mtext-box">
                                <div class="mtext01 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
                                    <p class="tx_line"></p>오늘의 <span>서울</span> 추천장소<p class="tx_line"></p>
                                </div>
                                <div class="mtext02 aos-init aos-animate" data-aos="fade-up">
                                    <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/main/icon_food_line.png?ver=3" alt="음식점"></p>
                                    <p class="mtext02_ttl">헬로 팔로워즈</p>
                                    <p class="mtext02_line"></p>
                                    <p class="mtext02_text">아낌없이 사용한 식재료로 만들어지는 특별한 브런치</p>
                                </div>
                            </div>
                            <!--// 텍스트박스 -->
                        </div>
                    </div>
                    <div class="today_box bg_today swiper-slide swiper-slide-next" style="background: url(&quot;http://appdata.hungryapp.co.kr//images/hatdog/ar/202110/1635235358_M163523535882178193.jpg/hungryapp/resize/900&quot;) center center / cover no-repeat; width: 907px;" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=ar_info&amp;m2Code=ar_info&amp;mode=view&amp;idx=8646', 'H');" data-swiper-slide-index="13" role="group" aria-label="15 / 24">
                        <div class="mask">
                            <!-- 텍스트박스 -->
                            <div class="mtext-box">
                                <div class="mtext01 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
                                    <p class="tx_line"></p>오늘의 <span>경상남도</span> 추천장소<p class="tx_line"></p>
                                </div>
                                <div class="mtext02 aos-init aos-animate" data-aos="fade-up">
                                    <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/main/icon_accommodation_line.png?ver=3" alt="숙소"></p>
                                    <p class="mtext02_ttl">더 비치 펜션</p>
                                    <p class="mtext02_line"></p>
                                    <p class="mtext02_text">맑게 비치는 아름다운 바다를 앞에 두고 있는 더 비치 펜션입니다.</p>
                                </div>
                            </div>
                            <!--// 텍스트박스 -->
                        </div>
                    </div>
                    <div class="today_box bg_today swiper-slide" style="background: url(&quot;http://appdata.hungryapp.co.kr//images/hatdog/ar/202008/1596426223_M15964262236656187.jpg/hungryapp/resize/900&quot;) center center / cover no-repeat; width: 907px;" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=ar_info&amp;m2Code=ar_info&amp;mode=view&amp;idx=5463', 'H');" data-swiper-slide-index="14" role="group" aria-label="16 / 24">
                        <div class="mask">
                            <!-- 텍스트박스 -->
                            <div class="mtext-box">
                                <div class="mtext01 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
                                    <p class="tx_line"></p>오늘의 <span>광주</span> 추천장소<p class="tx_line"></p>
                                </div>
                                <div class="mtext02 aos-init aos-animate" data-aos="fade-up">
                                    <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/main/icon_food_line.png?ver=3" alt="음식점"></p>
                                    <p class="mtext02_ttl">리비어밤코 (맥주,호프)</p>
                                    <p class="mtext02_line"></p>
                                    <p class="mtext02_text">광주 봉선동 세계 맥주를 즐길수 있는 애견동반 술집 리비어밤코</p>
                                </div>
                            </div>
                            <!--// 텍스트박스 -->
                        </div>
                    </div>
                    <div class="today_box bg_today swiper-slide" style="background: url(&quot;http://appdata.hungryapp.co.kr//images/hatdog/ar/201911/1572928602_M157292860248765108.jpg/hungryapp/resize/900&quot;) center center / cover no-repeat; width: 907px;" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=ar_info&amp;m2Code=ar_info&amp;mode=view&amp;idx=4491', 'H');" data-swiper-slide-index="15" role="group" aria-label="17 / 24">
                        <div class="mask">
                            <!-- 텍스트박스 -->
                            <div class="mtext-box">
                                <div class="mtext01 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
                                    <p class="tx_line"></p>오늘의 <span>제주시서부</span> 추천장소<p class="tx_line"></p>
                                </div>
                                <div class="mtext02 aos-init aos-animate" data-aos="fade-up">
                                    <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/main/icon_tourism_line.png?ver=3" alt="관광지"></p>
                                    <p class="mtext02_ttl">제주 월령리 선인장군락</p>
                                    <p class="mtext02_line"></p>
                                    <p class="mtext02_text">제주특별자치도 제주시 한림읍 월령리 해안에 분포해 있는 선인장 야생 군락.</p>
                                </div>
                            </div>
                            <!--// 텍스트박스 -->
                        </div>
                    </div>
                    <div class="today_box bg_today swiper-slide" style="background: url(&quot;http://appdata.hungryapp.co.kr//images/hatdog/ar/202001/1578271433_M157827143360025132.jpg/hungryapp/resize/900&quot;) center center / cover no-repeat; width: 907px;" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=ar_info&amp;m2Code=ar_info&amp;mode=view&amp;idx=4876', 'H');" data-swiper-slide-index="16" role="group" aria-label="18 / 24">
                        <div class="mask">
                            <!-- 텍스트박스 -->
                            <div class="mtext-box">
                                <div class="mtext01 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
                                    <p class="tx_line"></p>오늘의 <span>전라남도</span> 추천장소<p class="tx_line"></p>
                                </div>
                                <div class="mtext02 aos-init aos-animate" data-aos="fade-up">
                                    <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/main/icon_food_line.png?ver=3" alt="음식점"></p>
                                    <p class="mtext02_ttl">카페작금</p>
                                    <p class="mtext02_line"></p>
                                    <p class="mtext02_text">오션뷰가 아름다운 카페에요. 크림크로와상 당충전하기 좋아요~</p>
                                </div>
                            </div>
                            <!--// 텍스트박스 -->
                        </div>
                    </div>
                    <div class="today_box bg_today swiper-slide" style="background: url(&quot;http://appdata.hungryapp.co.kr//images/hatdog/ar/201912/1576630404_M157663040418059108.jpg/hungryapp/resize/900&quot;) center center / cover no-repeat; width: 907px;" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=ar_info&amp;m2Code=ar_info&amp;mode=view&amp;idx=4812', 'H');" data-swiper-slide-index="17" role="group" aria-label="19 / 24">
                        <div class="mask">
                            <!-- 텍스트박스 -->
                            <div class="mtext-box">
                                <div class="mtext01 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
                                    <p class="tx_line"></p>오늘의 <span>세종</span> 추천장소<p class="tx_line"></p>
                                </div>
                                <div class="mtext02 aos-init aos-animate" data-aos="fade-up">
                                    <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/main/icon_food_line.png?ver=3" alt="음식점"></p>
                                    <p class="mtext02_ttl">고복저택</p>
                                    <p class="mtext02_line"></p>
                                    <p class="mtext02_text">고복저수지에 유럽풍 복고 카페가 오픈하였습니다.</p>
                                </div>
                            </div>
                            <!--// 텍스트박스 -->
                        </div>
                    </div>
                    <div class="today_box bg_today swiper-slide" style="background: url(&quot;http://appdata.hungryapp.co.kr//images/hatdog/ar/201812/1545386196_M154538619653505108.jpg/hungryapp/resize/900&quot;) center center / cover no-repeat; width: 907px;" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=ar_info&amp;m2Code=ar_info&amp;mode=view&amp;idx=3366', 'H');" data-swiper-slide-index="18" role="group" aria-label="20 / 24">
                        <div class="mask">
                            <!-- 텍스트박스 -->
                            <div class="mtext-box">
                                <div class="mtext01 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
                                    <p class="tx_line"></p>오늘의 <span>강원도</span> 추천장소<p class="tx_line"></p>
                                </div>
                                <div class="mtext02 aos-init aos-animate" data-aos="fade-up">
                                    <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/main/icon_accommodation_line.png?ver=3" alt="숙소"></p>
                                    <p class="mtext02_ttl">엘까미노</p>
                                    <p class="mtext02_line"></p>
                                    <p class="mtext02_text">사천해변과 사천항 및 에디슨 과학 박물관의 인근에 위치하고 있는 엘까미노입니다.</p>
                                </div>
                            </div>
                            <!--// 텍스트박스 -->
                        </div>
                    </div>
                    <div class="today_box bg_today swiper-slide" style="background: url(&quot;http://appdata.hungryapp.co.kr//images/hatdog/ar/202106/1623308519_M162330851950384222.jpg/hungryapp/resize/900&quot;) center center / cover no-repeat; width: 907px;" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=ar_info&amp;m2Code=ar_info&amp;mode=view&amp;idx=7651', 'H');" data-swiper-slide-index="19" role="group" aria-label="21 / 24">
                        <div class="mask">
                            <!-- 텍스트박스 -->
                            <div class="mtext-box">
                                <div class="mtext01 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
                                    <p class="tx_line"></p>오늘의 <span>제주시동부</span> 추천장소<p class="tx_line"></p>
                                </div>
                                <div class="mtext02 aos-init aos-animate" data-aos="fade-up">
                                    <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/main/icon_food_line.png?ver=3" alt="음식점"></p>
                                    <p class="mtext02_ttl">파도소리해녀촌</p>
                                    <p class="mtext02_line"></p>
                                    <p class="mtext02_text">경치도 좋고 싱싱한 해산물로 만드는 메뉴가 가득한 맛집</p>
                                </div>
                            </div>
                            <!--// 텍스트박스 -->
                        </div>
                    </div>
                    <div class="today_box bg_today swiper-slide" style="background: url(&quot;http://appdata.hungryapp.co.kr//images/hatdog/ar/202111/1636349137_M163634913710890222.jpg/hungryapp/resize/900&quot;) center center / cover no-repeat; width: 907px;" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=ar_info&amp;m2Code=ar_info&amp;mode=view&amp;idx=8818', 'H');" data-swiper-slide-index="20" role="group" aria-label="22 / 24">
                        <div class="mask">
                            <!-- 텍스트박스 -->
                            <div class="mtext-box">
                                <div class="mtext01 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
                                    <p class="tx_line"></p>오늘의 <span>대구</span> 추천장소<p class="tx_line"></p>
                                </div>
                                <div class="mtext02 aos-init aos-animate" data-aos="fade-up">
                                    <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/main/icon_food_line.png?ver=3" alt="음식점"></p>
                                    <p class="mtext02_ttl">스커트케이크샵</p>
                                    <p class="mtext02_line"></p>
                                    <p class="mtext02_text">매장 위치는 시청옆 현대미주여행사 2층 입니다.</p>
                                </div>
                            </div>
                            <!--// 텍스트박스 -->
                        </div>
                    </div>
                    <div class="today_box bg_today swiper-slide" style="background: url(&quot;http://appdata.hungryapp.co.kr//images/hatdog/ar/202001/1578544182_M157854418260877132.jpg/hungryapp/resize/900&quot;) center center / cover no-repeat; width: 907px;" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=ar_info&amp;m2Code=ar_info&amp;mode=view&amp;idx=4909', 'H');" data-swiper-slide-index="21" role="group" aria-label="23 / 24">
                        <div class="mask">
                            <!-- 텍스트박스 -->
                            <div class="mtext-box">
                                <div class="mtext01 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
                                    <p class="tx_line"></p>오늘의 <span>부산</span> 추천장소<p class="tx_line"></p>
                                </div>
                                <div class="mtext02 aos-init aos-animate" data-aos="fade-up">
                                    <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/main/icon_food_line.png?ver=3" alt="음식점"></p>
                                    <p class="mtext02_ttl">갈삼구이</p>
                                    <p class="mtext02_line"></p>
                                    <p class="mtext02_text">부산에서만 즐길 수 있는 갈삼구이 한번도 안먹어 본 사람은 있어도 한번만 먹어보는 사람은 없을 정도로 단골이 많은 가게</p>
                                </div>
                            </div>
                            <!--// 텍스트박스 -->
                        </div>
                    </div>
                    <div class="today_box bg_today swiper-slide swiper-slide-duplicate" style="background: url(&quot;http://appdata.hungryapp.co.kr//images/hatdog/ar/201803/1521422782_1520159302_main01.jpg/hungryapp/resize/900&quot;) center center / cover no-repeat; width: 907px;" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=ar_info&amp;m2Code=ar_info&amp;mode=view&amp;idx=165', 'H');" data-swiper-slide-index="0" role="group" aria-label="24 / 24">
                        <div class="mask">
                            <!-- 텍스트박스 -->
                            <div class="mtext-box">
                                <div class="mtext01 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
                                    <p class="tx_line"></p>오늘의 <span>서귀포시서부</span> 추천장소<p class="tx_line"></p>
                                </div>
                                <div class="mtext02 aos-init aos-animate" data-aos="fade-up">
                                    <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/main/icon_tourism_line.png?ver=3" alt="관광지"></p>
                                    <p class="mtext02_ttl">안덕계곡</p>
                                    <p class="mtext02_line"></p>
                                    <p class="mtext02_text">'구가의 서' 촬영지이며, 제주의 아름다운 계곡 중 하나로 꼽히는 신비한 안덕계곡!</p>
                                </div>
                            </div>
                            <!--// 텍스트박스 -->
                        </div>
                    </div>
                </div> <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
            </div>
            <!--// 오늘의 추천장소 -->
            <!-- 이벤트배너 -->
            <div class="m_top_event swiper-container swiper_event swiper-container-fade swiper-container-initialized swiper-container-horizontal" style="border-radius:30px; background:#fff;">
                <div class="event_box pr swiper-wrapper" id="swiper-wrapper-b37b9428ca9a1ac5" aria-live="off" style="transition-duration: 0ms;"><a class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=ptnr&amp;m2Code=ptnr&amp;mode=view&amp;ptnr_idx=94', 'H');" data-swiper-slide-index="1" role="group" aria-label="1 / 4" style="width: 315px; transition-duration: 0ms; opacity: 1; transform: translate3d(0px, 0px, 0px);"><img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/202110/M163547463763417222.png"><img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/202110/M163547463763417222.png"></a> <a class="swiper-slide swiper-slide-prev swiper-slide-duplicate-next" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=ptnr&amp;m2Code=ptnr&amp;mode=view&amp;ptnr_idx=92', 'H');" data-swiper-slide-index="0" role="group" aria-label="2 / 4" style="width: 315px; transition-duration: 0ms; opacity: 1; transform: translate3d(-315px, 0px, 0px);"><img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/202110/M163488476217766222.png"><img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/202110/M163488476217766222.png"></a><a class="swiper-slide swiper-slide-active" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=ptnr&amp;m2Code=ptnr&amp;mode=view&amp;ptnr_idx=94', 'H');" data-swiper-slide-index="1" role="group" aria-label="3 / 4" style="width: 315px; transition-duration: 0ms; opacity: 1; transform: translate3d(-630px, 0px, 0px);"><img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/202110/M163547463763417222.png"><img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/202110/M163547463763417222.png"></a> <a class="swiper-slide swiper-slide-duplicate swiper-slide-next swiper-slide-duplicate-prev" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=ptnr&amp;m2Code=ptnr&amp;mode=view&amp;ptnr_idx=92', 'H');" data-swiper-slide-index="0" role="group" aria-label="4 / 4" style="width: 315px; transition-duration: 0ms; opacity: 0; transform: translate3d(-945px, 0px, 0px);"><img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/202110/M163488476217766222.png"><img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/202110/M163488476217766222.png"></a></div>
                <div class="event_box_btns pa"> <button type="button" class="button_prev2" tabindex="0" aria-label="Previous slide" aria-controls="swiper-wrapper-b37b9428ca9a1ac5">이전</button> <button type="button" class="button_stop2" onclick="$(this).hide();$('.button_start2').show();swiper_event.autoplay.stop();">정지</button> <button type="button" class="button_start2" onclick="$(this).hide();$('.button_stop2').show();swiper_event.autoplay.start();" style="display:none;float:left;background:url(http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/common/pop_play.png?ver=1) center center no-repeat;width:20px;height:25px;;text-indent:-100000%;">재생</button> <button type="button" class="button_next2" tabindex="0" aria-label="Next slide" aria-controls="swiper-wrapper-b37b9428ca9a1ac5">다음</button> <button type="button" class="button_all" onclick="location.href='?m2Code=main_popup' ">전체</button> </div> <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
            </div>
            <!--// 이벤트배너 -->
        </div>

        <!-- m06 여행앨범/여행노트 -->
        <div class="m_box6 area aos-init" data-aos="fade-up">
            <!-- 여행앨범 -->
            <div class="m_box6_album">
                <div class="m_box_ttlbox">
                    <h2 class="m_box_ttl"><span>추천</span> 여행앨범</h2>
                    <p><a class="m_box_more" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=album&amp;m2Code=album', 'H');">+ 더보기</a></p>
                </div>
                <div class="m_album_note_wrap">
                    <div class="m_album_box mgl_0" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=album&amp;m2Code=album_pic&amp;album_idx=717', 'H');">
                        <p class="m_album_listimg"><a><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202012/M16083440362472348.jpg/hungryapp/resize/290" alt=""></a></p>
                        <div class="m_album_profile">
                            <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/common/login_logoutimg.jpg/hungryapp/resize/50x50" alt=""></p>
                            <dl>
                                <dt>포비의 인생샷♡</dt>
                                <dd>송pb</dd>
                            </dl>
                        </div>
                    </div>
                    <div class="m_album_box mgr_0" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=album&amp;m2Code=album_pic&amp;album_idx=505', 'H');">
                        <p class="m_album_listimg"><a><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202012/M160751739702949184.jpg/hungryapp/resize/290" alt=""></a></p>
                        <div class="m_album_profile">
                            <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/common/login_logoutimg.jpg/hungryapp/resize/50x50" alt=""></p>
                            <dl>
                                <dt>사랑스러운 제제</dt>
                                <dd>즨실</dd>
                            </dl>
                        </div>
                    </div>
                    <div class="m_album_box mgl_0" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=album&amp;m2Code=album_pic&amp;album_idx=356', 'H');">
                        <p class="m_album_listimg"><a><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202009/M1600762942899255.jpg/hungryapp/resize/290" alt=""></a></p>
                        <div class="m_album_profile">
                            <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/202108/M16289940698072581.jpg/hungryapp/resize/50x50" alt=""></p>
                            <dl>
                                <dt>해미♡</dt>
                                <dd>해미아빠</dd>
                            </dl>
                        </div>
                    </div>
                    <div class="m_album_box mgr_0" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=album&amp;m2Code=album_pic&amp;album_idx=927', 'H');">
                        <p class="m_album_listimg"><a><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202109/M163100914115160194.jpg/hungryapp/resize/290" alt=""></a></p>
                        <div class="m_album_profile">
                            <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/202110/M163498345199754248.jpg/hungryapp/resize/50x50" alt=""></p>
                            <dl>
                                <dt>쪼꼬와 라떼</dt>
                                <dd>쪼꼬와라떼</dd>
                            </dl>
                        </div>
                    </div>
                </div>
            </div>
            <!--// 여행앨범 -->
            <!-- 여행노트 -->
            <div class="m_box6_note">
                <div class="m_box_ttlbox">
                    <h2 class="m_box_ttl"><span>BEST</span> 여행노트</h2>
                    <p><a class="m_box_more" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=note&amp;m2Code=note', 'H');">+ 더보기</a></p>
                </div>
                <div class="m_album_note_wrap">
                    <div class="m_album_box mgl_0" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=note&amp;m2Code=note&amp;mode=view&amp;note_idx=556', 'H');">
                        <p class="m_album_listimg"><a><img src="http://appdata.hungryapp.co.kr/images/hatdog/note/202107/M16258852318706090.jpg/hungryapp/resize/290" alt=""></a></p>
                        <div class="m_album_profile">
                            <p> <img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/202107/M16258856687949490.jpg/hungryapp/resize/50x50" alt=""> </p>
                            <dl>
                                <dt>첫생일파티</dt>
                                <dd>지혀니이</dd>
                            </dl>
                        </div>
                    </div>
                    <div class="m_album_box mgr_0" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=note&amp;m2Code=note&amp;mode=view&amp;note_idx=563', 'H');">
                        <p class="m_album_listimg"><a><img src="http://appdata.hungryapp.co.kr/images/hatdog/note/202107/M16270010211649110.jpg/hungryapp/resize/290" alt=""></a></p>
                        <div class="m_album_profile">
                            <p> <img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/202104/M161864582375040241.jpg/hungryapp/resize/50x50" alt=""> </p>
                            <dl>
                                <dt>연천 위드독펜션 2박3일</dt>
                                <dd>기린짱츄</dd>
                            </dl>
                        </div>
                    </div>
                    <div class="m_album_box mgl_0" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=note&amp;m2Code=note&amp;mode=view&amp;note_idx=557', 'H');">
                        <p class="m_album_listimg"><a><img src="http://appdata.hungryapp.co.kr/images/hatdog/note/202107/M16259757634888352.jpg/hungryapp/resize/290" alt=""></a></p>
                        <div class="m_album_profile">
                            <p> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/common/login_logoutimg.jpg/hungryapp/resize/50x50" alt=""> </p>
                            <dl>
                                <dt>카페 넘 좋았어요.</dt>
                                <dd>겁보까미의성장일</dd>
                            </dl>
                        </div>
                    </div>
                    <div class="m_album_box mgr_0" onclick="page_move('http://hatdog.co.kr/pc_hatdog/?m1Code=note&amp;m2Code=note&amp;mode=view&amp;note_idx=569', 'H');">
                        <p class="m_album_listimg"><a><img src="http://appdata.hungryapp.co.kr/images/hatdog/note/202108/M16280456440390059.jpg/hungryapp/resize/290" alt=""></a></p>
                        <div class="m_album_profile">
                            <p> <img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/202107/M16262285655791315.jpg/hungryapp/resize/50x50" alt=""> </p>
                            <dl>
                                <dt>우비의 통영여행</dt>
                                <dd>코코우비</dd>
                            </dl>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- footer -->
    <jsp:include page="./footer.jsp"/>
	<!-- //footer -->

</body>

</html>