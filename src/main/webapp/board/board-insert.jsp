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
	String biTitle = request.getParameter("biTitle");
	String biContent = request.getParameter("biContent");
	String biWriter = request.getParameter("biWriter");
	if(biTitle != null && biTitle.length() != 0){
		Connection con = dbCon.getCon();
		Statement stmt = con.createStatement();
		String sql = "INSERT INTO BOARD_INFO(BI_TITLE, BI_CONTENT, BI_WRITER, BI_CREDAT, BI_CNT)";
		sql += "VALUES ('BI_TITLE','BI_CONTENT','BI_WRITER',now(), 1)";
		
		int result = stmt.executeUpdate(sql);
		
		if(result == 1){
			%>
			<script type="text/javascript">
				alert("<%= result %> 개성공");
				location.href = "/web/board/board-insert.jsp";
			</script>
			
			
			<%
		}
	}
	
	%>
	<jsp:include page="/include/header.jsp" />
	<form action="">
	<table border="1">
		<tr>
			<td>제목</td>
			<td><input type="text" id="biTitle" name="biTitle"></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea id="biContent" name="biContent" style="resize: none" cols="30" rows="20"></textarea></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><input type="text" id="biWriter" name="biWriter"></td>
		</tr>
		<tr>
			<td colspan="2"><button>등록</button></td>
		</tr>

	</table>
	</form>
</body>
</html>