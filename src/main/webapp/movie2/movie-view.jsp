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
		<%
		String miNum = request.getParameter("miNum");
		Connection con = dbCon.getCon();
		Statement stmt = con.createStatement();
		String sql = "SELECT MI_NUM, MI_TITLE, MI_DESC, MI_GENRE, MI_CREDAT, MI_CNT FROM movie_info WHERE MI_NUM = " + miNum;
		ResultSet rs = stmt.executeQuery(sql);
		if (rs.next()) {
		%>
		<tr>
			<td>제목</td>
			<td><%=rs.getString("MI_TITLE")%></td>
		</tr>
		<tr>
			<td>설명</td>
			<td><%=rs.getString("MI_DESC")%></td>
		</tr>
		<tr>
			<td>장르</td>
			<td><%=rs.getString("MI_GENRE")%></td>
		</tr>
		<tr>
			<td>만든날짜</td>
			<td><%=rs.getString("MI_CREDAT")%></td>
		</tr>
		<tr>
			<td>조회수</td>
			<td><%=rs.getString("MI_CNT")%></td>
		</tr>
		<tr><td colspan="2"><button onclick="location.href='<%=root%>/movie2/movie-update.jsp?miNum=<%=rs.getString("MI_NUM")%>'">수정</button></td></tr>
		<%
		}
		%>
	</table>
</body>
</html>