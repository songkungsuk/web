<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.web.common.dbCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ㅇㅅㅇ하는 사람없어서 좋다</title>
</head>
<body>
<jsp:include page="/include/header.jsp"/>
<%
	String userNum = request.getParameter("UI_NUM");
	Connection con = dbCon.getCon();
	Statement stmt = con.createStatement();
	String sql = "SELECT UI_NUM, UI_ID, UI_PWD, UI_NAME FROM user_info WHERE UI_NUM=" + userNum;
	ResultSet rs = stmt.executeQuery(sql);
	
	if(rs.next()){
		%>
		<table border="1">
		<tr>
		<td>번호</td>
		<td><%=rs.getString("UI_NUM") %></td>
		</tr>
		<tr>
		<td>아이디</td>
		<td><%=rs.getString("UI_ID") %></td>
		</tr>
		<tr>
		<td>비밀번호</td>
		<td><%=rs.getString("UI_PWD") %></td>
		</tr>
		<tr>
		<td>이름</td>
		<td><%=rs.getString("UI_NAME") %></td>
		</tr>
		
		</table>
		<%
	}
%>
</body>
</html>