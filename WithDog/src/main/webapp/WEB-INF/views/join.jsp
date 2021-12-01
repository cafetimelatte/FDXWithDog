<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>join</title>

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
    
	<style>
		.join{
			margin-bottom: 10px;
			margin-left: 450px;
		}
		.join label{
			display: inline-block;
			margin-bottom: 2px;
			font-size: 15px;
			width: 100px;
			
		}
		.join input{
			width:200px;
			height:25px;
			margin-bottom: 1px;
		}
		.join select{
			width:100px;
			height:30px;
			text-align:right;
			padding-right:10px;
			margin-bottom: 1px;
		}
	</style>
</head>

<body>
    <header id="header" class="pr">
        <div id="headerInnerWrap">
            <!-- ****************** 헤더상단 ********************** -->
            <div id="headerTop">
                <div class="area">
                    <p class="top_text">반려견과 함께 위드독에 오신것을 환영 합니다.</p>
                    <ul>
                       <li class="line">|</li>
						<li class=""><a onclick="location.href='login'">로그인 </a></li>
						<li class="line">|</li>
						<li class=""><a onclick="">공지사항</a></li>
						<li class="line">|</li>
						<li class=""><a onclick="location.href=''">고객센터</a></li>
                    </ul>
                </div>
            </div>
            <div id="headerInner" class="clearfix">
                <div class="area">
                    <h1 class="logo">
                        <a onclick="location.href='/ex00/'">
                            <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/common/logo.png" alt="위드독">
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
            <!-- ****************** GNB ********************** -->
            <!-- GNB PC -->

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
    
    <form action="join.do" method="post">
    <div class="s21_event_m_top pr" style="height:800px">
		<div class="h21_top_cbox pr area">
			<h3 class="" style="height:230px">회원가입</h3>
			<p class="s21_h3_line"></p>
			<p class="s21_h3_text">
				<div class="join">
					<label>이메일</label>
  					<input type="text" name="email" placeholder="이메일을 입력하세요"> @ <select name="last_email">
	                <option value="@gmail.com">gmail.com</option><option value="@naver.com">naver.com</option>
	            </select>		
				</div>
				<div class="join">
					<label>비밀번호</label>
					<input type="password" name="pw" id="pw"/>			
				</div>
				<div class="join">
					<label>비밀번호 확인</label>
					<input type="password" name="pwck" id="pwck"/>
				</div>
				<div class="join">
					<label>닉네임</label>
					<input type="text" name="nick" id="nick"/>
				</div>
				<div class="join">
					<label>성명</label>
					<input type="text" name="name" id="name"/>
				</div>
				<div class="join">
					<label>생년월일</label>
		            <input style="width:110px" type="text" name="brith" placeholder="년도 입력"/>
		            <select style="width:110px" name="mo">
		                <option value="">월</option><option value="01">1</option><option value="02">2</option><option value="03">3</option><option value="04">4</option>
		                <option value="05">5</option><option value="06">6</option><option value="07">7</option><option value="08">8</option><option value="09">9</option>
		                <option value="10">10</option><option value="11">11</option><option value="12">12</option>
		            </select>
		            <select style="width:110px" name="day">
		                <option value="">날짜</option><option value="01">1</option><option value="02">2</option><option value="03">3</option><option value="04">4</option>
		                <option value="05">5</option><option value="06">6</option><option value="07">7</option><option value="08">8</option><option value="09">9</option>
		                <option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option>
		                <option value="15">15</option> <option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option>
		                <option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option>
		                <option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option>
		                <option value="30">30</option><option value="31">31</option>
		            </select>
				</div>
				<div class="join">
		            <label>전화번호</label>
		            <input style="width:100px" type="text" name="phone1" placeholder="010"/> - <input style="width:100px" type="text" name="phone2"/> - <input style="width:100px" type="text" name="phone3"/>
				</div>
				<div class="join">
					<label>주소</label>
					<select name="addr1">
						<option value="">시</option>
						<option value="서울시">서울시</option>
						<option value="인천광역시">인천광역시</option>
						<option value="부산광역시">부산광역시</option>
						<option value="광주광역시">광주광역시</option>
					</select>
					<select name="addr2">
						<option value="">구</option>
						<option value="구로구">구로구</option>
						<option value="성동구">성동구</option>
						<option value="강남구">강남구</option>
						<option value="영등포구">영등포구</option>
					</select>
				</div>
				<div class="join">
					<label>상세주소</label>
					<input type="text" name="addr3" id="addr3"/>
				</div>
				<div class="join">
					<input type="submit" name="submit" onclick="location.href='home'"  value="가입"/>
					<input type="reset" name="cancel" value="취소"/>
				</div>
		</div>
	</div>
	</form>
    
    	
    <!-- footer -->
    <div id="footer">
        <div class="footerBottom area">
            <div class="footerBottom_left">
                <p>(주)스마트나우 전주지사 주소 : 전라북도 전주시 완산구 현무1길 9 (케이티전주지사3층) 대표이사 : 송현두 | 사업자등록번호: 402-85-34440<br>
                    이메일 : dju@smartnow.co.kr
                </p>

                <address>Copyright STYLE II. All rights reserved.</address>
            </div>
            <ul class="footerBottom_right">
                <li><a href="http://hatdog.co.kr/pc_hatdog/?m1Code=etc&m2Code=policy" target="_top">이용약관</a></li>
                <li><a href="http://hatdog.co.kr/pc_hatdog/?m1Code=etc&m2Code=policy2" target="_top">개인정보처리방침</a></li>
            </ul>
        </div>
    </div>

</body>
</html>