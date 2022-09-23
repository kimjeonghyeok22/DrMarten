<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/JSP/include/header.jsp" />
<script>document.title = "DrMartens 마이페이지";</script>
<!--  -->
<!-- 페이지 영역 -->
<div id="main">
	<div class="inner">
	<div id="subHead">
			<div class="subHead_back" style="padding : 0 0 20px 0; ">
				<button class="subHead_btn" onclick="history.go(-1)">
					<span class="text_hiden">뒤로가기</span>
					<svg version="1.1" viewBox="0 0 34 22" class="subHead_btn_icon">
						<path pid="0" fill="#111" fill-rule="evenodd" d="M33.974 9.503H5.771l7.493-7.402L11.128-.01-.012 10.995 11.128 22l2.136-2.111-7.493-7.401h28.203V9.503z"></path>
					</svg>
				</button>
				<div class="subHead_title">주문 내역 </div>
			</div>
		</div>
	<table id="orderList">
<c:forEach var="d" items="${orderList}"  varStatus="status">
<tr class="t">
	<td class="center num">${status.count}</td>
	<td colspan="2">${d.order_date}</td>
	<td class="center">사이즈</td>
	<td class="center">가격</td>
	<td class="center">수량</td>
	<td class="right">계 : ${d.total_price}</td>
	<td class="center review"><a href="/DrMarten/writeQna/order/${d.order_num}">문의작성</a></td>
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
		<td class="center"><a href="/DrMarten/review/${o.order_detail_num}/${o.product_code}">리뷰</a></td>
	</tr>
</c:forEach>
</c:forEach>
	</table>
	</div>
</div>
<!-- //페이지 영역 -->
<!--  -->
<jsp:include page="/WEB-INF/JSP/include/footer.jsp" />