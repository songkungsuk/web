<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>BEFORE</h1>
<%
RequestDispatcher rd = request.getRequestDispatcher("/foward/after.jsp");
rd.forward(request, response);
%>
</body>
</html>