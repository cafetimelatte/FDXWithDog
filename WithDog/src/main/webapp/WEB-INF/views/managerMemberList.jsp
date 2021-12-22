<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WithDog</title>

    <link rel='shortcut icon' href='http://appdata.hungryapp.co.kr/images/hatdog/img/intro/00_hatdog_logo.ico'>
    <link rel="stylesheet" href="css/sub_j.css">
    <link rel="stylesheet" href="css/sub_h.css">
    <link rel="stylesheet" href="css/sub.css">
    <link rel="stylesheet" href="css/default.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/layout.css">
    <link rel="stylesheet" href="css/shot.css">
    <link rel="stylesheet" href="css/swiper-bundle.min.css">
    <link rel="stylesheet" href="./resources/css/join.css">

    <script src="js/swiper-bundle.min.js"></script>
	<script src="js/verification.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="js/criteria.js"></script>
	<script>
	$(function(){
		$('#managerUpdate').click(function(){
	 		/*  var arr = new Array();
			<c:forEach items="${memberList}" var="memberList">
				arr.push({
					m_id:"${memberList.m_id}"
				});
			</c:forEach>
			for(var i = 0; i < arr.length; i++){
				alert(arr[i].m_id);
			} */  
			var m_id = document.querySelector('.tb_menu');
			alert(m_id);
			/* var m_nick = prompt("수정할 닉네임입력.","");
			 $.ajax({
					url: 'memberNickUpdate',
					type: 'post',
					data: {'m_nick' : m_nick},
					success: function(msg){
						alert(msg);
						location.replace(location.href);
					}
			}); */
		});
	});
	
	
	$('.btn btn--orange').click(function(){
		alert(this);
	});
	
	$(function(){
		$('#managerDelete').click(function(){		
			alert('삭제');			
		});
	});
	</script>
    
    <style type="text/css">
    	.reserved:hover {
    		background-color: #FAED7D;
    	}
    </style>
    
</head>
<body>
	<input type="hidden" id="executeAjax">
	<!-- header -->
	<jsp:include page="./header.jsp"/>
	<!-- //header -->
    <!-- container -->
    <div id="Container">
        <div class="sContainer">
            <!-- sub m top -->
            <div class="s21_tour_de_top">
                <h3 class="area" style="height:60px; left: 50px;">회원 관리
					<form name="search" style="float:right;">
		               	<select name="category" id="category" style="text-align:center;height:25px;width:80px">
		               		<option value="m_id">회원이메일</option>
		               		<option value="m_nick">회원닉네임</option>
		               	</select>
		               	<input name="field" id="field" style="height:20px" type="text">
		               	<button type="button" style="border:1px solid black;background-color:#EAEAEA;height:25px;width:40px" id="search">검색</button>
	               	</form>
                </h3>
					<c:forEach items="${memberList}" var="memberList" varStatus="i">
						<table class="h21_blist" summary="리스트">
								<caption>WithDog 회원목록</caption>
								 <colgroup>
									<col width="5%">
									<col width="12%">
									<col width="10%">
									<col width="10%">
									<col width="20%">
									<col width="8%">
								</colgroup> 
								<thead>
									<tr>
										<th scope="col">No</th>
										<th scope="col">회원 아이디</th>
										<th scope="col">회원 닉네임</th>
										<th scope="col">회원 휴대폰번호</th>
										<th scope="col">회원 가입날짜</th>
										<th scope="col">기타</th>										
									</tr>
								</thead>
								<tbody>
									<tr>
										<td style="text-align: center;">${i.count}</td>
										<td style="text-align: center;" class="tb_menu">${memberList.m_id}</td>
										<td style="text-align: center;" id="nick" name="nick">${memberList.m_nick}</td>
										<td style="text-align: center;" class="tb_tit">${memberList.m_phone}</td>
										<td style="text-align: center;" class="">${memberList.m_regidate}</td>
										<td style="text-align: center;"><button class="btn btn--orange" id="managerUpdate">수정</button><button class="btn btn--orange" id="managerDelete">삭제</button></td>
									</tr>
								</tbody>
							</table>
					</c:forEach>
			</div>
		        <!-- paging s -->
				<div class="s21_page">
					<div class="s21_pagination jquery-paging" style="margin-left: 410px;" id="PageNav">
					</div>
				</div>
				<!--// paging e -->
			</div>
            <!--// sub m top -->
        </div>
    <!-- //container -->
	<!-- footer -->
    <jsp:include page="./footer.jsp"/>
	<!-- //footer -->
</body>

</html>