<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
카카오페이 결제가 정상적으로 완료되었습니다.
 
결제일시:     [[${info.approved_at}]]<br/>
주문번호:    [[${info.partner_order_id}]]<br/>
상품명:    [[${info.item_name}]]<br/>
상품수량:    [[${info.quantity}]]<br/>
결제금액:    [[${info.amount.total}]]<br/>
결제방법:    [[${info.payment_method_type}]]<br/>

<form name="form" method="post">
<input type="hidden"  name="p_seq" value="${dto.p_seq}" />
<input type="hidden"  name="g_seq" value="${dto.g_seq}" />
<input type="hidden"  name="m_seq" value="${dto.m_seq}" />
<input type="hidden"  name="p_cost" value="${dto.p_cost}" />
<input type="hidden"  name="p_num" value="${dto.p_num}" />
<input type="hidden"  name="p_date" value="${dto.p_date}" />
<input type="hidden"  name="p_name" value="${dto.p_name}" />
<c:choose>
<c:when test="${dto.p_seq ne 0}">
<input type="submit" value="예약확인" onclick='return btn_click("res");'/>
</c:when>
<c:otherwise>
<input type="submit" value="확인" onclick='return btn_click("pay");'/>
</c:otherwise>
</c:choose>
<script>
function btn_click(str){
	if(str == "pay"){
			form.action="insertpay.do";
	}else if(str == "res"){
			form.action="cartpay.do";
	}
}
</script>
</form>
</body>
</html>