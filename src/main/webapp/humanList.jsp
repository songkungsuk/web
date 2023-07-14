<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.web.vo.HumanVO"%>
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
	String[] names = { "김홍균", "김아영", "이명관", "이왕균", "이보성" };
	Random r = new Random();
	List<HumanVO> humanList = new ArrayList<>();
	
	for(int i=0; i<names.length; i++){
		HumanVO human = new HumanVO();
		human.setName("abc ");
		humanList.add(human);
	}

	for (int i = 0; i < names.length; i++) {
		int rNum = r.nextInt(5);
		humanList.get(i).setName(names[rNum]);
		for(int j = 0; j< i; j++){
			if(names[rNum].equals(humanList.get(j).getName())){
				i--;
			}	
		}
	}
	
	for(int i=0; i<humanList.size(); i++){
		out.println(humanList.get(i).getName());	
	}
	
	%>
</body>
</html>