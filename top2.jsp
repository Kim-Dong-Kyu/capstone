<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/top.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/earlyaccess/notosanskr.css">
<style type="text/css">
ul{
list-style-type: none;
}
</style>

<meta charset="UTF-8">
<title>대전대학교</title>
</head>
<body>
<%	String id = null;
    if (session.getAttribute("id") != null) {
	id = (String) session.getAttribute("id");
} %>
<div class="top-bar">
    <div class="con">
        <ul class="menu menu-1">
            <li class="main-menu-item">
                <a href="capstone.jsp">
                    main
                </a>
            </li>
         
        </ul>
       <% if(id==null){ %>
        <ul class="menu menu-2">
            <li><a href="login.jsp">로그인</a></li>
            <li><a href="userjoin.jsp">회원가입</a></li>
            <li><a href="index.jsp">실시간 상담</a></li>
            <li><a href="bbs.jsp">고객의 소리</a></li>
        </ul>
        <%} 
        else{%>
          <ul class="menu menu-2">
           
            <li><a href="logoutaction.jsp">로그아웃</a></li>
            <li><a href="index.jsp">실시간 상담</a></li>
            <li><a href="bbs.jsp">고객의 소리</a></li>
        </ul>
        <%}%>
     
    </div>
</div>
<br>
</body>
</html>