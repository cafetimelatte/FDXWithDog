<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정</title>
</head>
<body>
	<h2>update page</h2>
	<form name = "update" method = "POST" action ="${path}updatePro">
		<div>게시번호 : ${detail.mb_id}<input type="hidden" name="mb_id" value="${detail.mb_id}"/></div>
		<div>닉네임 : ${detail.m_id}<input type="hidden" name="m_id" value="${detail.m_id}"/></div>
		<div>조회수 : ${detail.mb_hit}<input type="hidden" name="mb_hit" value="${detail.mb_hit}"/></div>
		<div>날짜 : ${detail.mb_regidate}</div>
		<div>제목 : ${detail.mb_title}</div>
		<div>
			<input name = "mb_title" value="${detail.mb_title}" type="text" />
		</div>
		<div>내용 : ${detail.mb_content}</div>
		<div>
			<input name = "mb_content" value="${detail.mb_content}" type="text" />
		</div>
		
		<div>
			<input type = "submit" value="완료" />
			<input type = "reset" value="리셋" />
		</div>
	</form>
</body>
</html>