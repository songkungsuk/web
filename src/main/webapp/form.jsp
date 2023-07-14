<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String uiId = request.getParameter("id");
	String uiPw = request.getParameter("pw");
	if (uiId != null) {

		out.print("uiId : " + uiId + "<br>");
		out.print("uiPw : " + uiPw + "<br>");
	}
	%>
	<form>
		<label for="uiId">아이디</label> <input type="text" id="ui" name="id"></input><br>
		<label for="uiPw">비밀번호</label> <input type="password" id="ui"
			name="pw"></input><br>
		<button>commit</button>
	</form>
</body>
</html>