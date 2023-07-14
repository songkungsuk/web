<%@page import="java.sql.Statement"%>
<%@page import="com.web.common.dbCon"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Date"%>
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
	String biTitle = request.getParameter("BI_TITLE");
	String biContent= request.getParameter("BI_CONTENT");
	String biWriter= request.getParameter("BI_WRITER");
	String biCnt= request.getParameter("BI_CNT");
	
	if(biTitle != null && biTitle.length() != 0 ){
		Connection con = dbCon.getCon();
		Statement stmt = con.createStatement();
		String sql = "INSERT INTO BOARD_INFO(BI_TITLE, BI_CONTENT, BI_WRITER, BI_CREDAT, BI_CNT)";
		sql += "VALUES('" + biTitle + "', '" + biContent + "', '" + biWriter + "', now(), " + biCnt + ")";
		int resultCount = stmt.executeUpdate(sql);
		if(resultCount == 1){
			%>
			<script type="text/javascript">
				alert("<%= resultCount%>회 성공하였습니다");
				location.href = "/web/join3.jsp";
			</script>
			
			
			
			<%
			
			
		}
	}

%>
<form action="" style="text-align: center;">
	<label for="BI_TITLE">BI_TITLE</label>
	<br>
	<input type="text" id="title" name="BI_TITLE"></input>
	<br>
	<label for="BI_CONTENT" >BI_CONTENT</label>
	<br>
	<input type="text" id="content" name="BI_CONTENT" style="width: 500px; height: 500px"></input>
	<br>
	<label for="BI_WRITER">BI_WRITER</label>
	<br>
	<input type="text" id="writer" name="BI_WRITER"></input>
	<br>
	<label for=BI_CNT>BI_CNT</label>
	<br>
	<input type="text" id="cnt" name="BI_CNT"></input>
	<br>
	<button>commit</button>
</form>
</body>
</html>