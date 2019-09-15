<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.logo{
 top:5px;
 width:100px;
 height:30px;
}
</style>
<script src="js/jquery-1.10.2.js"></script>
<script src="js/jquery.blueberry.js"></script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<link rel="stylesheet" href="css/blueberry.css">
<title>Insert title here</title>
</head>
<body>
<div class="blueberry">
  <ul class="slides">
    <li><img src="images/intoroduce1.PNG" /></li>
    <li><img src="images/intoduce2.PNG" /></li>
    <li><img src="images/introduce3.PNG" /></li>
  </ul>
</div>

<button> </button> 
	<script>
	   $(function() {
		   $(window).load(function() {
				$('.blueberry').blueberry();
			});	
	});		
	</script>
</body>

</html>