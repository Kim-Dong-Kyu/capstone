
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.logo {
	top: 10px;
	width: 100px;
	height: 30px;
}
.portlet {
    margin-bottom: 15px;
}

.btn-white {
    border-color: #cccccc;
    color: #333333;
    background-color: #ffffff;
}

.portlet {
    border: 1px solid;
}

.portlet .portlet-heading {
    padding: 0 15px;
}

.portlet .portlet-heading h4 {
    padding: 1px 0;
    font-size: 16px;
}

.portlet .portlet-heading a {
    color: #fff;
}

.portlet .portlet-heading a:hover,
.portlet .portlet-heading a:active,
.portlet .portlet-heading a:focus {
    outline: none;
}

.portlet .portlet-widgets .dropdown-menu a {
    color: #333;
}

.portlet .portlet-widgets ul.dropdown-menu {
    min-width: 0;
}

.portlet .portlet-heading .portlet-title {
    float: left;
}

.portlet .portlet-heading .portlet-title h4 {
    margin: 10px 0;
}

.portlet .portlet-heading .portlet-widgets {
    float: right;
    margin: 8px 0;
}

.portlet .portlet-heading .portlet-widgets .tabbed-portlets {
    display: inline;
}

.portlet .portlet-heading .portlet-widgets .divider {
    margin: 0 5px;
}

.portlet .portlet-body {
    padding: 15px;
    background: #fff;
}

.portlet .portlet-footer {
    padding: 10px 15px;
    background: #e0e7e8;
}

.portlet .portlet-footer ul {
    margin: 0;
}

.portlet-green,
.portlet-green>.portlet-heading {
    border-color: #16a085;
}

.portlet-green>.portlet-heading {
    color: #fff;
    background-color: #16a085;
}

.portlet-orange,
.portlet-orange>.portlet-heading {
    border-color: #f39c12;
}

.portlet-orange>.portlet-heading {
    color: #fff;
    background-color: #f39c12;
}

.portlet-blue,
.portlet-blue>.portlet-heading {
    border-color: #2980b9;
}

.portlet-blue>.portlet-heading {
    color: #fff;
    background-color: #2980b9;
}

.portlet-red,
.portlet-red>.portlet-heading {
    border-color: #e74c3c;
}

.portlet-red>.portlet-heading {
    color: #fff;
    background-color: #e74c3c;
}

.portlet-purple,
.portlet-purple>.portlet-heading {
    border-color: #8e44ad;
}

.portlet-purple>.portlet-heading {
    color: #fff;
    background-color: #8e44ad;
}

.portlet-default,
.portlet-dark-blue,
.portlet-default>.portlet-heading,
.portlet-dark-blue>.portlet-heading {
    border-color: #34495e;
}

.portlet-default>.portlet-heading,
.portlet-dark-blue>.portlet-heading {
    color: #fff;
    background-color: #34495e;
}

.portlet-basic,
.portlet-basic>.portlet-heading {
    border-color: #333;
}

.portlet-basic>.portlet-heading {
    border-bottom: 1px solid #333;
    color: #333;
    background-color: #fff;
}

@media(min-width:768px) {
    .portlet {
        margin-bottom: 30px;
    }
}

.img-chat{
width:40px;
height:40px;
}

.text-green {
    color: #16a085;
}

.text-orange {
    color: #f39c12;
}

.text-red {
    color: #e74c3c;
}

           
      
