<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <!DOCTYPE html>
        <jsp:include page="/WEB-INF/JSP/include/admin_header.jsp" />
        <div id="admin_main">
            <div class="container">
                <div class="inner ">
					<h3>상세주문</h3>
					<table id="List">
		            	<tr>
		                	<th style="width:60px;">NO</th>
		                    <th style="width:100px;">썸네일</th>
		                    <th>상품명</th>
		                    <th style="width:100px;">사이즈</th>
		                    <th style="width:100px;">가격</th>
		                    <th style="width:100px;">개수</th>
		                    <th style="width:100px;">합계</th>
		                </tr>
						<c:forEach var="o" items="${list}"  varStatus="status2">
							<tr class="order_detail">
								<td class="center">${status2.count}</td>
								<td class="center"><img src="/resources/img/${o.product_name}/${o.product_name}_main.png" /></td>
								<td class="p_name"><a href="/DrMarten/product/detail_product/${o.product_code}">${o.product_name}</a></td>
								<td class="center">${o.product_size}</td>
								<td class="center	">${o.discounted_price}</td>
								<td class="center">${o.product_count}</td>
								<td class="right">${o.total_price}</td>
							</tr>
						</c:forEach>
					</table>
										<div class="btn_wrap">
					<button type="button" onclick="location.href='/admin/order';"class="cmBtn black sml">목록</button>
				</div>
                </div>
            </div>
        </div>
        <jsp:include page="/WEB-INF/JSP/include/admin_footer.jsp" />