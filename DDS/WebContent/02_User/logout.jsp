<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<%
		String referer = request.getHeader("referer");
	
		session.invalidate();
		response.sendRedirect(referer);
	%>
</body>
</html>