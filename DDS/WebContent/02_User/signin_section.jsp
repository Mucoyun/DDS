<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
	<div class="row py-5">
		<div class="col-8 offset-2">
			<p class="text-center display-4 my-5">Sign in</p>
			
			<div class="form-floating my-4 px-5">
			  <input type="email" class="form-control mx-2 px-4" id="floatingInput" placeholder="Email">
			  <label class="mx-4 ps-5" for="floatingEmail">아이디 (이메일 주소)</label>
			</div>
			<div class="form-floating my-4 px-5">
			  <input type="password" class="form-control mx-2 px-4" id="floatingPassword" placeholder="Password">
			  <label class="mx-4 ps-5" for="floatingPassword">비밀번호</label>
			</div>
			<div class="form-floating my-4 px-5">
			  <input type="password" class="form-control mx-2 px-4" id="floatingPassword" placeholder="RePassword">
			  <label class="mx-4 ps-5" for="floatingPassword">비밀번호 확인</label>
			</div>
			<div class="form-floating my-4 px-5">
			  <input type="text" class="form-control mx-2 px-4" id="floatingInput" placeholder="Name">
			  <label class="mx-4 ps-5" for="floatingEmail">이름 (실명 입력)</label>
			</div>
			<div class="form-floating my-4 px-5">
			  <input type="text" class="form-control mx-2 px-4" id="floatingInput" placeholder="Nickname">
			  <label class="mx-4 ps-5" for="floatingEmail">별명</label>
			</div>
			
			<div class="d-flex justify-content-start my-4 px-5">
				<input class="form-check-input ms-2" type="checkbox" id="gridCheck1">
				<p class="mx-2 text-secondary">이용약관 및 개인정보 취급방침 동의</p>
			</div>
			
			<div class="d-flex justify-content-center my-4 px-5">
				<button class="btn btn-dark mx-2 px-4" style="height: 40px; width: 200px;" type="button">회원가입</button>
			</div>
		</div>
	</div>
</body>
</html>