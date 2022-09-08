<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <!DOCTYPE html>
        <jsp:include page="/WEB-INF/JSP/include/header.jsp" />
        <div id="main">
            <div class="inner detail_inner" style="width:1124px;">
                <div id="subHead">
                    <div class="subHead_back fx" style="margin-bottom : 20px;">
                        <button class="subHead_btn" onclick="history.go(-1)"> <span class="text_hiden">뒤로가기</span>
                            <svg version="1.1" viewBox="0 0 34 22" class="subHead_btn_icon">
                                <path pid="0" fill="#111" fill-rule="evenodd" d="M33.974 9.503H5.771l7.493-7.402L11.128-.01-.012 10.995 11.128 22l2.136-2.111-7.493-7.401h28.203V9.503z"></path>
                            </svg>
                        </button>
                    </div>
                </div>
                <div class="wrap" style="margin-bottom: 16px;"> <span style="font-size : 36px; color : #000; font-weight: bold;">1:1 문의</span> <a href="/DrMarten/writeQna" class="detail_btn">글쓰기</a></div>
                <div class="product_detail  w100 bn">
                    <c:forEach var="q" items="${qa}">
                    	<c:forEach var="r" items="${rp}">
                        <div class="review"> 
                        	<c:if test="${r.origin_num eq q.board_num}">
                        		<span class="rp_ok">답변완료</span>
                        	</c:if>
                        	<span class="writer">${q.writer}</span><br> 
                        	<span class="title">[${q.category}] ${q.title}</span><br> 
                            <span class="contents">작성일 | ${q.wdate}</span><br> 
                            <span class="contents con">${q.contents}</span><br>
                            <c:if test="${r.origin_num eq q.board_num}">
                            	<div class="rp_line contents"></div>
                        		<span class="contents rp_title">${r.title}</span><br>
                        		<span class="contents">작성일 | ${r.wdate}</span><br>
                        		<span class="contents">작성자 | ${r.writer}</span><br>
                        		<span class="contents rp_con">${r.contents}</span><br>
                        	</c:if>
                            <div class="review_btn"> 
                            	<span class="open">펼쳐보기</span> 
                            	<span class="close">접기</span> 
                            </div>
                        </div>

                        </c:forEach>
                    </c:forEach>
                </div>
            </div>
        </div>
        <jsp:include page="/WEB-INF/JSP/include/footer.jsp" />