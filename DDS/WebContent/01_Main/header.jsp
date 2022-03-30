<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<script type="text/javascript">
		function login() {
			location.href="/DDS/02_User/login.jsp";
		}
		function signin() {
			location.href="/DDS/02_User/signin.jsp";
		}
		function logout() {
			location.href="/DDS/02_User/logout.jsp";
		}
	</script>
</head>
<body>
	<%@ page session="true" %>
	<%
		String s_id = "";
		String s_pw = "";
		String s_nn = "";
		s_id = (String)session.getAttribute("s_id");
		s_pw = (String)session.getAttribute("s_pw");
		s_nn = (String)session.getAttribute("s_nn");
	%>
	<nav class="navbar navbar-expand-md navbar-light bg-white my-2 mx-3">
	  <div class="container-fluid">
	    <a class="navbar-brand text-center" href="/DDS/index.jsp">
	    	<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-house" viewBox="0 0 16 16">
			  	<path fill-rule="evenodd" d="M2 13.5V7h1v6.5a.5.5 0 0 0 .5.5h9a.5.5 0 0 0 .5-.5V7h1v6.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5zm11-11V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
			  	<path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"/>
			</svg>
	    </a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	      	<span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarSupportedContent">
	      <ul class="navbar-nav me-auto">
	        <li class="nav-item text-center">
	          <a class="nav-link" href="/DDS/03_Board/board.jsp">
	          	<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
				  <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
				  <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
				</svg>
	          </a>
	        </li>
	      </ul>
	      <div class="d-flex justify-content-center">
	      	<%
	      	if(s_nn==null){
	      		%>
	      		<button class="btn btn-outline-dark me-2" id="header_button" type="button" style="width: 100px; height: 40px;" onclick="login()">로그인</button>
	        	<button class="btn btn-dark" id="header_button" type="button" style="width: 100px; height: 40px;" onclick="signin()">회원가입</button>
	      		<%
	      	}else{
	      		session.setMaxInactiveInterval(60*30);
	      		%>
	      		<button class="btn btn-outline-dark me-2" id="header_button" type="button" style="width: 100px; height: 40px;"><%=s_nn %> 님</button>
	        	<button class="btn btn-dark" id="header_button" type="button" style="width: 100px; height: 40px;" onclick="logout()">로그아웃</button>
	      		<%
	      	}
	      	%>
	        
	      </div>
	    </div>
	  </div>
	</nav>
</body>
</html>