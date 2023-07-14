<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.web.common.dbCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/include/common.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	<%
	String biNum = request.getParameter("biNum");
	Connection con = dbCon.getCon();
	Statement stmt = con.createStatement();
	String sql = "SELECT BI_NUM, BI_TITLE, BI_CONTENT, BI_WRITER, BI_CREDAT, BI_CNT FROM BOARD_INFO";
	sql += " WHERE BI_NUM=" + biNum;
	ResultSet rs = stmt.executeQuery(sql);

	if (rs.next()) {
	%>
	<div>
		<table border="1">
			<tr>
				<td>제목</td>
				<td><%=rs.getString("BI_TITLE")%></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><%=rs.getString("BI_WRITER")%></td>
			</tr>
			<tr>
			<tr>
				<td colspan="2">내용</td>
			</tr>
			<tr>
			
				<td colspan="2"><%=rs.getString("BI_CONTENT")%></td>
			</tr>
			<tr>
				<td>조회수</td>
				<td><%=rs.getString("BI_CNT")%></td>
			</tr>
			<tr>
			<th colspan="1" onclick="location.href='<%=root%>/board/boardupdate.jsp?biNum=<%=biNum%>'"><button>수정</button> </th>
			<th colspan="1"><button>삭제</button> </th>
			</tr>
		</table>
	</div>
	<%
	}
	%>
</body>
</html>