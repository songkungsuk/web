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
	request.setCharacterEncoding("UTF-8");
	String miNum = request.getParameter("miNum");
	String miTitle = request.getParameter("miTitle");
	String miDesc = request.getParameter("miDesc");
	String miGenre = request.getParameter("miGenre");
	String miCnt = request.getParameter("miCnt");
	
	Connection con = dbCon.getCon();
	String sql = "UPDATE MOVIE_INFO";
	sql += " SET MI_TITLE =?,";
	sql += " MI_DESC =?,";
	sql += " MI_GENRE =?,";
	sql += " MI_CNT =? ";
	sql += "WHERE MI_NUM =?";
	
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, miTitle);
	ps.setString(2, miDesc);
	ps.setString(3, miGenre);
	ps.setString(4, miCnt);
	ps.setString(5, miNum);
	
	int result = ps.executeUpdate();
	if(result == 1){
		%>
		<script type="text/javascript">
		alert("수정완료");
		location.href='<%=root%>/movie/movie-view.jsp?MI_NUM=<%=miNum%>';
		</script>
		
		
		<%
	}

	%>
	


</body>
</html>