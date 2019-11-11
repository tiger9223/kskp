<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title></title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".star_rating a").click(function() {
			$(this).parent().children("a").removeClass("on");
			$(this).addClass("on").prevAll("a").addClass("on");
			$("#r_star").val($(this).attr('value'));
			event.preventDefault();
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
</head>
<body>
<h1>별점 후기 달기</h1>
	<form action="starReview.do">
		<input type="hidden" id="r_star" name="r_star">
		<table border="1">
			<tr colspan="2">
				<td colspan="2">
					<p class="star_rating">
						<a href="#" class="on" name="r_star" value="1">★</a> 
						<a href="#"class="on" name="r_star" value="2">★</a> 
						<a href="#" class="on" name="r_star" value="3">★</a> 
						<a href="#" name="r_star" value="4">★</a>
						<a href="#" name="r_star" value="5">★</a>
					</p>
				</td>
			</tr>
	<tr>
		<td>상품명</td>
		<td>상품명나오기</td>
	</tr>
	<tr >
		<td colspan="2"><textarea rows="10" cols="40"></textarea></td>
	</tr>
	<tr>
	<td colspan="2"><input type="submit" value="후기작성"><input type="button" value="뒤로가기" onclick="history.back(-1);"></td>
	</tr>
		</table>
	</form>
</body>
</html>