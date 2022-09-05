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
                <div class="inner qna auto">
<table id="notice_detail">
<tr>
	<td class="title_tb">[${board.category}] ${board.title}</td>
	<td>${board.wdate }</td>
</tr>
<tr>
	<td style="text-align : left; padding: 10px 30px; " colspan="2">조회수<span class="count"> | </span>${board.view_count }</td>
</tr>
<tr>
	<td colspan="2" class="contents">${board.contents}</td>
</tr>
</table>
<div class="btn_wrap">
<button type="button" onclick="location.href='/DrMarten/notice';" class="cmBtn black sml">목록</button>
</div>
                </div>
                </div>
        </div>
     <jsp:include page="/WEB-INF/JSP/include/footer.jsp" />