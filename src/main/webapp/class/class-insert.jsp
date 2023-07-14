<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.web.common.dbCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>class</title>
</head>
<body>
	<form action="">
		<label for="className">이름</label> <br> <input type="text"
			id="className" name="className"> <br> <label
			for="classDesc">DESC</label> <br> <input type="text"
			id="classDesc" name="classDesc"> <br>
		<button>submit</button>
	</form>
	<table border="1">
		<%
		String name = request.getParameter("className");
		String desc = request.getParameter("classDesc");

		if (name != null && name.length() != 0) {
			Connection con = dbCon.getCon();
			Statement stmt = con.createStatement();
			String sql = "INSERT INTO Class_Info(CI_NAME, CI_DESC) VALUES ('" + name + "','" + desc + "')";
			int result = stmt.executeUpdate(sql);

			if (result == 1) {
		%>
		<script type="text/javascript">
			alert("<%=name%>님의 회원가입이 완료되엇습니다.");
			location.href = "/web/class/class-insert.jsp";
		</script>
		<%
		}
		}
		%>
	</table>
</body>
</html>