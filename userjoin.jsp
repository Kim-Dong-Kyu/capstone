<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.logo{
 top:5px;
 width:100px;
 height:30px;
}
</style>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="top2.jsp"></jsp:include>
 	<br>
	<br>
	<br>

  <div class="container" style="margin:auto">
		<div class="col-lg-16"></div>
		<div class="col-lg-16">
			<div class="jumbotron" style="padding-top: 20px;">
				<form action="joinaction.jsp" method="post">
					<h3 style="text-align: center;">회원가입</h3>
					<br>
					<br>
					<h5>이름을 입력</h5>
					<div class="form-group">
					<input type="text" class="form-control" placeholder="이름입력" name="name" >
					</div>
					<h5>사용하실 아이디 입력</h5>
					<div class="form-group">
					<input type="text" class="form-control" placeholder="아이디" name="id" >
					</div>
					<h5>사용하실 비밀번호 입력 입력</h5>
					<div class="form-group">
					<input type="password" class="form-control" placeholder="비밀번호" name="pw" >
					</div> 
					
					<h5>성별 </h5>
					<div>
					<input type="radio" name="gender" value ="남자 " checked="checked">남자 
					<input type="radio" name="gender" value ="여자 " > 여자
					</div>
					<br>
					<h5>전화번호</h5>
					<div class="form-group">
					<input type="tel" class="form-control" placeholder="010-xxxx-xxxx" name="tel" >
					</div> 
					
					<h5>주소</h5>
					<div class="form-group">
					<input type="text" class="form-control" placeholder="주소는 정확하게~!" name="address" >
					</div> 
				
					
                    <input type ="submit" class ="btn btn-primary form-control" value="가입완료">
				</form>
			</div>
		</div>
		<div class="col-lg-16"></div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/jquery-1.10.2.js"></script>
	<script src="js/bootstrap.js"></script>

</body>
</html>