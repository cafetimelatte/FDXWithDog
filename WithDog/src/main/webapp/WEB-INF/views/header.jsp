<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<header id="header" class="pr">
	<div id="headerInnerWrap">
		<div id="headerTop">
			<div class="area">
				<p class="top_text">반려견과 함께 하트독에 오신것을 환영 합니다.</p>
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
						<img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/common/logo.png"
						alt="하트독">
					</a>
				</h1>
				<div class="s21_w1422 pr">
					<a onclick="Store.clear(); top.location.href='http://hatdog.co.kr/pc_hatdog/';"></a>
					<div class="s_search">
						<input type="text" class="SearchInput" name="h_sch_text"
							id="h_sch_text" placeholder="어디에서 무엇을 하고 싶으세요?" title="">
						<span class="j21_btn_search" onclick="Store.clear();go_arinfo();">
							<a>
								<img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/common/ico_search.png"
								alt="검색">
							</a>
						</span>
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