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
	<%
	String miNum = request.getParameter("miNum");
	Connection con = dbCon.getCon();
	Statement stmt = con.createStatement();
	String sql = "SELECT MI_NUM, MI_TITLE, MI_DESC, MI_GENRE, MI_CREDAT, MI_CNT FROM movie_info";
	sql += " WHERE MI_NUM = " + miNum;
	ResultSet rs = stmt.executeQuery(sql);
	if(rs.next()){
		%>
	<form action="<%=root%>/movie/movie-update-ok.jsp" method="POST">
		<input type="hidden" id="miNum" name="miNum" value="<%=miNum%>">
		<table border="1">
			<tr>
				<td>제목</td>
				<td><input type="text" id="miTitle" name="miTitle" value="<%=rs.getString("MI_TITLE")%>"></td>
			</tr>
			<tr>
				<td>설명</td>
				<td><input type="text" id="miDesc" name="miDesc" value="<%=rs.getString("MI_DESC")%>"></td>
			</tr>
			<tr>
				<td>장르</td>
				<td><input type="text" id="miGenre" name="miGenre" value="<%=rs.getString("MI_GENRE")%>"></td>
			</tr>
			<tr>
				<td>조회수</td>
				<td><input type="text" id="miCnt" name="miCnt" value="<%=rs.getString("MI_CNT")%>"></td>
			</tr>
			<tr>
				<td><button onclick="location.href='<%=root%>/movie/movie-update-ok.jsp'">수정</button></td>
			</tr>
		</table>
	</form>
	<%	
	}
	%>
</body>
</html>