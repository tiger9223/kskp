<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<title></title>
<style type="text/css">
ul.tabs {
    margin: 0;
    padding: 0;
    float: left;
    list-style: none;
    height: 32px;
    border-bottom: 1px solid #eee;
    border-left: 1px solid #eee;
    width: 100%;
    font-family:"dotum";
    font-size:12px;
}
ul.tabs li {
    float: left;
    text-align:center;
    cursor: pointer;
    width:160px;
    height: 31px;
    line-height: 31px;
    border: 1px solid #eee;
    border-left: none;
    font-weight: bold;
    background: #fafafa;
    overflow: hidden;
    position: relative;
}
ul.tabs li.active {
    background: #FFFFFF;
    border-bottom: 1px solid #FFFFFF;
}
.tab_container {
    border: 1px solid #eee;
    border-top: none;
    clear: both;
    float: left;
    width: 320px;
    background: #FFFFFF;
}
.tab_content {
    padding: 5px;
    font-size: 12px;
    display: none;
}
.tab_container .tab_content ul {
    width:100%;
    margin:0px;
    padding:0px;
}
.tab_container .tab_content ul li {
    padding:5px;
    list-style:none
}
;
 #container {
    width: 249px;
    margin: 0 auto;
}
</style>
<script type="text/javascript">
$(function () {

    $(".tab_content").hide();
    $(".tab_content:first").show();

    $("ul.tabs li").click(function () {
        $("ul.tabs li").removeClass("active").css("color", "#333");
        //$(this).addClass("active").css({"color": "darkred","font-weight": "bolder"});
        $(this).addClass("active").css("color", "darkred");
        $(".tab_content").hide()
        var activeTab = $(this).attr("rel");
        $("#" + activeTab).fadeIn()
    });
  
    $("#emBtn").click(function(){
    	  var email = document.getElementById('em').value;
    	location.href = "sendemail.do?email="+email;
    });
    


});
</script>
</head>
<body>
<div id="container">
    <ul class="tabs">
        <li class="active" rel="tab1">이메일인증</li>
        <li rel="tab2">핸드폰인증</li>
    </ul>
    <div class="tab_container">
        <div id="tab1" class="tab_content">
       	<form action="minsertuserform.do" method="post">
       	<input type="hidden" name="email" value="${email}">
       		<c:choose>
       			<c:when test="${email == null}">
       				<input type="email" name="email" id="em" placeholder="xxx@xxx.xxx형식"  />
       				<input type="button" id="emBtn" value="인증번호 보내기" ><br/>
          			
       			</c:when>
       			
       			<c:otherwise>
       				<input type="text" name="cer" id="send" placeholder="인증번호를 입력해주세요"  >
          			<input type="submit" id="sub" value="인증하기" >
       			</c:otherwise>
       		</c:choose>
        	
          	</form>
        </div>
        <!-- #tab1 -->
        <div id="tab2" class="tab_content">
        <!-- #tab3 -->
    </div>
    <!-- .tab_container -->
</div>
</div>
<!-- #container -->
</body>
<script type="text/javascript">
// function phonesend(){
// 	document.getElementById("send").style.display=='block';
// }
</script>
</html>