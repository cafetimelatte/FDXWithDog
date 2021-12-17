<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" pageEncoding="utf-8"%>
<html>
<head>
<title>Home</title>
</head>
<body>

	<form action="registerAction">
		<input type="text" name="id" id="id" placeholder="아이디입력"/><br/>
		<input type="text" name="name" id="name" placeholder="이름입력"/><br/>
		<input type="text" name="age" id="age" placeholder="나이"/><br/>
		<input type="submit" value="완료"/>
	</form>
	<form action="serchUserPw" method="post">
		<input type="text" name="email" id="email" placeholder="이메일입력하세요"/><br/>
		<input type="submit" value="완료"/>
	</form>
	
	<c:forEach items="${findList}" var="findList">
	${findList.m_id}<br/>
	${findList.m_nick}
	${msg}
	</c:forEach>
	
	<p>${searchPw}</p>

	
	
</body>
</html>
