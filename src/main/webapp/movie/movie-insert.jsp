<%@page import="java.sql.PreparedStatement"%>
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
	String miTitle = request.getParameter("miTitle");
	String miDesc = request.getParameter("miDesc");
	String miGenre = request.getParameter("miGenre");
	String miCnt = request.getParameter("miCnt");

	if (miTitle != null && miTitle.length() != 0) {
		Connection con = dbCon.getCon();
		String sql = "INSERT INTO MOVIE_INFO(MI_TITLE, MI_DESC, MI_GENRE, MI_CNT)";
		sql += "VALUES(?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, miTitle);
		ps.setString(2, miDesc);
		ps.setString(3, miGenre);
		ps.setString(4, miCnt);

		int result = ps.executeUpdate();
		if (result == 1) {
	%>
	<script type="text/javascript">
				alert("새로운 영화가 만들어졌습니다");
				location.href="<%=root%>
		/movie/movie-list.jsp";
	</script>
	<%
	} 

	}
	%>
	<form action="">
		<table border="1">
			<tr>
				<td>제목</td>
				<td><input type="text" id="miTitle" name="miTitle"></td>
			</tr>
			<tr>
				<td>설명</td>
				<td><textarea rows="30" cols="30" id="miDesc" name="miDesc"></textarea></td>
			</tr>
			<tr>
				<td>장르</td>
				<td><input type="text" id="miGenre" name="miGenre"></td>
			</tr>
			<tr>
				<td>조회수</td>
				<td><input type="text" id="miCnt" name="miCnt"></td>
			</tr>
			<tr>
				<td><button>제출</button></td>
			</tr>
		</table>
	</form>
</body>
</html>