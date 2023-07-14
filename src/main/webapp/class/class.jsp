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
			<td>이름</td>
			<td>DESC</td>
		</tr>
		<%
		Connection con = dbCon.getCon();
		Statement stmt = con.createStatement();
		String sql = "SELECT CI_NUM, CI_NAME, CI_DESC FROM Class_Info";
		ResultSet rs = stmt.executeQuery(sql);
		while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getInt("CI_NUM")%></td>
			<td><a href="<%=root%>/class/class-view.jsp?CI_NUM=<%=rs.getInt("CI_NUM")%>"><%=rs.getString("CI_NAME")%></a></td>
			<td><%=rs.getString("CI_DESC")%></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>