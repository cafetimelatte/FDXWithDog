<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Review</title>
<link rel='shortcut icon'
	href='http://appdata.hungryapp.co.kr/images/hatdog/img/intro/00_hatdog_logo.ico'>
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
	<jsp:include page="../header.jsp" />
	<!-- //header -->

	<div class="h21_my_mc_w2 pr area">
		
		<div class="h21_com_allnb_name2">
			문의 관리자 페이지
		</div>

		<!-- blist_event -->
		<table class="h21_blist" summary="No, 제목, 작성일을 제공하는 리스트">
			<caption>공지사항 리스트</caption>
			<colgroup>
				<col width="5%">
				<col width="76%">
				<col width="12%">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">No</th>
					<th scope="col">제목</th>
					<th scope="col">작성일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="csmanageList" items="${cslist}">
					<tr onclick="togleimg(206)">
						<td>&nbsp;&nbsp;&nbsp;&nbsp;
							${csmanageList.cs_id}</td>
						<td class="tb_tit_on" id="tb_tit_206">${csmanageList.cs_title}</td>
						<td>${csmanageList.cs_regidate}</td>
					</tr>
					<tr class="h21_list_notice_a" id="notice_a_206"
						style="display: table-row;">
						<td colspan="4">
							<div class="h21_list_notice_info">
								<div>회원명 : ${csmanageList.m_id}</div>
								<div>${csmanageList.cs_content}</div>
							</div>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<c:if test="${empty cslist}">
			<h1 style="text-align:center;margin:40px 0 40px 0;">대기중인 민원이 없습니다.</h1>
		</c:if>
	</div>
</body>
</html>