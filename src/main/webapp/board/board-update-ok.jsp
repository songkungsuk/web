<%@page import="java.sql.PreparedStatement"%>
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
	<%
	String biNum = request.getParameter("biNum");
	String biTitle = request.getParameter("BI_TITLE");
	String biWriter = request.getParameter("BI_CONTENT");
	String biContent = request.getParameter("BI_WRITER");

	Connection con = dbCon.getCon();
	String sql = "UPDATE BOARD_INFO ";
	sql += " SET BI_TITLE=?,";
	sql += " BI_CONTENT=?,";
	sql += " BI_WRITER=?";
	sql += " WHERE BI_NUM=?";

	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, biTitle);
	pstmt.setString(2, biWriter);
	pstmt.setString(3, biContent);
	pstmt.setString(4, biNum);
	int result = pstmt.executeUpdate();
	if (result == 1) {
	%>
	<script type="text/javascript">
			alert("수정완료");
			location.href="<%=root%>/board/board-view.jsp?biNum=<%=biNum%>";
	</script>

	<%
	}
	%>

</body>
</html>