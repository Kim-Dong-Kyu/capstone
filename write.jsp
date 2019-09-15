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
			<a class="navbar-brand" href="capstone.jsp"><img
				src="images/logo.PNG" class="logo"></a>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collpase-1">
			<ul class="nav navbar-nav">
				<li><a href="capstone.jsp">메인</a></li>
				<li><a href="index.jsp">실시간상담 </a></li>
				<li><a href="#">건의사항 </a></li>
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

					</ul></li>
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
					</ul></li>
			</ul>
			<%
				}
			%>

		</div>
	</nav>
	<div class="containor">
		<div class="row">
			<form action="writeaction.jsp" method="post">
				<table class="table table-striped"
					style="text-align: center; border: 2px soild #dddddd;">
					<thead>
						<tr>
							<th colspan="2 "
								style="background-color: #eeeeee; text-align: center;">게시판
								양식</th>

						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" class="form-control" placeholder="제목"
								name="bbsTitle" maxlength="50"></td>
						</tr>
						<tr>
							<td><textarea type="text" class="form-control"
									placeholder="내용" name="bbsContent" maxlength="2050"
									style="height: 350px;"></textarea></td>
						</tr>


					</tbody>


				</table>
				<input type="submit" class="btn btn-primary pull-right" value="글쓰기 ">
			</form>
		</div>
	</div>


	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/jquery-1.10.2.js"></script>
	<script src="js/bootstrap.js"></script>

	<footer class="bg-dark mt-4 p-3 text-center" style="color: #FFFFFF;">
		Copyright &copy; 대전대학교 컴퓨터공학과 </footer>
</body>
</html>