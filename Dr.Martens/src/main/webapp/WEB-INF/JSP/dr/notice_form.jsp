<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <!DOCTYPE html>
        <jsp:include page="/WEB-INF/JSP/include/admin_header.jsp" />
        <div id="admin_main">
            <div class="container">
                <div class="inner">
                    <h3>공지 작성</h3>
                    <form id="write_form" onsubmit="return saveNotice();">
                        <div class="wrap">
                            <div class="dmField dmInput">
                                <label class="dmField_label">분류</label>
                                <select name="category" id="category" class="dmField_select">
                                    <option>이벤트</option>
                                    <option>공지</option>
                                </select>
                            </div>
                            <div class="dmField dmInput">
                                <label class="dmField_label">제목</label>
                                <input type="text" name="title" id="title" class="dmField_input">
                            </div>
                        </div>
                        <div class="wrap">
                            <div class="dmField dmInput">
                                <label class="dmField_label">내용</label>
                                <textarea name="contents" id="contents" class="dmField_textarea"></textarea>
                            </div>
                        </div>
                        <div class="btn_wrap">
                            <button type="reset" class="cmBtn black sml">취소</button>
                            <button type="submit" class="cmBtn black sml">저장</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <jsp:include page="/WEB-INF/JSP/include/admin_footer.jsp" />