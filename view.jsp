
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="bbs.BbsDAO"%>
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
		int bbsID = 0;
		if (request.getParameter("bbsID") != null) {
			bbsID = Integer.parseInt(request.getParameter("bbsID"));
		}
		if (bbsID == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글입니다')");
			script.println("location.href ='bbs.jsp'");
			script.println("<script>");
		}
		Bbs bbs = new BbsDAO().getBbs(bbsID);
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
						<th colspan="3 "
							style="background-color: #eeeeee; text-align: center;">게시판 글
							보기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style ="width: 20%;">글 제목 </td>
						<td colspan="2"><%=bbs.getBbsTitle() %></td>
					</tr>
					<tr>
						<td>작성자 </td>
						<td colspan="2"><%=bbs.getId() %></td>
					</tr>
					<tr>
						<td>작성일자 </td>
						<td colspan="2"><%=bbs.getBbsDate().substring(0, 11)+bbs.getBbsDate().substring(11, 13)+"시"+bbs.getBbsDate().substring(14, 16)+"분"
						     %></td>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan="2" style="min-height: 200px; text-align: left;"><%=bbs.getBbsContent() %></td>
					</tr>
				</tbody>
			</table>
			 <a href ="bbs.jsp" class="btn btn-primary">목록</a>
			 <%
			   if(id !=null && id.equals(bbs.getId())){
			 %>
			<%--  <a href="update.jsp?bbsID=<%=bbsID%>" class="btn btn-primary">수정</a>
			 <a href="update.jsp?bbsID=<%=bbsID%>" class="btn btn-primary">삭제</a> --%>
			 <%
			   }
			 %>
			<input type="submit" class="btn btn-primary pull-right" value="글쓰기 ">
		</div>
	</div>


	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/jquery-1.10.2.js"></script>
	<script src="js/bootstrap.js"></script>

	<footer class="bg-dark mt-4 p-3 text-center" style="color: #FFFFFF;">
		Copyright &copy; 대전대학교 컴퓨터공학과 </footer>
</body>
</html>