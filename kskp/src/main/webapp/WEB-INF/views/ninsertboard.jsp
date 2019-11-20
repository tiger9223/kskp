<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/0.b280c48150e7b9ec4a16.css" />
<link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/application.b280c48150e7b9ec4a16.css" />
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/partner/application_template_1-2ece18b6c26275ab3bce2543416a6d5ce8ab1fb02e628874719778440a82ecb2.css" />
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/partner/application_template_2-f4aa669c5b0bb95eeab45e16d2191196766ade801ea426d4378844f33223711e.css" />
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/partner/application-a9128fc1a122430f544993e6d4fc160ef0da94eb6bdc0b7c4881ca2d32dae94a.css" />
<link href='//fonts.googleapis.com/css?family=Roboto:300,400,500,300italic' rel='stylesheet'>
<style>
   @import url('https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap');
	*{
      margin: 0;
      padding: 0;
      font-family: 'Nanum Gothic', sans-serif;
   }
   table{
   	 margin: 0;
   	 text-align: center;
  	 align:center;
   }
   li{
      list-style: none;
   }
   a{
      text-decoration: none;
      color: #666;
   }
   img{
      border: 0;
   }
   body{
      background-color: #ededed;
   }
   textarea{
    background-color: #ededed;
	resize:none;
	white-space:pre;
   }
   #input{
   width:430px;
   background-color: #ededed;
   }
   .log_wrap{
      width: 600px;
      margin: 0 auto;
      margin-top: 70px;
   }
   h1{
      width: 200px;
      height: auto;
      margin: 0 auto;
      margin-bottom: 10px;
   }
   h1 img{
      width: 100%;
   }
   .text{
      display: block;
      width: 390px;
      height: 50px;
      margin: 0 auto;
      margin-top: 10px;
      padding-left: 10px;
      border: 1px solid #ccc;
   }
   .title{
      width: 390px;
      padding-left: 10px;
      margin: 0 auto;
      margin-top: 25px;
      font-size: 18px;
      font-weight: bold;
   }
   .notice{
      width: 390px;
      margin: 0 auto;
      padding-left: 10px;
      font-size: 12px;
      padding-top: 5px;
   }
   .button{
      width: 400px;
      height: 50px;
      background-color: #1b3371;
      border: 0;
      color: #fff;
      font-size: 18px;
      margin: 0 auto;
      margin-top: 40px;
      display: block;
      cursor: pointer;
   }
   footer {
 	  position: relative;
   }
   footer ul{
      width: 600px;
      height: 30px;
      margin: 0 auto;
      margin-top: 50px;
   }
   footer li{
      float: left;
      font-size: 13px;
   }
   footer li:first-child{
      padding-left: 33px;
   }
   footer li::after{
      content: '|';
      color: #666;
      padding-left: 25px;
      padding-right: 25px;
   }
   footer li:last-child::after{
      content: '';
      padding-right: 0px;   
   }
   .copy{
      text-align: center;
      margin-top: 20px;
      font-size: 12px;
   }
   footer img{
      width: 50px;
      height: auto;
      margin-right: 5px;
      margin-bottom: -5px;
   }
   #center{
   width:500px;
   margin: 0 auto;
   }
   th{
   text-align: center;
   }
</style>
<title>글 추가하기폼</title>
</head>
<body>
<div class="log_wrap">
      <h1>
         <a href="main.do">
            <img src="img/logo.png" alt="">
         </a>
      </h1>
<h1>글 추가하기</h1>
<form action="ninsertboard.do" method="post">
<input type="hidden" name="m_seq" value="${ldto.m_seq}"/>
	<table border="1">
		<col width="100px"><col width="300px">
			<th>제목</th>
			<td><input id="input" type="text" name="n_title" required="required"/></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea rows="10" cols="60" name="n_conts" required="required"></textarea></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="글추가"/></td>
		</tr>
	</table>
</form>
</div>
<footer>
      <ul>

         <li><a href="conditions.do">이용약관</a></li>
         <li><a href="privacy.do">개인정보처리방침</a></li>
         <li><a href="responsibility.do">책임의 한계와 법적고지</a></li>
         <li><a href="servicecenter.do">고객센터</a></li>

      </ul>
      <p class="copy"><img src="img/logo.png" alt=""> copyright ⓒ <strong>SWAG.</strong> All Rights Reserved.</p>
</footer>
</body>
</html>