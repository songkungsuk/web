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
	List<String> names = new ArrayList<>();
	names.add("김세희");
	names.add("이원기");
	names.add("김용준");
	names.add("이원준");
	names.add("이보성");
	names.add("이왕균");

	List<Integer> points = new ArrayList<>();
	points.add(80);
	points.add(77);
	points.add(99);
	points.add(55);
	points.add(54);
	points.add(33);

	List<String> addr = new ArrayList<>();
	addr.add("서울");
	addr.add("부산");
	addr.add("대전");
	addr.add("대구");
	addr.add("경기");
	addr.add("광주");

	int minPoint = points.get(1);
	int maxPoint = points.get(1);
	int minIndex = 0;
	int maxIndex = 0;
	for (int i = 0; i < points.size(); i++) {
		if (minPoint > points.get(i)) {
			minPoint = points.get(i);
			minIndex = i;
		}

		if (maxPoint < points.get(i)) {
			maxPoint = points.get(i);
			maxIndex = i;
		}
	}
	
	
	
	%>

	<table border="3" style="text-align: center;"	>
		<tr>
			<th>이름</th>
			<th>점수</th>
			<th>주소</th>
		</tr>
		<%
		for (int i = 0; i < names.size(); i++) {
			out.print("<tr>");
			out.print("<td>" + names.get(i) + "</td>");
			out.print("<td>" + points.get(i) + "</td>");
			out.print("<td>" + addr.get(i) + "</td>");
			out.print("</tr>");
		}
		%>

		<tr>
			<th>최고점</th>
			<td><%=maxPoint%></td>
			<td colspan="2">
				<%
				out.print(names.get(maxIndex)+"," );
				out.print(addr.get(maxIndex)+",");
				out.print(points.get(maxIndex));
				%>
			</td>
		</tr>
		<tr>
			<th>최소점</th>
			<td><%=minPoint%></td>
			<td colspan="2">
				<%
				out.print(names.get(minIndex)+",");
				out.print(addr.get(minIndex)+",");
				out.print(points.get(minIndex));
				%>
			</td>
		</tr>
	</table>
</body>
</html>