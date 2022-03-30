<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<title>Board.jsp</title>
	<script type="text/javascript"> 
		function go_time(){
			var now = new Date();
			
			var year = now.getFullYear(); //년
			var month = now.getMonth()+1; //월
			var day = now.getDate();  //일
			
			var hour = now.getHours();  //시
			var min = now.getMinutes();  //분
			var sec = now.getSeconds();  //초
			
			document.getElementById("clock").innerHTML = year+"년 "+ month+"월 "+day+"일 "+hour+":"+min+":"+sec; 
			//id가 clock인 html에 현재시각을 넣음
 
 			setTimeout("go_time()", 1000);//1초마다 해당 펑션을 실행함.
		}
	</script>
</head>
<body onload="go_time()">
	<%@ include file="/02_User/loginChk.jsp" %>
	
	<div class="container">
		<%@ include file="/01_Main/header.jsp" %>
		
		<div class="row py-5">
			<div class="col-8 offset-2">
				<p class="text-center display-4 my-5">게시판</p>
				
				<form name="board_form" method="post" action="board_process.jsp">
					<div class="form-floating my-4 px-5">
					  <input name="title" type="text" class="form-control mx-2 px-4" id="floatingInput" placeholder="Title">
					  <label class="mx-4 ps-5" for="floatingInput">제목</label>
					</div>
					<div class="form-floating my-4 px-5">
					  <textarea name="content"  class="form-control mx-2 px-4" style="height: 300px; resize: none;" placeholder="Content" id="floatingTextarea"></textarea>
					  <label class="mx-4 ps-5" for="floatingTextarea">내용</label>
					</div>
					<div class="d-flex justify-content-center my-4 px-5">
						<button class="btn btn-dark mx-2 px-4 rounded-pill" style="height: 40px; width: 200px;" type="submit">등록</button>
					</div>
				</form>
				<div class="d-flex justify-content-center my-4 px-5">
					<p id="clock" class="mx-2 px-4 text-secondary text-decoration-none"></p>
				</div>
			</div>
		</div>
		
		<%@ include file="/01_Main/footer.jsp" %>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>