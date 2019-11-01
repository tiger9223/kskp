<%@page import="com.hk.kskp.dtos.GuideDto"%>
<%@page import="com.hk.kskp.dtos.MembersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title></title>
<script type="text/javascript">
	window.onload = function() {
		var m_email = opener.document.getElementsByName("m_email")[0].value; //rid = 부모페이지의 rid값
		//opener : 현재 페이지를 열어준 부모페이지
		document.getElementsByName("m_email")[0].value = m_email; //rid = 현재페이지의 rid값이 됨
	}
	
	function kk(bool) {
		var parentPage1 = opener.document.getElementsByName("idchk")[0]; 
		var parentPage = opener.document.getElementsByName("m_email")[0]; 
		if(bool) {
			opener.document.getElementsByName("m_pw")[0].focus();
			parentPage.setAttribute("class","y");
			parentPage1.setAttribute("class","y");
			parentPage.setAttribute("disabled","ture");
		}else {
			parentPage.value = "";
			parentPage.focus();
		}
		self.close(); //현재창을 닫는다.
	}
</script>
</head>
<body>
<c:set var="isS" />
<c:choose>
	<c:when test="${dto == null and dto1 == null}">
		<c:set var="isS" value="true"/>
	</c:when>
	<c:otherwise>   
		<c:set var="isS" value="false"/>           
	</c:otherwise>
</c:choose>


<table border="1">
	<tr>
		<td><input type="text" name="m_email"></td>
	</tr>
	<tr>
		<td>${isS? "사용가능한 이메일입니다." : "중복된 이메일입니다."}  </td>
	</tr>
	<tr>
		<td><input type="button" value="확인" onclick="kk(${isS})"></td>
	</tr>
</table>
</body>
</html>