<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.web.common.dbCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="/include/common.jsp" %>

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
			<td>제목</td>
			<td>설명</td>
			<td>장르</td>
			<td>상영일</td>	
			<td>관객수</td>
			<td>옵션</td>
		</tr>
		<%
		Connection con = dbCon.getCon();
		String sql = "SELECT MI_NUM, MI_TITLE, MI_DESC, MI_GENRE, MI_CREDAT, MI_CNT FROM movie_info";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString("MI_NUM") %></td>
			<td><a href="<%=root%>/movie/movie-view.jsp?MI_NUM=<%=rs.getString("MI_NUM")%>"><%=rs.getString("MI_TITLE") %></a></td>
			<td><%=rs.getString("MI_DESC") %></td>
			<td><%=rs.getString("MI_GENRE") %></td>
			<td><%=rs.getString("MI_CREDAT") %></td>
			<td><%=rs.getString("MI_CNT") %></td>
			<td><button type="button" onclick="location.href='<%=root%>/movie/movie-delete.jsp?miNum=<%=rs.getString("MI_NUM")%>'">삭제</button></td>
		</tr>
		<%
		}
		%>
		<tr>
		<td colspan="7"><button type="button" onclick="location.href='<%=root%>/movie/movie-insert.jsp'">신규</button></td>
		</tr>
	</table>
</body>
</html>