<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UserInfo</title>
<link rel="incon" type=image/x-icon href="/web/images/favicon.ico">
</head>
<%
Class.forName("org.mariadb.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/kd", "root", "kd1824java");
Statement stmt = con.createStatement();
//user_info table select sql 
String sql = "SELECT * FROM USER_INFO";
ResultSet rs = stmt.executeQuery(sql);
%>
<body>
	<table border="1">
		<tr>
			<th>유저 번호</th>
			<th>유저 아이디</th>
			<th>유저 비밀번호</th>
			<th>유저 이름</th>
		</tr>
		<%
		while (rs.next()) {
			%>
			<%="<tr>" %>
			<%="<td>" + rs.getString("UI_NUM")+ "</td>" %>
			<%="<td>" + rs.getString("UI_ID")+ "</td>" %>
			<%="<td>" + rs.getString("UI_PWD")+ "</td>" %>
			<%="<td>" + rs.getString("UI_NAME")+ "</td>" %>
			<%="</tr>" %>

		<%
		}
		%>
		<tr>
			<td colspan="4" align="center"><button>확인</button></td>
		</tr>
	</table>
</body>
</html>