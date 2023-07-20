<%@page import="java.sql.PreparedStatement"%>
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
	<%
	String miTitle = request.getParameter("miTitle");
	String miDesc = request.getParameter("miDesc");
	String miGenre = request.getParameter("miGenre");
	if (miTitle != null && miTitle.length() != 0) {
		Connection con = dbCon.getCon();
		String sql = "INSERT INTO MOVIE_INFO(MI_TITLE, MI_DESC, MI_GENRE)";
		sql += "VALUES(?,?,?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, miTitle);
		pstmt.setString(2, miDesc);
		pstmt.setString(3, miGenre);

		int result = pstmt.executeUpdate();
		if (result == 1) {
	%>
	<script type="text/javascript">
		alert("새로운 영화가 만들어 졌습니다");
		location.href="<%=root%>/movie2/movie-list.jsp";
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
				<td><input type="text" id="miDesc" name="miDesc"></td>
			</tr>
			<tr>
				<td>장르</td>
				<td><input type="text" id="miGenre" name="miGenre"></td>
			</tr>
			<tr>
				<td><button>등록</button></td>
			</tr>
		</table>
	</form>
</body>
</html>