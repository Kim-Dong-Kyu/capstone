<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Jua&display=swap" rel="stylesheet">

<style type="text/css">
html, p, h1, h2, h3, h4, h5{
font-family: 'Jua', sans-serif;
}
.img2{
width:150px;
height:150px
}
p{
font-weight: 600;
}
.pline{
border-bottom: 7px solid #c5b79e;
width:20%;
}
h2{
font-size:37px;
}
body{
width: 260px;
margin:0 auto;
}
</style>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String id = null;
    if (session.getAttribute("id") != null) {
	id = (String) session.getAttribute("id");
}
    if(id==null)
    {
    	PrintWriter script = response.getWriter();
    	script.println("<br><br><br>");
		script.println("<h1>로그인이 필요한 페이지 입니다 뒤로가기를 눌러주세요");	
	}
    else{
    	PrintWriter script = response.getWriter();
    	script.println("<br><br><br>");
    	script.println("<a href='store3.jsp'><h1>신청하러가기</h1></a>");
    	script.println("<h2>온라인으로 예약 신청하세요</h2>");
    	script.println("<p>점프볼의 모든 메뉴는 단체주문 가능하며,</p>");
    	script.println("<p>가능한 2~3일 전에 예약 신청바랍니다.</p>");
    	script.println("<p class='pline'>&nbsp;&nbsp;&nbsp;&nbsp;</p>");
    	script.println("<p>전화 상담 · 예약 문의</p>");
    	script.println("<h2>1544-3328</h2>");

    	
    	script.print("<img class='img2' src='images/sin.png'>");    }
%>



</body>
</html>