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
<%
Object obj = request.getAttribute("strList");
List<String> myList = (List<String>) obj;

for(String str : myList){
	out.print(str + "<br>");
}

%>
</body>
</html>