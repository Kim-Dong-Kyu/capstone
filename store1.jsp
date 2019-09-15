<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">
.footer{
padding: 35px 0;
    border-top: 3px solid #dcdcdc;
    color: #484848;
    margin-top: 15px;
}
.container {
    max-width: 1045px;
    margin-left: auto;
    margin-right: auto;
    text-align: center;
}
a {
    color:inherit;
    text-decoration:inherit;
}

html {
    font-family: 'Noto Sans KR', sans-serif;
}

/* 라이브러리 */

.con {
    margin: 0 auto;
    width:1045px;
}


/* 탑바 */
.top-bar {
    background-color:black;
    color:white;
}

.top-bar .con::after {
    content:"";
    display:block;
    clear:both;
}

.top-bar .menu::after {
    content:"";
    display:block;
    clear:both;
}

.top-bar .menu > li {
    float:left;
    margin:0 15px;
}

.top-bar .menu > li > a {
    display:block;
}

.top-bar .menu > li:first-child {
    margin-left:0;
}

.top-bar .menu > li:last-child {
    margin-right:0;
}

.top-bar .menu-1 {
    float:left;
}

.top-bar .main-menu-item > a {
    background-image:url(http://www.hongsi.x-y.net/2017_ui6/hjs/img/home.png);
    background-repeat:no-repeat;
    /* 5% => 좌우, calc(50% + 3px) 상하 */
    /* calc(50% + 3px) => 수직중앙에서 밑으로 3px 내려간다. */
    background-position:5% calc(50% + 3px);
    padding-left:20px;
}

.top-bar .menu-2 {
    float:right;
}
.top-2-bar {
    margin-top:20px;
    position:relative;
}

.top-2-bar .logo-img {
    display:block;
    margin:0 auto;
}

.top-2-bar .best-5-img {
    position:absolute;
    top:50%;
    left:0;
    transform:translateY(-50%);
}

.top-2-bar .search-input {
    position:absolute;
    right:0;
    top:0;
}
a {
    color:inherit;
    text-decoration:inherit;
}

html {
    font-family: 'Noto Sans KR', sans-serif;
}

/* 라이브러리 */
.con {
    margin: 0 auto;
}

.row::after {
    content:"";
    display:block;
    clear:both;
}

.cell {
    float:left;
    box-sizing:border-box;
}

.cell.cell-1-5 {
    width:25%;
}

.cell.cell-2-5 {
    width:40%;
}


.img-box > img {
    display:block;
    width:100%;
}

/* 커스텀 */
.con {
    width:1445px;
}

/* 공통 */
.hover-btns {
    position:relative;
}
.hover-btns::before {
    display:none;
    content:"";
    position:absolute;
    top:0;
    left:0;
    right:0;
    bottom:0;
    background-color:rgba(0,0,0,0.5);
}


.hover-btns:hover::before {
    display:block;
}


/* 박스 2 */
.box2 {
    margin-top:50px;
}

.box2 .title > img {
    display:block;
    margin:0 auto;
    width: 100%;
}

.box2 .list-1 {
    margin-top:20px;
}

.box2 .list-1 > .row .cell > .img-box {
    height:333px;
 background-repeat:no-repeat;
    background-position:center;
    background-size:cover;
    cursor:pointer;
}
li{
list-style: none;
}
.cell-1-5{
    margin: 0px 50px 0px 50px;   
}
.box2 .list-1 > .row {
    margin-left:-5px;
    margin-right:-5px;
    padding-inline-start: 0px;
    
}

.box2 .list-1 > .row .cell {
    padding-left:5px;
    padding-right:5px;
    margin-top:10px;
}
strong.meal_tit {
    display: inline-block;
    margin: 45px 0 15px;
    text-align: center;
    font-weight: 600;
}
.meal_tit {
    padding: 0.5rem 5%;
    background-color: #ebebeb;
    font-size: 1.125rem;
    font-weight: 400;
}
.cl2 {
    color: #00792b;
}
.sm-sl {
    display: block;
    font-size: 1.125rem;
}
h2{

margin-top: 0px;
color:black;
}
.storemain{
max-width: 1605px;
    margin-left: auto;
    margin-right: auto;
}
.storeimg{
width:100%;

}
.go{
width:200px;
height:200px;
margin-left:550px;
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
<div class="top-2-bar con">    
    <a href="capstone.jsp"><img class="logo-img" src="images/djulogo.PNG" alt=""></a> 
 
</div>
<br>
	<section>
	<div class="storemain"><img class="storeimg" src="images/front2.PNG"></div>
    <article class="box2 con">
            	<h4><strong class="meal_tit text">광호네 도식락</strong></h4>
			<h4 class="title sm-sl cl2 text">매일 아침 번거로우시죠? 번거로운 아침 이 광호가 해결합니다!!<br>
			<img onclick="location.href = 'http://www.naver.com'" src="images/klogo.PNG" alt=""></h4>
    
        <h1>
당신을 위한 아침
        </h1>
       
     
       <h4>실버 푸드 전문업체인 우리 광호도시락이 고객님의 다양한 선택을 위해 6가지 도시락을 제공합니다.<br>
        	 돈까스,제육,돼지불고기,챱스테이크,떡갈비,소불고기 원하시는 선택을 해주세요♥
        	 
        	 </h4>

        
        <div class="list-1">
            <ul class="row">
                <li class="cell cell-1-5">
                    <div class="img-box hover-btns" style="background-image:url(images/swings.PNG);">
                       
                    </div>
                                <h2 style="text-align: center">돈까스 도시락<br></h2>
                    <h3 style="text-align: left">반찬 총7종<br></h3>
                    <h4 style="text-aling: left">-돈까스,샐러드,동글랑땡,무말랭이,오이초무침,멸치볶음,김치<br>※(밥+국)개별포장></h4>
                </li>
                <li class="cell cell-1-5">
                    <div class="img-box hover-btns" style="background-image:url(images/so.PNG);">                      
                    </div>
                    <h2 style="text-align: center">소불고기도시락<br></h2>
                    <h3 style="text-align: left">반찬 총8종<br></h3>
                    <h4 style="text-aling: left">-소불고기,돈까스,샐러드,동글랑땡,무말랭이,오이초무침,멸치볶음,김치<br>※(밥+국)개별포장></h4>
                </li>
                <li class="cell cell-1-5">
                    <div class="img-box hover-btns" style="background-image:url(images/dduk.PNG);">
                    </div>
                    <h2 style="text-align: center">떡갈비도시락<br></h2>
                    <h3 style="text-align: left">반찬 총7종<br></h3>
                    <h4 style="text-aling: left">-떡갈비,샐러드,동글랑땡,무말랭이,오이초무침,멸치볶음,김치<br>※(밥+국)개별포장></h4>
                </li>
                <li class="cell cell-1-5">
                    <div class="img-box hover-btns" style="background-image:url(images/chop.PNG);">      
                    </div>
                    <h2 style="text-align: center">챱스테이크도시락</h2><br>
                    <h3 style="text-align: left">반찬 총7종<br></h3>
                    <h4 style="text-aling: left">-챱스테이크,동글랑땡,무말랭이,오이초무침,멸치볶음,김치<br>※(밥+국)개별포장></h4>
                </li>
                <li class="cell cell-1-5">
                    <div class="img-box hover-btns" style="background-image:url(images/dwe.PNG);">        
                    </div>
                    <h2 style="text-align: center">돼지 불고기도시락</h2><br>
                    <h3 style="text-align: left">반찬 총7종<br></h3>
                    <h4 style="text-aling: left">-돼지불고기,샐러드,동글랑땡,무말랭이,오이초무침,멸치볶음,김치<br>※(밥+국)개별포장></h4>
                </li>
                <li class="cell cell-1-5">
                    <div class="img-box hover-btns" style="background-image:url(images/je.PNG);">
                    </div>
                    <h2 style="text-align: center">제육도시락</h2><br>
                    <h3 style="text-align: left">반찬 총7종<br></h3>
                    <h4 style="text-aling: left">-제육볶음,샐러드,동글랑땡,무말랭이,오이초무침,멸치볶음,김치<br>※(밥+국)개별포장></h4>
                </li> 
                
             
                     
            </ul>
           
			<img onclick="location.href = 'Store1Apply.jsp'" class="go" src="images/ball.jpg">
		
        </div>
        

        
    </article>
</section>
<footer class="footer">
<div class="container">
<h4>ADDRESS: 대전광역시 동구 용운동 &nbsp;&nbsp;&nbsp;"TEL: 010-6325-2223&nbsp;&nbsp;&nbsp; E-Mail: la703@naver.com</h4>
<h3>COPYRIGHT © DJU.CE.STUDENT</h3>
</div>
</footer>
</body>
</html>