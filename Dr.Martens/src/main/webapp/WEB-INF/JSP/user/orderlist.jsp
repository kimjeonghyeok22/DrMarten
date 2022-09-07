<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/JSP/include/header.jsp" />
<script>document.title = "DrMartens 마이페이지";</script>
<!--  -->
<!-- 페이지 영역 -->
<div id="main">
	<div class="inner">
	<table id="orderList">
<c:forEach var="d" items="${orderList}"  varStatus="status">
<tr class="t">
	<td class="center num">${status.count}</td>
	<td colspan="2">${d.order_date}</td>
	<td class="center">사이즈</td>
	<td class="center">가격</td>
	<td class="center">수량</td>
	<td class="right">계 : ${d.total_price}</td>
	<td class="center review">리뷰</td>
</tr>
<c:forEach var="o" items="${d.cart}"  varStatus="status2">
	<tr class="order_detail">
		<td class="center">${status2.count}</td>
		<td class="center"><img src="/resources/img/${o.product_name}/${o.product_name}_main.png" /></td>
		<td class="p_name"><a href="/DrMarten/product/detail_product/${o.product_code}">${o.product_name}</a></td>
		<td class="center">${o.product_size}</td>
		<td class="center	">${o.discounted_price}</td>
		<td class="center">${o.product_count}</td>
		<td class="right">${o.total_price}</td>
		<td class="center"><a href="/DrMarten/review/${o.order_detail_num}/${o.product_code}"><i class="fa-solid fa-chevron-right"></i></a></td>
	</tr>
</c:forEach>
</c:forEach>
	</table>
	</div>
</div>
<!-- //페이지 영역 -->
<!--  -->
<jsp:include page="/WEB-INF/JSP/include/footer.jsp" />