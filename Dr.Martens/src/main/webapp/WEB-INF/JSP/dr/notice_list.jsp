<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <!DOCTYPE html>
        <jsp:include page="/WEB-INF/JSP/include/admin_header.jsp" />
        <div id="admin_main">
            <div class="container">
                <div class="inner">
                    <h3>공지사항 목록</h3>
                    <table>
                        <tr>
                            <th style="width:60px;">번호</th>
                            <th>제목</th>
                            <th style="width:120px;">작성일</th>
                            <th style="width:60px;">조회수</th>
                        </tr>
                        <c:forEach var="b" items="${list}">
                            <tr>
                                <td class="center">${b.board_num}</td>
                                <td><a href="/admin/notice/detail/${b.board_num}">[${b.category}] ${b.title}</a></td>
                                <td class="center">${b.wdate}</td>
                                <td class="center">${b.view_count}</td>
                            </tr>
                        </c:forEach>
                    </table>
                    <div class="btn_wrap">
                        <button type="button" class="cmBtn line sml black" onclick="location.href='/admin/notice/write';" class="cmBtn black sml">작성</button>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="/WEB-INF/JSP/include/admin_footer.jsp" />