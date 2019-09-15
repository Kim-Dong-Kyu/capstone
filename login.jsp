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
.container {
    margin: auto;
}
</style>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">


<title>Insert title here</title>
</head>
<body>
<!-- <nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapse"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expended="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="Main.jsp"><img src="images/logo.PNG" class="logo"></a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collpase-1">
			<ul class="nav navbar-nav">
				<li><a href="Main.jsp">메인</a></li>
				<li><a href="main.jsp">실시간상담 </a></li>
			</ul>
			<ul class ="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expended="false">회원관리<span class="caret"></span></a>
					<ul class="dropdown-menu">
					<li class ="active"><a href="login.jsp"></a>로그인</li>
					<li><a href="userjoin.jsp"></a>회원가입</li>
					<li><a href="#"></a>로그아웃</li>				
					</ul>
			     </li>  
			</ul>
		</div>
	</nav> -->
	<jsp:include page="top2.jsp"></jsp:include>
	
		<br>
	<br>
	<br>
	
	<div class="container" style="margin:auto">
		<div class="col-lg-16"></div>
		<div class="col-lg-16">
			<div class="jumbotron" style="padding-top: 20px;">
				<form action="loginaction.jsp" method="post">
					<h3 style="text-align: center;">로그인 화면</h3>
					<br>
					<br>
					<div class="form-group">
					<input type="text" class="form-control" placeholder="아이디" name="id" >
					</div>
					<div class="form-group">
					<input type="password" class="form-control" placeholder="비밀번호" name="pw" >
					</div> 
                    <input type ="submit" class ="btn btn-primary form-control" value="로그인">
				</form>
			</div>
		</div>
		<div class="col-lg-16"></div>
	</div>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/jquery-1.10.2.js"></script>
	<script src="js/bootstrap.js"></script>
	<footer class="bg-dark mt-4 p-3 text-center" style="color: #FFFFFF;">
		Copyright &copy; 대전대학교 컴퓨터공학과 </footer>
</body>
</html>