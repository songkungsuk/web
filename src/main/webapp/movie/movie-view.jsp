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
	String miNum = request.getParameter("MI_NUM");
	Connection con = dbCon.getCon();
	Statement stmt = con.createStatement();
	String sql = "SELECT MI_NUM, MI_TITLE, MI_DESC, MI_GENRE, MI_CREDAT, MI_CNT FROM movie_info";
	sql += " WHERE MI_NUM = " + miNum;

	ResultSet rs = stmt.executeQuery(sql);
	if (rs.next()) {
	%>
	<form action="">
		<table border="1">
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
			<tr>
				<td colspan="2"><button type="button" onclick="location.href='<%=root%>/movie/movie-update.jsp?miNum=<%=rs.getString("MI_NUM")%>'">수정</button></td>
			</tr>
		</table>

	</form>
	<%
	} else {
	%>
	<script type="text/javascript">
		alert("이미 삭제된 게시물 입니다");
		location.href="<%=root%>
		/movie/movie-list.jsp";
	</script>

	<%
	}
	%>

</body>
</html>