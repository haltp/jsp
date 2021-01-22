<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function passcheck() {
		var form = document.frm;
		var pw = form.pw.value;
		var pw1 = form.pw1.value;

		if (pw == pw1) {
			form.submit();
		} else {
			alert("패스워드가 일치하지 않습니다!!!");
			form.pw.value = "";
			form.pw1.value = "";
			form.pw.focus();
		}
	}
</script>
</head>
<body>
	<jsp:include page="../common/menu.jsp" />
	<div align="center">
		<div>
			<h1>회 원 가 입</h1>
			<div>
				<form id="frm" name="frm" action="../../MemberRegister" method="post">
					<div>
						<table border="1">
							<tr>
								<th width="100">이 름</th>
								<td><input type="text" id="name" name="name" size="35"></td>
							</tr>
							<tr>
								<th width="100">아 이 디</th>
								<td><input type="text" id="id" name="id" size="35"></td>
							</tr>
							<tr>
								<th width="100">패스워드</th>
								<td><input type="password" id="pw" name="pw" size="35"></td>
							</tr>
							<tr>
								<th width="100">패스워드 확인</th>
								<td><input type="password" id="pw1" name="pw1" size="35"></td>
							</tr>
							<tr>
								<th width="100">취 미</th>
								<td><input type="checkbox" id="hobbys" name="hobbys" value="등산" checked="checked">등산
									<input type="checkbox" id="hobbys" name="hobbys" value="낚시">낚시
									<input type="checkbox" id="hobbys" name="hobbys" value="스포츠">스포츠
									<input type="checkbox" id="hobbys" name="hobbys" value="돌보기">돌보기</td>
							</tr>
							<tr>
								<th width="100">성 별</th>
								<td><input type="radio" id="gender" name="gender" value="남자" checked="checked">남자
									<input type="radio" id="gender" name="gender" value="여자">여자</td>
							</tr>
							<tr>
								<th width="100">전화번호</th>
								<td><input type="tel" id="tel" name="tel" size="35"></td>
							</tr>
						</table>
					</div>
					<br/>
					<button type="button" onclick="passcheck()">회원가입</button>
					&nbsp;&nbsp;&nbsp;
					<button type="reset">취소하기</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>