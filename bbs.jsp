
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="bbs.BbsDAO"%>
<%@page import="bbs.Bbs"%>
<%@page import="java.util.ArrayList"%>
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
		int pageNumber =1;
		if(request.getParameter("pageNumber")!=null){
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
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
			<table class="table table-striped"
				style="text-align: center; border: 2px soild #dddddd;">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">번호
						</th>
						<th style="background-color: #eeeeee; text-align: center;">제목
						</th>
						<th style="background-color: #eeeeee; text-align: center;">작성자
						</th>
						<th style="background-color: #eeeeee; text-align: center;">작성일</th>
					</tr>
				</thead>
				<tbody>
				<%
				BbsDAO bbsDAO = new BbsDAO();
				ArrayList<Bbs> list= bbsDAO.getList(pageNumber);
				for(int i =0 ; i <list.size();i++){ 
				%>
					<tr>
						<td><%=list.get(i).getBbsID() %></td>
						<td><a href="view.jsp?bbsID=<%=list.get(i).getBbsID()%>"><%=list.get(i).getBbsTitle()%></a></td>
						<td><%=list.get(i).getId()%></td>
						<td><%=list.get(i).getBbsDate().substring(0, 11)+list.get(i).getBbsDate().substring(11, 13)+"시"+list.get(i).getBbsDate().substring(14, 16)+"분"
						     %></td>

					</tr><%} %>
				</tbody>
			</table>
			<%
			if(pageNumber!=1){
		    %>
				<a href ="bbs.jsp?pageNumber=<%=pageNumber-1 %>" class ="btn btn-success btn-arrow-left">이전</a>
			<%	
			}if(bbsDAO.nextPage(pageNumber+1)){
			%>
			<a href ="bbs.jsp?pageNumber =<%=pageNumber+1 %>" class ="btn btn-success btn-arrow-left">다음</a>
			<%
			}
			%>
			
			<a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
		</div>
	</div>


	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/jquery-1.10.2.js"></script>
	<script src="js/bootstrap.js"></script>

	<footer class="bg-dark mt-4 p-3 text-center" style="color: black;">
		Copyright &copy; 대전대학교 컴퓨터공학과 </footer>
</body>
</html>