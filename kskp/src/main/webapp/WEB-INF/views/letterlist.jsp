<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title></title>
</head>
<body>
<c:forEach var = "note" items="${messageList}">
    쪽지번호 : ${note.m_num } <br>
    보낸사람 : ${note.s_id } <br>
    내용 : ${note.note } <br>
    보낸 날짜 : ${note.inputdate } 
</c:forEach>
[출처] [스프링] [실습] 쪽지보내기|작성자 아오스딩

</body>
</html>