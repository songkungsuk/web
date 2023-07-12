<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="3">


<%
String center = "center";
String left = "left";
	for(int i = 1; i<10; i++){
	
			out.print("<tr>");
			out.print("<td colspan="+9+" align="+center+">"+i+"단"+"</td>");
			out.print("</tr>");
	
		out.print("<tr>");
%>
<%
		for(int j = 1; j<10; j++){
			
			out.print("<td align="+left+">"+i+"X"+j+"="+i*j+"</td>");
%>
			
<%
		}
%>
<%		
		out.print("</tr>");
	}
%>
</table>
</body>
</html>