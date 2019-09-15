<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.container1 {
    margin: 0 auto;
    width:73%;
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

	
  <div class="container1">
		<div class="col-lg-16"></div>
		<div class="col-lg-16">
			<div class="jumbotron" style="padding-top: 20px;">
				<form action="store1" method="get">
					<h1 style="text-align: center;">광호네 도시락 신청</h1>
					<br>
					<br>
					<h5  style="font-family: 'Hanna'">주문하실 상품을 선택해 주세요</h5>
					<div class="form-group">
					<input type="checkbox"  name="dosirak1" value="돈까스 도시락">돈까스 도시락 
				    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="checkbox"  name="dosirak2" value="소불고기 도시락">소불고기 도시락
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="checkbox" name="dosirak3" value="떡갈비 도시락">떡갈비 도시락
             	    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             	    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="checkbox"  name="dosirak4" value="챱스테이크 도시락">챱스테이크 도시락
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="checkbox" name="dosirak5" value="돼지불고기 도시락">돼지불고기 도시락
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="checkbox"  name="dosirak6" value="제육 도시락">제육 도시락
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</div>
					<br>
					<h5>주문수량 입력</h5>
					<div>
					<input type="number"  placeholder="1개 이상" name="num">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</div>
					<br>
					<h5>해당항목중 알레르기 성분이 있다면 체크 해주세요</h5>
				    <div>
				    <input type="checkbox" name ="a_egg" value="알레르기">난류(계란)
				    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				    
				     <input type="checkbox" name ="a_milk" value="우유">우유
				    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				    
				    <input type="checkbox" name ="a_peanut" value="땅콩">땅콩
				    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				    
				    <input type="checkbox" name ="a_daedoo" value="대두">대두
				    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				    
				    <input type="checkbox" name ="a_mil" value="밀">밀
				    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				    
				     <input type="checkbox" name ="a_pig" value="돼지고기">돼지고기
				    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				    
				     <input type="checkbox" name ="a_tomato" value="토마토">토마토
				    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				    
				     <input type="checkbox" name ="a_acid" value="아황산류 ">아황산류
				    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				    
				     <input type="checkbox" name ="a_walnut" value="호두">호두
				    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				    
				     <input type="checkbox" name ="a_chicken" value="닭고기">닭
				    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				    
				     <input type="checkbox" name ="a_ox" value="소고기">소 
				    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

				    </div>
				    <br>
					<h5>배송 날짜 선택</h5>
					<div>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					 시작일자 : <input type="date" name="start_day" id="start">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					 종료일자 : <input type="date" name="end_day" id="end">
					</div>
					<br>
					<h5>요청사항 입력</h5>
					<div class="form-group">
					<input type="text" class="form-control" placeholder="요청사항을 입력해주세요" name="req" >
					</div> 
					<br>				
					<h5>전화번호</h5>
					<div class="form-group">
					<input type="tel" class="form-control" placeholder="010-xxxx-xxxx" name="tel" >
					</div> 
					
					<h5>주소</h5>
					<div class="form-group">
					<input type="text" class="form-control" placeholder="주소는 정확하게~!" name="address">
					</div> 
				
					
                    <input type ="submit" class ="btn btn-primary form-control" value="신청완료">
				</form>
			</div>
		</div>
		<div class="col-lg-16"></div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/jquery-1.10.2.js"></script>
	<script src="js/bootstrap.js"></script>

</body>
</html>