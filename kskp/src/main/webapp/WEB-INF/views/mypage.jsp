<%@page import="com.hk.kskp.dtos.MembersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<style type="text/css">
#hello {
	border: soild red 1px;
}

#header {
	text-align: center;
}

#container {
	width: 300px;
	padding: 20px;
	padding-left: 15px;
	margin-bottom: 20px;
	text-align: center;
	display: table;
	margin-left: auto;
	margin-right: auto;
}

#bar {
	padding: 20px;
}
#body {
	width: 300px;
	padding: 20px;
	padding-left: 15px;
	margin-bottom: 20px;
	text-align: center;
	display: table;
	margin-left: auto;
	margin-right: auto;
}
</style>
</head>
<body>
	<header>
		<h1>
			<a href=""><img src="" alt=""></a>
		</h1>
		<button><a href="logout.do">로그아웃</a></button>
	</header>
<c:choose>
	<c:when test="${ldto.m_status eq 'M'}">
			<nav class="left_menu">
		<ul>
			<li>
				<h2>후기관리</h2>
				<ul>
					<li><a href="">내가 쓴 후기</a></li>
					<li><a href="">후기 글 남기기</a></li>
				</ul>
			</li>
			<li>
				<ul>
				<a href="cartlist.do?m_seq=${ldto.m_seq}"><h2>장바구니</h2></a>
				</ul>
			</li>
			<li>
				<ul>
				<a href="paylist.do?m_seq=${ldto.m_seq}"><h2>결제내역</h2></a>
				</ul>
			</li>
			<li>
				<h2>메세지</h2>
				<ul>
					<li><a href="sendLetterform.do">메세지 보내기</a></li>
					<li><a href="letterlist.do?l_receiver=${ldto.m_email}&pnum=1">받은 메세지 - ${count}개</a></li>
					<li><a href="sendletterlist.do?l_sender=${ldto.m_email}&pnum=1">보낸 메세지 - ${count1}개</a></li>
				</ul>
			</li>
			<li>
				<a href="muserinfo.do?seq=${ldto.m_seq}"><h2>계정관리</h2></a>
			</li>
		</ul>
	</nav>
	</c:when>
	<c:when test="${ldto.m_status eq 'A'}">
				<nav class="left_menu">
			<ul>
			<li>
				<ul>
				<a href="memberalllist.do"><h2>전체 회원 조회</h2></a>
				</ul>
			</li>
			<li>
				<ul>
				<a href="qboardlist.do?pnum=1"><h2>Q&A 전체글</h2></a>
				</ul>
			</li>
			<li>
				<ul>
				<a href="unanswered.do?pnum=1"><h2>미답변 글</h2></a>
				</ul>
			</li>
			<li>
				<ul>
				<a href="nboardlist.do?pnum=1"><h2>공지사항</h2></a>
				</ul>
			</li>
			<li>
				<ul>
				<a href="guideappform.do?pnum=1"><h2>가이드 가입승인</h2></a>
				</ul>
			</li>
			<li>
				<ul>
				<a href="goodsappform.do"><h2>여행상품 승인</h2></a>
				</ul>
			</li>
			<li>
				<h2>메세지</h2>
				<ul>
					<li><a href="sendLetterform.do">메세지 보내기</a></li>
					<li><a href="letterlist.do?l_receiver=${ldto.m_email}&pnum=1">받은 메세지 - ${count}개</a></li>
					<li><a href="sendletterlist.do?l_sender=${ldto.m_email}&pnum=1">보낸 메세지 - ${count1}개</a></li>
				</ul>
			</li>
			<li>
				<a href="auserinfo.do"><h2>계정관리</h2></a>
			</li>
		</ul>
	</nav>
	</c:when>
	<c:otherwise>
<!-- 		상품관리</a> -->
<!-- 		일정관리</a> -->
<%-- 		<a href="reviewpage.do?gu_seq=${ldto1.gu_seq}">후기관리</a> --%>
<%-- 		<a href="paypage.do?gu_seq=${ldto1.gu_seq}">정산관리</a> --%>
<%-- 		<a href="letterpage.do?gu_seq=${ldto1.gu_seq}">메세지</a> --%>
<%-- 		<a href="accountpage.do?gu_seq=${ldto1.gu_seq}">계정관리</a> --%>
		<nav class="left_menu">
	`	<ul>
			<li>
				<a href="goodspage.do?gu_seq=${ldto1.gu_seq}"><h2>상품관리</h2></a>
			</li>
			<li>
				<a href="calendarpage.do?gu_seq=${ldto1.gu_seq}"><h2>일정관리</h2></a>
			</li>
			<li>
				<h2>후기관리</h2>
				<ul>
					<li><a href="starReview.do">답글 달지 않은 후기</a></li>
					<li><a href="">답글 한 후기</a></li>
				</ul>
			</li>
			<li>
				<h2>정산관리</h2>
				<ul>
					<li><a href="">현재 수익 내역</a></li>
					<li><a href="">송금 신청 내역</a></li>
				</ul>
			</li>
			<li>
				<h2>메세지</h2>
				<ul>
					<li><a href="sendLetterform.do">메세지 보내기</a></li>
					<li><a href="letterlist.do?l_receiver=${ldto1.gu_email}&pnum=1">받은 메세지 - ${count}개</a></li>
					<li><a href="sendletterlist.do?l_sender=${ldto1.gu_email}&pnum=1">보낸 메세지 - ${count1}개</a></li>
				</ul>
			</li>
			<li>
				<a href="guserinfo.do?seq=${ldto1.gu_seq}"><h2>계정관리</h2></a>
			</li>
		</ul>
	</nav>
	</c:otherwise>
</c:choose>

</body>
</html>