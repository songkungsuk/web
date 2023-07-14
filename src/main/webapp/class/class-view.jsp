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
<jsp:include page="/include/header.jsp"/>
	<%
	String CI_NUM = request.getParameter("CI_NUM");
	Connection con = dbCon.getCon();
	Statement stmt = con.createStatement();
	String sql = "SELECT CI_NUM, CI_NAME, CI_DESC FROM Class_Info WHERE CI_NUM ="+ CI_NUM;
	ResultSet rs = stmt.executeQuery(sql);
	if(rs.next()){
		out.print("번호"+"<br>");
		out.print("<h1>"+rs.getString("CI_NUM")+"</h1>");
		out.print("이름"+"<br>");
		out.print("<h1>"+rs.getString("CI_NAME")+"</h1>");
		out.print("설명"+"<br>");
		out.print("<h1>"+rs.getString("CI_DESC")+"</h1>");
	
	%>
	<button>수정</button>
	<button>삭제</button>
	
	
	<%
	}
	%>
</body>
</html>