<%@page import="java.sql.Statement"%>
<%@page import="com.web.common.dbCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/include/common.jsp"%>
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
	String sql = "DELETE FROM MOVIE_INFO WHERE MI_NUM =" + miNum;
	int result = stmt.executeUpdate(sql);
	if(result == 1){
		%>
		<script type="text/javascript">
			alert("삭제완료");
			location.href="<%=root%>/movie2/movie-list.jsp";
		</script>
		
		<%
	}
	%>
</body>
</html>