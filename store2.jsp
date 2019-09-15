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
text-decoration:underline;
margin-top: 0px;
color:#3eb123;
}
.storemain{
max-width: 1300px;

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
	<div class="storemain"><img class="storeimg" src="images/sand.jpg"></div>
    <article class="box2 con">
            	<h4><strong class="meal_tit text">동규네 빵집</strong></h4>
			<h4 class="title sm-sl cl2 text">매일 아침 번거로우시죠? 번거로운 아침 동규가 해결합니다!!<br>
			<img src="images/BM.PNG" alt=""></h4>
    
        <h1>
당신을 위한 아침
        </h1>
       
     
       <h4>실버 푸드 전문업체인 우리 동규네 빵이 고객님의 다양한 선택을 위해 6가지 빵을 제공합니다.<br>
        	 아침에 부담없는 샌드위치와 부가적인 음료/과일/닭가슴살/쿠키등을 선택해주세요♥
        	 
        	 </h4>

        
        <div class="list-1">
            <ul class="row">
                <li class="cell cell-1-5">
                    <div class="img-box hover-btns" style="background-image:url(images/s+f.PNG);">
                       
                    </div>
                                <h2 style="text-align: center">샌드위치+모둠과일<br></h2>
                    <h3 style="text-align: left">과일 종류<br></h3>
                    <h4 style="text-aling: left">-오렌지,딸기,포도,바나나,사과,토마토<br>※(과일)과일 교체 가능!></h4>
                </li>
                <li class="cell cell-1-5">
                    <div class="img-box hover-btns" style="background-image:url(images/s+m.PNG);">                      
                    </div>
                    <h2 style="text-align: center">샌드위치+음료<br></h2>
                    <h3 style="text-align: left">음료종류<br></h3>
                    <h4 style="text-aling: left">-망고(기본),포도,오렌지 <br>※(음료)선택가능</h4>
                </li>
                <li class="cell cell-1-5">
                    <div class="img-box hover-btns" style="background-image:url(images/s+fD.PNG);">
                    </div>
                    <h2 style="text-align: center">샌드위치+모둠과일(대)<br></h2>
                    <h3 style="text-align: left">과일 종류<br></h3>
                    <h4 style="text-aling: left">-오렌지,딸기,포도,바나나,사과,토마토<br>※(과일)과일 교체 가능!></h4>
                </li>
                <li class="cell cell-1-5">
                    <div class="img-box hover-btns" style="background-image:url(images/f+d.PNG);">      
                    </div>
                    <h2 style="text-align: center">과일 +닭가슴살</h2><br>
                    <h3 style="text-align: left">건강 다이어트 식단<br></h3>
                    <h4 style="text-aling: left">--오렌지,딸기,포도,바나나,사과,토마토<br>※(과일)과일 교체 가능!></h4>
                </li>
                <li class="cell cell-1-5">
                    <div class="img-box hover-btns" style="background-image:url(images/s+d.PNG);">        
                    </div>
                    <h2 style="text-align: center">샌드위치+닭가슴살</h2><br>
                    <h3 style="text-align: left">건강 단백질 식단<br></h3>
                    <h4 style="text-aling: left">-운동하기 좋은 식단</h4>
                </li>
                <li class="cell cell-1-5">
                    <div class="img-box hover-btns" style="background-image:url(images/s+f+c.PNG);">
                    </div>
                    <h2 style="text-align: center">샌드위치+과일+쿠키</h2><br>
                    <h3 style="text-align: left">디저트 포함 식단<br></h3>
                    <h4 style="text-aling: left">-오렌지,딸기,포도,바나나,사과,토마토<br>※(과일)과일 교체 가능!,(쿠키)당이 걱정되시는분 쿠기 무설탕 선택 가능></h4>
                </li> 
                
             
                     
            </ul>
			<img onclick="location.href = 'Store2Apply.jsp'" class="go" src="images/ball.jpg">
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