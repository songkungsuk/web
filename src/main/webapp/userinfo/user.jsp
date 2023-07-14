<%@page import="java.sql.ResultSet"%>
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
	<jsp:include page="/include/header.jsp" />
	<table border="1">
		<tr>
			<td>번호</td>
			<td>아이디</td>
			<td>패스워드</td>
			<td>이름</td>
		</tr>
		<%
		Connection con = dbCon.getCon();
		Statement stmt = con.createStatement();
		String sql = "SELECT UI_NUM, UI_ID, UI_PWD, UI_NAME FROM USER_INFO";
		ResultSet rs = stmt.executeQuery(sql);
		while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getInt("UI_NUM")%></td>
			<td><a href="<%=root%>/userinfo/user-view.jsp?UI_NUM=<%=rs.getInt("UI_NUM")%>"><%=rs.getString("UI_ID")%></a></td>
			<td><%=rs.getString("UI_PWD")%></td>
			<td><%=rs.getString("UI_NAME")%></td>
		</tr>

		<%
		}
		%>
	</table>
</body>
</html>