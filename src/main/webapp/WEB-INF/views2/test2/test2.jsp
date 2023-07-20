<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Test2 의 영역</h1>
	
	<%
	List<String> myList = new ArrayList<>();
	myList.add("오늘도");
	request.setAttribute("myList", myList);
	Object obj = request.getAttribute("myList");
	List<String> getList = (List<String>) obj;
	out.print(getList);
	%>
</body>
</html>