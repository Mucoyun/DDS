<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<%@ include file="/DBConn.jsp" %>
	<%
	String boardcode = request.getParameter("boardcode");	
	
	String writer = (String)session.getAttribute("s_id");
	String comments = request.getParameter("comments");
	String class1 = request.getParameter("class1");
	String order = request.getParameter("order");
	String group = request.getParameter("group");
	
	 
	try{
		String sql = "insert into comments values(?,Comments_CommentsCode_seq.nextval,?,?,?,?,?,sysdate)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, boardcode);
		pstmt.setString(2, writer);
		pstmt.setString(3, comments);
		pstmt.setString(4, class1);
		pstmt.setString(5, order);
		pstmt.setString(6, group);
		pstmt.executeUpdate();

		response.sendRedirect("/DDS/index.jsp");
		
	}catch(SQLException e){
		e.printStackTrace();
	}
	%>
</body>
</html>