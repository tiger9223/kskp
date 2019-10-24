
<%@page import="com.hk.kskp.dtos.NoticeDto"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function allSel(ele){// ele는 전체 선택 체크박스의 체크여부(true/false)
// 		alert(ele);
		//어떻게 하면 다른 체크박스의 체크여부를 전달해줄수 있을까???
		//DOM탐색 메서드의 종류: getElementById(), getElementsByName(), getElementsByTagName()
		//                 getElementsByClass(), querySelector() , querySelectorAll()
		var chks=document.getElementsByName("chk");//chks[chk,chk,chk,chk]	
		for(var i=0;i<chks.length;i++){
			chks[i].checked=ele;//각각의 체크박스에 전달받은 체크여부(true/false)를 적용
		}
	}
</script>
</head>
<%!   //메서드 선언부
	public String getToDate(Date regDate){
		String r="";
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		r=sdf.format(regDate);
		return r;
	}
%>

<%
// 	Object obj=request.getAttribute("list");
	List<NoticeDto> list =(List<NoticeDto>)request.getAttribute("list"); 
%>
<body>
<h1>공지사항</h1>
<form action="HkController.do" method="post">
<input type="hidden" name="command" value="muldel"/>
<table border="1">
	<col width="50px">
	<col width="50px">

	<col width="300px">
	<col width="100px">
	<col width="100px">
	<tr>
		<th><input type="checkbox" onclick="allSel(this.checked)" /></th>
		<th>번호</th>	
		<th>제 목</th>
		<th>작성날짜</th>
		<th>조회수</th>
	</tr>
	<% 
		if(list==null||list.size()==0){
			%>
			<tr>
				<td colspan="6" style="text-align: center;">---작성된 글이 없습니다.---</td>
			</tr>
			<%
		}else{
			//list의 길이만큼 반복시킨다
			for(int i=0;i<list.size();i++){
				NoticeDto dto=list.get(i); //list[dto,dto,dto,dto]
				%>
				<tr>
					<td><input type="checkbox" name="chk" value="<%=dto.getN_seq()%>"/></td>
					<td><%=dto.getN_seq()%></td>
					<td><a href="ninsertboard.do=<%=dto.getN_seq()%>"><%=dto.getN_title()%></a></td>
					<td><%=getToDate(dto.getN_regdate())%></td>
				</tr>
				<%		
			}
		}
	%>
	<tr>
		<td colspan="6">
			<a href="insertform.do">글추가</a>
			<input type="submit" value="삭제"/>
		</td>
	</tr>
</table>
</form>
</body>
</html>










