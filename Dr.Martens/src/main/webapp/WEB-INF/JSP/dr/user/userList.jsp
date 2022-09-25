<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/JSP/include/admin_header.jsp" />
	<div id="admin_main">
		<div class="container">
    		<div class="inner">
    			<h3>회원 목록</h3>
    			<table id="list">
    				<tr>
    					<th>번호</th>
    					<th>이름</th>
    					<th>이메일</th>
    					<th>포인트</th>
    				</tr>
					<c:forEach var="p" items="${list}" varStatus="v">
					<tr>
						<td style="text-align:center;">${v.count}</td>
						<td style="text-align:center;"><a href="/admin/user/detail/${p.u_email}">${p.name}</a></td>
						<td>${p.u_email}</td>
						<td style="text-align:center;">${p.point}</td>
					</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
<jsp:include page="/WEB-INF/JSP/include/admin_footer.jsp" />