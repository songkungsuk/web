<%@page import="java.sql.Statement"%>

<%@page import="com.web.common.dbCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/include/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/include/header.jsp"></jsp:include>
	<h3>회원가입페이지</h3>
	<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");

	if (id != null && id.length() != 0) {
		out.println("id : " + id + "<br>");
		out.println("pw : " + pw + "<br>");
		out.println("name : " + name + "<br>");
		Connection con = dbCon.getCon();
		Statement stmt = con.createStatement();
		String sql = "INSERT INTO USER_INFO (UI_ID, UI_PWD, UI_NAME)";
		sql += "VALUES('" + id + "', '" + pw + "', '" + name + "')";
		int result = stmt.executeUpdate(sql);

		if (result == 1) {
			out.print("완료된 것들 " + result + "<br>");
	%>

	<script type="text/javascript">
	alert("<%=name%>
		님 회원가입이 성공하였습니다. 로그인을 해주세요.");
		location.href = "/web/login.jsp";
	</script>

	<%
	}
	}
	%>
	<form>
		<label for="id">아이디</label><br> <input type="text" name="id"
			id="id"></input><br> <label for="pw">비밀번호</label><br> <input
			type="text" name="pw" id="pw"></input><br> <label for="name">이름</label><br>
		<input type="text" name="name" id="id"></input><br>
		<button type="submit">Confirm</button>
	</form>
</body>
</html>