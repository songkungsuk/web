<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!
public static List<Integer> createNum() {
		Random r = new Random();
		List<Integer> lotto_Num = new ArrayList<>();
		for (int i = 0; i < 6; i++) {
			int num = r.nextInt(45) + 1;
			if(lotto_Num.indexOf(num) == -1){
				lotto_Num.add(num);	
			}
			
		}
		return lotto_Num;
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="3" style="width: 300px; height: 300px; size: 30px">
		<tr align="center">
			<% List<Integer> numbers = createNum();
			for(int i=0; i<numbers.size(); i++){
				
				out.print("<td>"+numbers.get(i)+"</td>");				
			}
	%>
		</tr>
		<tr align="center"><td style="size: 30px" colspan="<%=numbers.size()%>" align="center"><a onclick="" style="width: 200px; height: 100px" href="http://localhost/web/lotto.jsp">다시 뽑기</a></td></tr>
	</table>
</body>
</html>