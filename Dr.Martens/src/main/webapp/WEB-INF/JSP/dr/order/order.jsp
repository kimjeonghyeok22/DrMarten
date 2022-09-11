<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <!DOCTYPE html>
        <jsp:include page="/WEB-INF/JSP/include/admin_header.jsp" />
        <div id="admin_main">
            <div class="container">
                <div class="inner ">
					<h3>주문 목록</h3>
					<table id="List">
		            	<tr>
		                	<th style="width:60px;">번호</th>
		                    <th style="width:100px;">주문번호</th>
		                    <th style="width:100px;">주문일</th>
		                    <th>고객명</th>
		                    <th style="width:100px;">구매액</th>
		                </tr>
		                <c:forEach var="b" items="${list}" varStatus="status">
							<tr>
								<td class="center">${status.count}</td>
								<td class="center" style="font-weight: bold;"><a href="/admin/order/detail/${b.order_num}">${b.order_num}</a></td>
								<td class="center">${b.order_date}</td>
								<td class="center">${b.u_email}</td>
								<td class="right" style="font-weight: bold;">${b.total_price}</td>
							</tr>
						</c:forEach>
					</table>
                </div>
            </div>
        </div>
        <jsp:include page="/WEB-INF/JSP/include/admin_footer.jsp" />