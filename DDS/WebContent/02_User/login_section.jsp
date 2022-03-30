<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<div class="row py-5">
		<div class="col-8 offset-2">
			<p class="text-center display-4 my-5">Welcome</p>
			
			<form name="login_form" method="post" action="login_process.jsp">
				<div class="form-floating my-4 px-5">
				  <input name="email" type="email" class="form-control mx-2 px-4 rounded-pill" id="floatingInput" placeholder="name@example.com">
				  <label class="mx-4 ps-5" for="floatingInput">Email address</label>
				</div>
				<div class="form-floating my-4 px-5">
				  <input name="password" type="password" class="form-control mx-2 px-4 rounded-pill" id="floatingPassword" placeholder="Password">
				  <label class="mx-4 ps-5" for="floatingPassword">Password</label>
				</div>
				<div class="d-flex justify-content-center my-4 px-5">
					<button class="btn btn-dark mx-2 px-4 rounded-pill" style="height: 40px; width: 200px;" type="submit">로그인</button>
				</div>
			</form>
			
			<div class="d-flex justify-content-center my-4 px-5">
				<a href="#" class="mx-2 px-4 text-secondary text-decoration-none">Forgot Password?</a>
			</div>
		</div>
	</div>
</body>
</html>