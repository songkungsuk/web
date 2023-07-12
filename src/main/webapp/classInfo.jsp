<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" type="images/x-icon" href="/web/images/favicon.ico">
</head>
<%
Class.forName("org.mariadb.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/kd", "root", "kd1824java");
Statement stmt = con.createStatement();
String sql = "SELECT * FROM Class_info";
ResultSet rs = stmt.executeQuery(sql);
%>
<body>
	<table border="1">
		<tr>
			<td>NUM</td>
			<td>NAME</td>
			<td>DESC</td>
		</tr>

		<%
		while (rs.next()) {
		%>
		<%="<tr>"%>
		<%="<td>" + rs.getString("CI_NUM") + "<td>"%>
		<%="<td>" + rs.getString("CI_NAME") + "<td>"%>
		<%="<td>" + rs.getString("CI_DESC") + "<td>"%>
		<%="</tr>"%>

		<%
		}
		%>
	</table>
</body>
</html>