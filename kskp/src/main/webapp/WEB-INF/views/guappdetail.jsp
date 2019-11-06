<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<h1>가이드 정보 상세보기</h1>
<table border="1">
<tr>
	<td rowspan="5">사진</td>
	<td>이름</td>
	<td>${dto.gu_name}</td>
</tr>
<tr>
	<td>전화번호</td>
	<td>${dto.gu_phone}</td>
</tr>
<tr>
	<td>이메일</td>
	<td>${dto.gu_email}</td>
</tr>
<tr>
	<td>은행명</td>
	<td>${dto.gu_bank}</td>
</tr>
<tr>
	<td>은행계좌</td>
	<td>${dto.gu_acc}</td>
</tr>
<tr>
<td colspan="3">내용</td>
<tr>
<tr>
	<td><textarea rows="15" cols="25" readonly="readonly">${dto.gu_intro}</textarea></td>
</tr>
<tr>
	<td><button onclick="location.href='guideapp.do?gu_seq=${dto.gu_seq}'">가입승인</button>
		<button onclick="location.href='noguideapp.do?gu_seq=${dto.gu_seq}'">가입거절</button>
</table>
</body>
</html>