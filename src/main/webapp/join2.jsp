<%@page import="java.sql.Statement"%>
<%@page import="com.web.common.dbCon"%>
<%@page import="java.sql.Connection"%>
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

String ciName = request.getParameter("CI_NAME");
String ciDesc = request.getParameter("CI_DESC");
if(ciName != null && ciName.length() != 0){
	Connection con = dbCon.getCon();
	Statement stmt = con.createStatement();
	String sql = "INSERT INTO Class_Info(CI_NAME, CI_DESC)";
	sql += "VALUES('"+ciName+"','"+ciDesc+"')";
	
	int result = stmt.executeUpdate(sql);
	if(result == 1){
		
	
	%>
	<script type="text/javascript">
	alert("<%=ciName %> 님의 가입을 축하 드립니다.");
	location.href="/web/join2.jsp";
	</script>
	
	<%
	}
	
	
}

%>
<form action="">
	<label for="NAME">NAME</label><br>
	<input type="text" id="CI_NAME" name="CI_NAME"></input><br>
	<label for="desc">DESC</label><br>
	<input type="text" id="CI_DESC" name="CI_DESC"></input><br>
	<button>Confirm</button>
</form>
</body>
</html>