<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
<title></title>
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
      height: 200px;
      margin: 0 auto;
      margin-top: 70px;
   }
   h1{
      width: 250px;
      height: auto;
      margin: 0 auto;
      margin-bottom: 10px;
   }
   h1 img{
      width: 100%;
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
   .button_box{
    width: 900px;
    height: 330px;
    margin: 0 auto;
    margin-bottom: 170px;
   }
  button{
    width: 300px;
    height: 330px;
    float: left;
    margin-right: 0px;
    background-color: #fff;
    border:1px solid #ddd;
    cursor: pointer;
    transition: 0.3s;
  }
  button img{
    width: 80%;
    height: auto;
    margin-top: -50px;
  }
/*   button:nth-child(2){ */
/*     margin-right: 0; */
/*   } */
  .button_box p{
    width: 100%;
    text-align: center;
    font-size: 25px;
    color: #777;
  }
  button:hover{
    transform: scale(1.03);
  }
</style>
</head>
<body>
<div class="log_wrap">
  <h1>
     <a href="main.do">
        <img src="img/logo.png" alt="">
     </a>
  </h1>
</div>
  <div class="button_box">
     <button type="button" onclick="location.href='nboardlist.do?pnum=1'">
        <img src="img/gonggi_top.jpg" alt="">
     </button>
     <button type="button" onclick="location.href='qboardlist.do?pnum=1'">
        <img src="img/q&a.jpg" alt="">
     </button>
     <button type="button" onclick="location.href='centeradd.do'">
        <img src="img/mj_map.png" alt="">
     </button>
   </div>
<footer>
  <ul>
     <li><a href="conditions.do">이용약관</a></li>
     <li><a href="privacy.do">개인정보처리방침</a></li>
     <li><a href="responsibility.do">책임의 한계와 법적고지</a></li>
     <li><a href="">고객센터</a></li>
  </ul>
  <p class="copy"><img src="img/logo.png" alt=""> copyright ⓒ <strong>SWAG.</strong> All Rights Reserved.</p>
</footer>
</body>
</html>