</style>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/jquery-1.10.2.js"></script>
<script src="js/bootstrap.js"></script>
<script type="text/javascript">
var lastID=0;
	function submitFunction(){
		var chatName = $('#chatName').val();
		var chatContent = $('#chatContent').val();
		$.ajax({
			type: "POST",
			url: "./chatSubmitServlet",
			data:{
				chatName: encodeURIComponent(chatName),
				chatContent: encodeURIComponent(chatContent)
			},
			success: function(result){
				if(result==1){
					autoClosingAlert('#successMessage',2000);
				}else if(result==0){
					autoClosingAlert('#dangerMessage',2000);
				}else{
					autoClosingAlert('#warningMessage',2000);
				}
			}
		});
		$('#chatContent').val('');
	}
	function autoClosingAlert(selector, delay){
		var alert = $(selector).alert();
		alert.show();
		window.setTimeout(function(){alert.hide()},delay);
		
	}
	
	function chatListFunction(type)
	{
		$.ajax({
			type: "POST",
			url: "./chatListServlet",
			data:{
				listType: type,
			},
			success: function(data){
				if(data == "") return;
				var parsed = JSON.parse(data);
				var result = parsed.result;
				for(var i =0; i< result.length; i++){
					addChat(result[i][0].value, result[i][1].value, result[i][2].value);
				}			
				lastID = Number(parsed.last);
			}
		});
	}
	
	function addChat(chatName, chatContent, chatTime){
		$('#chatList').append('<div class="row">' +
				'<div class = "col-lg-12">'+
				'<div class = "media">'+
				'<a class="pull-left" href="#">'+
				'<img class="media-object img-circle" src="images/icon.png" alt="">'+
				'</a>'+
				'<div class="media-body">'+
				'<h4 class="media-heading">'+
				chatName +
				'<span class="small pull-right">' +
				chatTime +
				'</span>' +
				'</h4>'+
				'<p>'+
				chatContent +
				'</p>'+
				'</div>'+
				'</div>'+
				'</div>'+
				'</div>'+
				'<hr>');
		$('#chatList').scrollTop($('#chatList')[0].scrollHeight);
	}
	function getInifiniteChat(){
		setInterval(function(){
			chatListFunction(lastID);
		},1000);
	}
	</script>


<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>점프볼</title>
</head>
<body>
<!-- 	<nav class="navbar navbar-default">
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
				<li><a href="main.jsp">실시간상담 </a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expended="false">회원관리<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class="active"><a href="login.jsp"></a>로그인</li>
						<li><a href="userjoin.jsp"></a>회원가입</li>
						<li><a href="#"></a>로그아웃</li>
					</ul></li>
			</ul>
		</div>
	</nav> -->
	<jsp:include page="top.jsp"></jsp:include>
 	<br>
	<div class="container" style="margin:auto">
		<div class="container bootstrap snippet">
			<div class="row">
				<div class="col-xs-12">
					<div class="portlet portlet-default">
						<div class="portlet-heading">
							<div class="portlet-title">
								<h4><i class="fa fa-circle text-green"></i>실시간 익명 채팅방</h4>
							</div>
							<div class="clearfix"></div>
						</div>
						<div id="chat" class="panel-collapse collapse in">
							<div id="chatList" class="portlet-body chat widget"
								style="overflow: auto; width: auto; height: 600px;">
							</div>
							<div class="portlet-footer">
								<div class="row">
									<div class="form-group col-xs-4">
										<input type="text" id="chatName" style="height: 40px;"
											class="form-control" placeholder="이름" maxlength="20">
									</div>
								</div>
								<div class="row" style="height: 90px;">
									<div class="form-group col-xs-10">
									  <textarea style="height: 80px;" id="chatContent" class ="form-control" 
									    placeholder="내용을 입력하세요" maxlength="200"></textarea>
									</div>
									<div class="form.group col-xs-2">
										<button type="button" class="btn btn-default pull-right" onclick="submitFunction();">전송</button>
										<div class="clearFix"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</div>
			<div class="alert alert-success" id="successMessage" style="display: none;">
		<strong>메제시 전송에 성공했습니다.</strong>
		</div>
		<div class="alert alert-danger" id="dangerMessage" style="display: none;">
		<strong>이름과 내용을 모두 입력해주세요</strong>
		</div>
		<div class="alert alert-warning" id="warningMessage" style="display: none;">
		<strong>DB 오류발생</strong>
		</div>
		</div>
		<script type="text/javascript">
		$(document).ready(function(){
			chatListFunction('ten');
			getInifiniteChat();
		});
		</script>
</body>
</html>