<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <!DOCTYPE html>
        <jsp:include page="/WEB-INF/JSP/include/admin_header.jsp" />
        <div id="admin_main">
            <div class="container">
                <div class="inner">
                    <h3>자주묻는질문 상세보기</h3>
                    <table>
                        <tr>
                            <td class="title">[${board.category}] ${board.title}</td>
                            <td>${board.wdate }</td>
                        </tr>
                        <tr>
                            <td style="text-align : left; padding: 10px 30px; " colspan="2">조회수<span class="count"> | </span>${board.view_count }</td>
                        </tr>
                        <tr>
                            <td colspan="2">${board.contents}</td>
                        </tr>
                    </table>
                    <div class="btn_wrap">
                        <button type="button" onclick="location.href='/admin/qa/list';" class="cmBtn black sml">목록</button>
                        <button type="button" onclick="location.href='/admin/qa/edit/${board.board_num}';" class="cmBtn black sml">수정</button>
                        <button type="button" onclick="deleteQA();" class="cmBtn black sml">삭제</button>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="/WEB-INF/JSP/include/admin_footer.jsp" />