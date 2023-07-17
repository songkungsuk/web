<%@page import="java.sql.PreparedStatement"%>
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
<title>게시판</title>

</head>
<body>

	<jsp:include page="/include/header.jsp" />
	<form action="">
	<input type="text" name="biTitle" placeholder="제목" id="biTitle" value="<%=request.getParameter("biTitle") == null ? "": request.getParameter("biTitle")%>">
	<input type="text" name="biContent" placeholder="내용" id="biContent" value="<%=request.getParameter("biContent") == null ? "": request.getParameter("biContent")%>">
	<input type="text" name="biWriter" placeholder="작성자" id="biWriter" value="<%=request.getParameter("biWriter") == null ? "": request.getParameter("biWriter")%>">
	
	<button>검색</button>
	</form>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>내용</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
			<th>삭제</th>
		</tr>


 
		<%
		Connection con = dbCon.getCon();
		
		String sql = "SELECT bi.*, UI.UI_NAME FROM board_info bi INNER JOIN user_info UI ON bi.BI_WRITER = UI.UI_NUM";
		
		String biTitle = request.getParameter("biTitle");
		String biWriter = request.getParameter("biWriter");
		String biContent = request.getParameter("biContent");
		if(biTitle != null && biWriter != null && biContent != null){
			sql += " WHERE BI_TITLE LIKE CONCAT('%', ?, '%')";
			sql += " AND BI_WRITER LIKE CONCAT('%',?,'%')";
			sql += " AND BI_CONTENT LIKE CONCAT('%',?,'%')";
		}
		else if(biTitle != null && biContent != null){
			sql += " WHERE BI_TITLE LIKE CONCAT('%', ?, '%')";
			sql += " AND BI_CONTENT LIKE CONCAT('%',?,'%')";
		}
		else if(biTitle != null){
			sql += " WHERE BI_TITLE LIKE CONCAT('%', ?, '%')";
		}
		else if(biWriter != null){
			sql += " WHERE BI_WRITER LIKE CONCAT('%', ?, '%')";
		}
		else if(biContent != null){
			sql += " WHERE BI_CONTENT LIKE CONCAT('%', ?, '%')";
		}
		
		PreparedStatement ps = con.prepareStatement(sql);
		
		if(biTitle != null && biWriter != null && biContent != null){
			ps.setString(1, biTitle);
			ps.setString(2, biWriter);
			ps.setString(3, biContent);
		}
		else if(biTitle != null && biContent != null){
			ps.setString(1, biTitle);
			ps.setString(2, biContent);
		}
		else if(biTitle != null){
			ps.setString(1, biTitle);
		}
		else if(biWriter != null){
			ps.setString(2, biWriter);
		}
		else if(biContent != null){
			ps.setString(3, biContent);
		}
		
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getInt("BI_NUM")%></td>
			<td><a href="<%=root%>/board/board-view.jsp?biNum=<%=rs.getInt("BI_NUM")%>"><%=rs.getString("BI_TITLE")%></a></td>
			<td><%=rs.getString("BI_CONTENT")%></td>
			<td><%=rs.getString("UI_NAME")%></td>
			<td><%=rs.getString("BI_CREDAT")%></td>
			<td><%=rs.getInt("BI_CNT")%></td>
			<td><button type="button" onclick="location.href='<%=root%>/board/board-delete-ok.jsp?biNum=<%=rs.getInt("BI_NUM")%>'">삭제</button></td>
		</tr>

		<%
		}
		%>
		<tr>
			<td colspan="7" align="right" onclick="location.href='/web/board/board-insert.jsp'"><button>등록</button></td>
		</tr>
	</table>

</body>
</html>