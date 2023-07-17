<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.web.common.dbCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="/include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String biNum = request.getParameter("biNum");
	Connection con = dbCon.getCon();
	String sql = "DELETE FROM BOARD_INFO WHERE BI_NUM=?";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, biNum);

	int result = pstmt.executeUpdate();

	if (result != 1) {
	%>
	<script type="text/javascript">
		alert('이미 삭제된 게시글입니다.');
		location.href = '<%=root%>/board/board-list.jsp';
	</script>
	<%
	return;
	} else {
	%>

	<script type="text/javascript">
		alert('정상적으로 삭제되었습니다.');
		location.href = '<%=root%>/board/board-list.jsp';
	</script>

	<%
	}
	%>
	<%=biNum%>
</body>
</html>