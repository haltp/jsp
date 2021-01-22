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
<h1>여기는 회원가입 결과를 보여주는 페이지입니다</h1>
입력한 이름 : ${param.name } <br/>
입력한 아이디 : ${param.id } <br/>
입력한 패스워드 : ${param.pw } <br/>
입력한 취 미 : ${paramValues.hobbys[0] } ${paramValues.hobbys[1] } ${paramValues.hobbys[2] } ${paramValues.hobbys[3] } ${paramValues.hobbys[4] } <br/>
입력한 성 별 : ${param.gender } <br/>
입력한 전화번호 : ${param.tel } <br/>
<h2>${param.name}${msg}</h2>
</div>
</body>
</html>