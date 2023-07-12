<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
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
	List<Map<String, String>> list = new ArrayList<>();
	Map<String, String> map = new HashMap<>();

	map.put("name", "김세희");
	map.put("addr", "서울");
	map.put("point", "90");
	list.add(map);
	map = new HashMap<>();
	map.put("name", "이원기");
	map.put("addr", "부산");
	map.put("point", "80");
	list.add(map);
	map = new HashMap<>();
	map.put("name", "김용준");
	map.put("addr", "서울");
	map.put("point", "77");
	list.add(map);
	map = new HashMap<>();
	map.put("name", "이원준");
	map.put("addr", "서울");
	map.put("point", "54");
	list.add(map);
	map = new HashMap<>();
	map.put("name", "이보성");
	map.put("addr", "서울");
	map.put("point", "54");
	list.add(map);
	map = new HashMap<>();
	map.put("name", "이왕균");
	map.put("addr", "서울");
	map.put("point", "33");
	list.add(map);

	Map<String, String> minMap = new HashMap<>();
	Map<String, String> maxMap = new HashMap<>();
	minMap = list.get(1);
	maxMap = list.get(1);
	
	int min = Integer.parseInt(minMap.get("point"));
	int max = Integer.parseInt(maxMap.get("point"));
	
	for (int i = 0; i < list.size(); i++) {
		if( min >  Integer.parseInt(list.get(i).get("point"))){
			minMap = list.get(i);
		}
		
		if( max <  Integer.parseInt(list.get(i).get("point"))){
			maxMap = list.get(i);
		}
	}
	
	
	
	out.print("<h1>"+"최소점수"+"</h1>");
	out.print("<br>"+ minMap.get("name"));
	out.print("<br>"+ minMap.get("addr"));
	out.print("<br>"+ minMap.get("point"));
	

	out.print("<h1>"+"최고점수"+"</h1>");
	out.print("<br>"+ maxMap.get("name"));
	out.print("<br>"+ maxMap.get("addr"));
	out.print("<br>"+ maxMap.get("point"));
	
	%>
</body>
</html>