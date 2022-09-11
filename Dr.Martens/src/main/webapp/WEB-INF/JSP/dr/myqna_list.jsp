<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<jsp:include page="/WEB-INF/JSP/include/admin_header.jsp" />
<div id="admin_main">
	<div class="container">
    	<div class="inner">
        	<h3>1:1질문 목록</h3>
        	<table id="List">
            	<tr>
                	<th style="width:60px;">번호</th>
                    <th style="width:80px;">카테고리</th>
                    <th>제목</th>
                    <th style="width:100px;">작성자</th>
                    <th style="width:120px;">작성일</th>
                    <th style="width : 80px">상태</th>
                </tr>
                <c:forEach var="b" items="${list}" varStatus="status">
					<tr>
	                	<td class="num center" style="font-weight: bold;">${status.count}</td>
	                        <td class="center">[${b.category}]</td>
	                        <td><a href="/admin/myqna/detail/${b.board_num}">${b.title}</a></td>
	                        <td>${b.writer}</td>
	                        <td class="center">${b.wdate}</td>
	                        <c:forEach var="r" items="${rp}">
	                        	<c:if test="${b.board_num eq r.origin_num}">
	                        		<td class="center" style="font-weight: bold;">답변완료</td>
	                        	</c:if>
	                        </c:forEach>
						</tr>
				</c:forEach>
			</table>
		</div>
	 </div>
</div>
<jsp:include page="/WEB-INF/JSP/include/admin_footer.jsp" />