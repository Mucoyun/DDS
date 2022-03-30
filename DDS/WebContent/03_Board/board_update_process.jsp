<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<%@ include file="/DBConn.jsp" %>
	<%
		String writer = (String)session.getAttribute("s_id");
		String boardcode = request.getParameter("boardcode");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		
		try{
			String sql = "update board set title=?,content=?,UpdateDate=sysdate where boardcode=? and writer=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, title);
			pstmt.setString(2, content);
			pstmt.setString(3, boardcode);
			pstmt.setString(4, writer);
			pstmt.executeUpdate();

			response.sendRedirect("/DDS/index.jsp");
			
		}catch(SQLException e){
			e.printStackTrace();
		}
	%>
</body>
</html>