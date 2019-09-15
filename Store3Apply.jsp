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
<jsp:include page="top2.jsp"></jsp:include>
	<br>
	<br>

	
  <div class="container1">
		<div class="col-lg-16"></div>
		<div class="col-lg-16">
			<div class="jumbotron" style="padding-top: 20px;">
				<form action="store3" method="get">
					<h1 style="text-align: center;">재효네 찌개 신청</h1>
					<br>
					<br>
					<h5  style="font-family: "Hanna">주문하실 상품을 선택해 주세요</h5>
					<div class="form-group">
					<input type="checkbox"  name="dosirak1" value="김치찌개">김치찌개 
				    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="checkbox"  name="dosirak2" value="된장찌개">된장찌개
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="checkbox" name="dosirak3" value="부대찌개">부대찌개
             	    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             	    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="checkbox"  name="dosirak4" value="청국장">청국장
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="checkbox" name="dosirak5" value="소고기 뭇국">소고기뭇국
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="checkbox"  name="dosirak6" value="미역국">미역국
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</div>
					<br>
					<h5>주문수량 입력</h5>
					<div>
					<input type="number"  placeholder="1개 이상" name="num" >
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
				    
				     <input type="checkbox" name ="a_mil" value="아황산류 ">아황산류
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
					<h5>요청사항 입력 (부담스럽게 먹고 싶지 않은 분들은 덜 짜게를 적어주세요)</h5>
					<div class="form-group">
					<input type="text" class="form-control" placeholder="요청사항을 입력해주세요" name="require" >
					</div> 
					<br>				
					<h5>전화번호</h5>
					<div class="form-group">
					<input type="tel" class="form-control" placeholder="010-xxxx-xxxx" name="tel" >
					</div> 
					
					<h5>주소</h5>
					<div class="form-group">
					<input type="text" class="form-control" placeholder="주소는 정확하게~!" name="address" >
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