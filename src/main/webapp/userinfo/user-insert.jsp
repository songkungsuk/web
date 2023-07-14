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
	String uiId = request.getParameter("UI_ID");
	String uiName = request.getParameter("UI_NAME");
	String uiPwd = request.getParameter("UI_PWD");
	
	if(uiId != null && uiId.length() != 0){
		Connection con = dbCon.getCon();
		Statement stmt = con.createStatement();
		String sql = "INSERT INTO USER_INFO(UI_ID, UI_PWD, UI_NAME)";
		sql += "VALUES('" + uiId + "', '" + uiName + "', '" + uiPwd + "')";
		int result = stmt.executeUpdate(sql);
		
		if(result == 1){
			%>
			<script type="text/javascript">
				alert("<%=uiId%> 님의 회원가입을 축하드립니다");
				location.href = "/web/userinfo/user-insert.jsp";
			</script>
			
			
			<%
		}
	}
	
	%>
	<form action="">
	<table border="3" style="align-content: center;">
		<tr>
			<td><label for="id">UserId</label></td>
			<td><input type="text" name="UI_ID" id="UI_ID"></td>
		</tr>
		<tr>
			<td><label for="pw">UserPwd</label></td>
			<td><input type="password" name="UI_PWD" id="UI_PWD"></td>
		</tr>
		<tr>
			<td><label for="name">UserName</label></td>
			<td><input type="text" name="UI_NAME" id="UI_NAME"></td>
		</tr>
		<tr>
			<td colspan="3" style="text-align: center;"><button>submit</button></td>
		</tr>
	</table>
	</form>
</body>
</html>