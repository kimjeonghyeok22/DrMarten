<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<jsp:include page="/WEB-INF/JSP/include/admin_header.jsp" />
	<div id="admin_main">
		<div class="container">
			<div class="inner">
				<h3>1:1질문 상세보기</h3>
				<table>
					<tr>
						<td class="title">[${board.category}]  ${board.title}</td>
						<td>${board.wdate }</td>
					</tr>
					<tr>
						<td colspan="2">${board.contents}<br>
						<c:forEach var="r" items="${rp}">
						<div class="rp">
						<span class="rptitle">${r.title}</span>
                                    <br> <span>작성일 | ${r.wdate}
                                    <br> 작성자 | ${r.writer}</span>
                                    <br> <span>${r.contents}</span>
                                    </div>
						</c:forEach></td>
					</tr>
				</table>
				<div class="btn_wrap">
					<button type="button" onclick="location.href='/admin/myqna/list';"class="cmBtn black sml">목록</button>
					<button type="button" onclick="location.href='/admin/myqna/reply/${board.board_num}';" class="cmBtn black sml">답변작성</button>
					<!-- <button type="button" onclick="location.href='/admin/myqna/edit/${board.board_num}';" class="cmBtn black sml">수정</button>
					<button type="button" onclick="deleteMyQA();" class="cmBtn black sml">삭제</button> -->
				</div>
			</div>
		</div>
	</div>
<jsp:include page="/WEB-INF/JSP/include/admin_footer.jsp" />