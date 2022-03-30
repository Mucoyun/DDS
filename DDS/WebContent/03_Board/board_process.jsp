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
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		try{
			String sql = "insert into Board (BoardCode,Writer,Title,Content,InsertDate,UpdateDate) values(Board_BoardCode_seq.nextval,?,?,?,sysdate,sysdate)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, writer);
			pstmt.setString(2, title);
			pstmt.setString(3, content);
			pstmt.executeUpdate();

			response.sendRedirect("/DDS/index.jsp");
			
		}catch(SQLException e){
			e.printStackTrace();
		}
	%>
</body>
</html>