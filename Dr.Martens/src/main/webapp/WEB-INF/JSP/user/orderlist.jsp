<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/JSP/include/header.jsp" />
<script>document.title = "DrMartens 마이페이지";</script>
<!--  -->
<!-- 페이지 영역 -->
<div id="main">
	<div class="inner">
	<table>

<c:forEach var="d" items="${orderDetail}">
<tr>
	<c:forEach var="o" items="${orderList}">
		<c:if test="${o.order_num eq d.order_num}">
			<td>${o.order_date}</td>
		</c:if>
	</c:forEach>
	<td>${d.order_detail_num}</td>
	<td>${d.product_code}</td>
	<td>${d.product_name}</td>
	<td>${d.discounted_price}</td>
	<td>${d.product_count}</td>
	<td>${d.total_price}</td>
	<td>${d.product_code}</td>
	<td>${d.product_size}</td>
</tr>
</c:forEach>
	</table>
	</div>
</div>
<!-- //페이지 영역 -->
<!--  -->
<jsp:include page="/WEB-INF/JSP/include/footer.jsp" />