<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<h1>가이드 송금신청서</h1>
<form action="appsal.do" method="post">
<table border="1">
<input type="hidden" name="gu_seq" value="${ldto1.gu_seq}"/>
<tr>
	<td>은행</td>
	<td><input type="text" name="s_bank" value="${ldto1.gu_bank}" readonly="readonly" /></td>
</tr>
<tr>
	<td>계좌</td>
	<td><input type="text" name="s_acc" value="${ldto1.gu_acc}" readonly="readonly" /></td>
</tr>
<tr>
	<td>정산금액</td>
	<td><input type="text" name="s_cost" value="${sal}" readonly="readonly" /></td>
</tr>
<tr>
	<td>실수령액</td>
	<td><input type="text" name="gcost" value="<f:formatNumber type="number" maxFractionDigits="0" value="${sal*0.8}"/>" readonly="readonly" /></td>
</tr>
<tr>
	<td colspan="2"><input type="submit"/> </td>
</tr>
</table>
</form>
</body>
</html>