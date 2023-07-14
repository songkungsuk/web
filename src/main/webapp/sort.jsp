<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
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
	String age = "age";
	List<Integer> intList = new ArrayList<>();
	intList.add(10);
	intList.add(5);
	intList.add(21);

	List<Map<String, Integer>> mapList = new ArrayList<>();
	Map<String, Integer> map = new HashMap<>();
	
	map.put(age, 10);
	mapList.add(map);

	map = new HashMap<>();
	map.put(age, 5);
	mapList.add(map);

	map = new HashMap<>();
	map.put(age, 21);
	mapList.add(map);

	Map<String, Integer> tmp = new HashMap<>();

	for (int i = 0; i < mapList.size(); i++) {
		for (int j = i; j < mapList.size(); j++) {
			if (mapList.get(i).get(age) > mapList.get(j).get(age)){
				
				tmp = mapList.get(i);
				
				mapList.set(i, mapList.get(j));
				
				mapList.set(j, tmp);
				
			}
		}
	}
	%>
	<h1>나이 정렬한것</h1>
	<table border="1" style="text-align: center; width: 300px; height: 300px; background-color: orange;">
		<tr>
			<%
			for(int i = 0; i<mapList.size(); i++){
				out.print("<td>" + +mapList.get(i).get(age)+"</td>");	
			}
			
			%>
		</tr>
	</table>
</body>
</html>