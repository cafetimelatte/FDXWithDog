<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header id="header" class="pr">
	<div id="headerInnerWrap">
		<div id="headerTop">
			<div class="area">
				<p class="top_text">반려동물과 함께 위드독에 오신것을 환영 합니다.</p>
					<ul>
						<li class="line">|</li>
						<c:choose>
							<c:when test="${loginRs eq 1}">
								<c:if test="${loginEmail eq 'admin@gmail.com'}">
									<li class=""><a onclick="location.href='logout'">로그아웃 </a></li>
									<li class="line">|</li>
									<li class="">${loginEmail}</li>
									<li class="line">|</li>
									<li class=""><a onclick="location.href='hotelListM'">숙소관리</a></li>
									<li class="line">|</li>
									<li class=""><a onclick="location.href='bookingListM'">예약관리</a></li>
									<li class="line">|</li>
									<li class=""><a onclick="location.href='ReviewPageM?num=1'">앨범관리</a></li>
									<li class="line">|</li>
									<li class=""><a onclick="location.href='csmanageList'">고객센터</a></li>
								</c:if>
								<c:if test="${loginEmail ne 'admin@gmail.com'}">
									<li class=""><a onclick="location.href='logout'">로그아웃 </a></li>
									<li class="line">|</li>
									<li class="">${loginEmail}</li>
									<li class="line">|</li>
									<li class=""><a onclick="location.href='myPage'">마이페이지</a></li>
								</c:if>
							</c:when>
							<c:otherwise>
									<li class=""><a onclick="location.href='login'">로그인 </a></li>
									<li class="line">|</li>
									<li class=""><a onclick="location.href='join'">회원가입</a></li>
									<li class="line">|</li>
									<li class=""><a onclick="location.href='CslistPage'">고객센터</a></li>
							</c:otherwise>
						</c:choose>
				</ul>		
			</div>
		</div>
		<div id="headerInner" class="clearfix">
			<div class="area">
				<h1 class="logo">
					<a onclick="location.href='/WithDog'">
						<img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/common/logo.png"
						alt="하트독">
					</a>
				</h1>
				<div class="s21_w1422 pr">
					<div class="s_search">
						<form id="h_search" action="hotelList" method="get">
							<input type="text" class="SearchInput" name="f"
								placeholder="어디에서 무엇을 하고 싶으세요?" title="">
							<button class="j21_btn_search" type="submit" form="h_search">
								<a>
									<img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/common/ico_search.png"
									alt="검색">
								</a>
							</button>
						</form>
					</div>
				</div>
			</div>
		</div>
		<nav id="gnb">
			<h2 class="blind">주메뉴</h2>
			<div class="gnb-wrapper area">
				<ul class="clearfix">
					<li class="" onclick="Store.clear()"><a
						onclick="top.location.href='/WithDog';"><span>전체보기</span></a></li>
					<li class="" onclick="Store.clear()"><a
						onclick="top.location.href='hotelList';"><span>숙소</span></a></li>
					<li class="" onclick="Store.clear()"><a
						onclick="top.location.href='ReviewPage?num=1';"><span>여행앨범</span></a></li>
				</ul>
			</div>
		</nav>
	</div>
</header>