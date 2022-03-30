<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<%
	if(session.getAttribute("s_nn")==null){
		%><script>
			alert("로그인이 필요합니다.");
			location.href="/DDS/index.jsp"
		</script><%
	}
	%>
</body>
</html>