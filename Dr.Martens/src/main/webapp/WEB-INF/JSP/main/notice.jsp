<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<script>document.title = "공지사항 | 닥터마틴 코리아";</script>
        <jsp:include page="/WEB-INF/JSP/include/header.jsp" />
       <div id="main">
       <div class="wrap qna">
       <div class="left_menu">
       		<strong>CS center</strong><br>
       		<span>고객센터를 이용해 보세요.</span>
       		<ul id="left_menu">
       			<li class="on"><a href="/DrMarten/notice"><img src="/resources/img/icon/btn_cs01.jpg"><span>공지사항</span></a></li>
       			<li ><a href="/DrMarten/qna"><img src="/resources/img/icon/btn_cs03.jpg">자주 묻는 질문</a></li>
       		</ul>
       </div>
                <div class="inner qna">
<h1>공지사항</h1>
		<table id="notice">
			<tr>
				<th style="width:60px;">번호</th>
				<th>제목</th>
				<th style="width:120px;">작성일</th>
				<th style="width:60px;">조회수</th>
			</tr>
			<c:forEach var="b" items="${pageInfo.list}">
				<tr>
					<td class="center">${b.board_num}</td>
					<td><a href="/DrMarten/notice/detail/${b.board_num}">[${b.category}] ${b.title}</a></td>
					<td class="center">${b.wdate}</td>
					<td class="center">${b.view_count}</td>
				</tr>
			</c:forEach>
		</table>
				<div class="pgn_wrap qna">
		<c:forEach var="i" items="${pageInfo.navigatepageNums}">
				<c:choose>
					<c:when test="${i==pageInfo.pageNum}">
				<span class="pgn pgn_on">${i}</span>
			</c:when>
					<c:otherwise>
				<span class="pgn"><a href="/DrMarten/notice/page/${i}">${i}</a></span>
			</c:otherwise>
				</c:choose>
			</c:forEach>
			</div>
                </div>
                </div>
        </div>
     <jsp:include page="/WEB-INF/JSP/include/footer.jsp" />