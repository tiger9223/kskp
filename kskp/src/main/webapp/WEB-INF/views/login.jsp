<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title></title>
</head>
<style>
	@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap');

	*{
		margin: 0;
		padding: 0;
		font-family: 'Nanum Gothic', sans-serif;
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
	.log_wrap{
		width: 600px;
		height: 700px;
		margin: 0 auto;
		margin-top: 150px;
	}
	h1{
		width: 250px;
		height: auto;
		margin: 0 auto;
	}
	h1 img{
		width: 100%;
	}
	.text{
		display: block;
		width: 390px;
		height: 50px;
		margin: 0 auto;
		margin-top: 20px;
		padding-left: 10px;
		border: 1px solid #ccc;
	}
	.button{
		width: 400px;
		height: 50px;
		background-color: #1b3371;
		border: 0;
		color: #fff;
		font-size: 18px;
		margin: 0 auto;
		margin-top: 30px;
		display: block;
		cursor: pointer;
	}
	.line{
		width: 400px;
		height: 1px;
		margin: 0 auto;
		background-color: #ddd;
		margin-top: 25px;
	}
	.button02{
		display: block;
		width: 400px;
		height: 50px;
		border:1px solid #ddd;
		background-color: #fff;
		margin: 0 auto;
		position: relative;
		margin-top: 25px;
	}
	.button02 span{
		padding-left: 20px;
		position: absolute;
		left: 50px;
		top: 17px;
	}
	.logo_box{
		width: 50px;
		height: 50px;
		background-color: #FFE800;
		background-image: url('img/back_img.jpg');
		background-size: cover;
		cursor: pointer;
		border-right: 1px solid #ddd;
	}
	.log_wrap ul{
		width: 400px;
		height: 30px;
		margin: 0 auto;
		margin-top: 30px;
	}
	.log_wrap li{
		width: 50%;
		float: left;
		text-align: center;
	}
	.log_wrap li:first-child{
		border-right: 1px solid #777;
		box-sizing: border-box;
	}
	footer ul{
		width: 600px;
		height: 30px;
		margin: 0 auto;
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
		padding-right: 0px;	}
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
</style>
<body>
<div class="log_wrap">
		<h1>
			<a href="">
				<img src="img/logo.png" alt="">
			</a>
		</h1>
		<form action="mlogin.do" method="post">
		<input type="text" name="email" placeholder="아이디" class="text">
		<input type="password" name="pw" placeholder="비밀번호" class="text">
		<input type="submit" value="로그인" class="button">
		</form>
		<div class="line"></div>
		<!-- 네이버 로그인 창으로 이동 -->
			<a href="${url}" class="button02">
			<div class="logo_box"></div>
			<span>네이버 아이디로 로그인하기</span>
		</a>
		<ul>
			<li><a href="">비밀번호 찾기</a></li>
			<li><a href="signup.do">회원가입</a></li>
		</ul>
	</div>
	<footer>
		<ul>
			<li><a href="">이용약관</a></li>
			<li><a href="">개인정보처리방침</a></li>
			<li><a href="">책임의 한계와 법적고지</a></li>
			<li><a href="">회원정보 고객센터</a></li>
		</ul>
		<p class="copy"><img src="img/logo.png" alt=""> copyright ⓒ <strong>SWAG.</strong> All Rights Reserved.</p>
	</footer>
</body>
</html>