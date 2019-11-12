<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<title></title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
$(document).ready(function() {
$(".img1").click(function(){
		$('.img1 img').attr('src');
	  alert(images);      
	});
});

	$(document).ready(function() {
		$(".star_rating a").click(function() {
			$(this).parent().children("a").removeClass("on");
			$(this).addClass("on").prevAll("a").addClass("on");
			var star =$(this).attr('value');
			$("#r_star").val(star);
			event.preventDefault();
			alert(star);
		});
	});
</script>

<style type="text/css">
.star_rating {
	font-size: 0;
	letter-spacing: -4px;
}

.star_rating a {
	font-size: 22px;
	letter-spacing: 0;
	display: inline-block;
	margin-left: 5px;
	color: #ccc;
	text-decoration: none;
}

.star_rating a:first-child {
	margin-left: 0;
}

.star_rating a.on {
	color: #777;
}
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script>
</head>
<body>
<h1>별점 후기 달기</h1>
	<form action="writereview.do" method="post">
		<input type="hidden" name="m_seq" value="${ldto.m_seq}">
		<input type="hidden" id="r_star" name="r_star" value="3">
		<input type="hidden" name="g_seq" value="${dto.g_seq}"/>
		<input type="hidden" name="p_seq" value="${dto.p_seq}"/>
		<table border="1">
			<tr colspan="2">
				<td colspan="2">
					<p class="star_rating">
						<a href="#" class="on" name="r_star" value="1">★</a> 
						<a href="#" class="on" name="r_star" value="2">★</a> 
						<a href="#" class="on" name="r_star" value="3">★</a> 
						<a href="#" name="r_star" value="4">★</a>
						<a href="#" name="r_star" value="5">★</a>
					</p>
				</td>
			</tr>
	<tr>
		<td>상품명</td>
		<td>${dto.p_name}</td>
	</tr>
	<tr>
		<td colspan="2"><textarea rows="10" cols="40" id="ckeditor" name="r_conts"></textarea></td>
	</tr>
	
	<tr>
	<td colspan="2" align="right"><input type="submit" value="후기작성"><input type="button" value="뒤로가기" onclick="history.back(-1);"></td>
	</tr>
		</table>
	</form>
<script>
	//id가 ckeditor인 태그에 ckeditor를 적용시킴
	CKEDITOR.replace("ckeditor",{
	    filebrowserUploadUrl : "/kskp"+"/imageUpload.do",         //,width : '800px'
	    width : '800px' , height : '500px' , enterMode:Number(2)
	}) //이미지 업로드 기능을 추가하기위한 코드
</script>
</body>
</html>