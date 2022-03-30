<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<%@ include file="/DBConn.jsp" %>
	<%
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		 
		try{
			String sql = "select email, password, nickname from Member where email=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if(rs.next()){
				String g_email = rs.getString(1);
				String g_password = rs.getString(2);
				String g_nickname = rs.getString(3);
				
				if(g_password.equals(password)){	//로그인
					session.setAttribute("s_id", g_email);
					session.setAttribute("s_pw", g_password);
					session.setAttribute("s_nn", g_nickname);
					
					response.sendRedirect("/DDS/index.jsp");
				}else{	//비밀번호가 틀렸습니다.
					%><script>
					alert("비밀번호가 틀렸습니다.");
					location.href="login.jsp";
				</script><%
				}
			}else{	//등록된 아이디가 아닙니다.
				%><script>
					alert("등록된 아이디가 아닙니다.");
					location.href="login.jsp";
				</script><%
			}
			
		}catch(SQLException e){
			e.printStackTrace();
		}
	%>
</body>
</html>