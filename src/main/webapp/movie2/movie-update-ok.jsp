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
	<%
	String miNum = request.getParameter("miNum");
	String miTitle = request.getParameter("miTitle");
	String miDesc = request.getParameter("miDesc");
	String miGenre = request.getParameter("miGenre");

	Connection con = dbCon.getCon();
	String sql = "UPDATE MOVIE_INFO SET MI_TITLE=?, MI_DESC=?, MI_GENRE=? WHERE MI_NUM =?";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, miTitle);
	ps.setString(2, miDesc);
	ps.setString(3, miGenre);
	ps.setString(4, miNum);

	int result = ps.executeUpdate();
	if (result == 1) {
	%>
	<script type="text/javascript">
		alert("수정완료");
		location.href = "<%=root%>/movie2/movie-view.jsp?miNum=<%=miNum%>";
	</script>

	<%
	}
	%>
</body>
</html>