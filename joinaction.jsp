<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.*"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="user" class="user.User" scope="page"></jsp:useBean>
<jsp:setProperty property="id" name="user" />
<jsp:setProperty property="pw" name="user" />
<jsp:setProperty property="name" name="user" />
<jsp:setProperty property="gender" name="user" />
<jsp:setProperty property="tel" name="user" />
<jsp:setProperty property="address" name="user" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = null;
		if (session.getAttribute("id") != null) {

			id = (String) session.getAttribute("id");

		}
		if (id != null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('이미 로그인이 되어 있습니다')");
			script.println("location.href ='Main.jsp'");
			script.println("<script>");
		}
		if (user.getId() == null || user.getPw() == null || user.getGender() == null || user.getTel() == null
				|| user.getName() == null || user.getAddress() == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력이 되지 않은 사항이 있습니다 제대로 체크해 주세요')");
			script.println("history.back()");
			script.println("</script>");

		} else {
			UserDAO userDAO = new UserDAO();
			int result = userDAO.join(user);
			if (result == -1) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('해당 아이디가 이미 존재합니다')");
				script.println("history.back()");
				script.println("</script>");

			} else {
				session.setAttribute("id", user.getId());
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("location.href ='Main.jsp'");
				//script.println("history.back()");
				script.println("</script>");
			}

		}
	%>
</body>
</html>