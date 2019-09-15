<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.logo {
	top: 4px;
	width: 100px;
	height: 30px;
}
</style>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>점프볼</title>
</head>
<body>
	<%
		String id = null;
		if (session.getAttribute("id") != null) {
			id = (String) session.getAttribute("id");
		}
	%>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expended="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="Main.jsp"><img
				src="images/logo.PNG" class="logo"></a>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collpase-1">
			<ul class="nav navbar-nav">
				<li><a href="Main.jsp">메인</a></li>
				<li><a href="index.jsp">실시간상담 </a></li>
				<li><a href="bbs.jsp">건의사항 </a></li>
			</ul>
			<%
				if (id == null) {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expended="false">회원관리<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class="active"><a href="login.jsp"></a>로그인</li>
						<li><a href="userjoin.jsp"></a>회원가입</li>
						
					</ul>
			     </li>
			</ul>


			<%
				} else {
			%>
				<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expended="false">회원관리<span class="caret"></span></a>
					<ul class="dropdown-menu">
				
						<li><a href="logoutaction.jsp"></a>로그아웃</li>
					</ul>
			     </li>
			</ul>
			<%
				}
			%>

		</div>
	</nav>
	<br>
	<div class="container">
		<div class="jumbotron">
			<div class="container">
				<h1>웹사이트 소개</h1>
				<p>
					<br> 독거노인의 아침을 책임지는 대전대학교 컴퓨터공학과 점프볼 입니다 <br> 우리는 노인들의
					폭넓은 식사환경 제공을 위해 사이트를 개발했습니다 <br> 자세히 알고 싶다면 아래 버튼을 눌러주세요<br>
					<br> <a class="btn btn-primary btn-pull" href="introduce.jsp"
						role="button">자세히알아보기</a>
				</p>
			</div>
		</div>
	</div>
	<div class="container">
		<div id="myCarousel" class="carousel" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol> 
			<div class="carousel-inner">
				<div class="item active">
					<img src="images/6.JPG">
				</div>
				<div class="item">
					<img src="images/4.jpg">
				</div>
				<div class="item">
					<img src="images/2.jpg">
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev"></a>
			<span class="glyphicon-chevron-left"></span> <a
				class="right carousel-control" href="#myCarousel" data-slide="next"></a>
			<span class="glyphicon-chevron-right"></span>
		</div>
	</div>


	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/jquery-1.10.2.js"></script>
	<script src="js/bootstrap.js"></script>

	<footer class="bg-dark mt-4 p-3 text-center" style="color: #FFFFFF;">
		Copyright &copy; 대전대학교 컴퓨터공학과 </footer>
</body>
</html>