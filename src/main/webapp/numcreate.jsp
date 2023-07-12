<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!public static List<Integer> createNum() {
	List<Integer> lottoList = new ArrayList<>();

	Random r = new Random();

	for (int i = 0; i < 10 ; i++) {
		int num = r.nextInt(100) + 1;
		
			if (lottoList.indexOf(num) == -1) { //중복제거
				lottoList.add(num);
			}
			else{
				i--;
			}

	}

	return lottoList;

}%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" style="align-items: center; align-content: center;">
		<tr>

			<%
			int i = 0;
			while (i < 6) {
				out.print("<td>" + i + "</td>");
			}
			%>
		</tr>
		<tr>
			<%
			List<Integer> lottos = createNum();
			for (int j = 0; j < lottos.size(); j++) {
				out.print("<td>"+ lottos.get(j) + "</td>");
			}
			%>
		</tr>
		<tr><td><a href="http://localhost/web/numcreate.jsp">다시뽑기</a></td></tr>
	</table>
</body>
</html>