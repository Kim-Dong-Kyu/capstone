<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
ul#leftmenu {
   position: fixed;
   top: 130px;
   left: 0px;
   z-index: 9999;
   list-style-type: none;
   margin: 0px;
   padding: 0px;
}

ul#leftmenu li {
   width: 150px;
   margin-bottom: 2px;
}

ul#leftmenu li a {
   background-color: #ccc;
   color: #fff;
   text-decoration: none;
   display: block;
   width: 150px;
   padding: 10px 0 10px 10px;
   -webkit-border-bottom-right-radius: 20px;
   -webkit-border-top-right-radius: 20px;
   margin-left: -1px;
   opacity: 0.6;
}

ul#leftmenu .daegu1 a {
   background-color: red;
}

ul#leftmenu .daegu2 a {
   background-color: orange;
   
}

ul#leftmenu .daegu3 a {
   background-color: pink;
   
}
ul#leftmenu .daegu4 a {
   background-color: yellow;
   
}
ul#leftmenu .daegu5 a {
   background-color: green;
   
}


</style>
<script src="js/jquery-1.10.2.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <ul id="leftmenu">
      <li class="daegu1"><a href="#">주문정보</a></li>
      <li class="daegu2"><a href="#">(사장님만 )</a></li>
      <li class="daegu3"><a href="http://rlaehdrb1.dothome.co.kr/wp-admin">광호네 도시락</a></li>
      <li class="daegu4"><a href="http://rlaehdrb2.dothome.co.kr/wp-admin">동규네 빵집</a></li>
      <li class="daegu5"><a href="http://rlaehdrb3.dothome.co.kr/wp-admin">재효네 찌개</a></li>

   </ul>
   <script>
      $(function() {
         $('#leftmenu a').css('marginLeft', '-125px');
         $('#leftmenu > li').hover(function() {
            $('a', $(this)).stop().animate({
               'marginLeft' : '-1px'
            }, 300);
         }, function() {
            $('a', $(this)).stop().animate({
               'marginLeft' : '-125px'
            }, 300);
         });
      });
   </script>
</body>
</html>