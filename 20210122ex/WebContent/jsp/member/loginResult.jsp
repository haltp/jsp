<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../common/menu.jsp" />
	<div align="center">
		<h1>여기는 로그인 결과를 보여주는 페이지입니다</h1>
		입력한 아이디 : ${param.id } <br /> 
		입력한 패스워드 : ${param.pw } <br /> 
		<h2>${param.id}${msg}</h2>
	</div>
</body>
</html>