<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <!DOCTYPE html>
        <jsp:include page="/WEB-INF/JSP/include/admin_header.jsp" />
        <div id="admin_main">
            <div class="container">
                <div class="inner">
                    <h3>1:1질문 답변</h3>
                    <form id="write_form" onsubmit="return saveRep();">
                        <input type="hidden" name="pcode" value="1">
                        <div class="dmField dmInput mb30 ib cate">
                            <label class="dmField_label">카테고리</label>
                            <div class="dmField_input_box cate">
                                <select name="category" id="category" class="dmField_select">
                                    <option>주문관련</option>
                                    <option>상품관련</option>
                                    <option>배송관련</option>
                                    <option>교환/환불</option>
                                    <option>기타</option>
                                </select>
                            </div>
                        </div>
                        <div class="dmField dmInput mb30 ib rtitle">
                            <label class="dmField_label">제목</label>
                            <div class="dmField_input_box">
                                <input type="text" name="title" value="" class="dmField_input qna_title" placeholder="제목을 입력해주세요."> </div>
                        </div>
                        <input type="hidden" name="origin_num" value="${origin_num}">
                        <br>
                        <div class="dmField dmInput mb30">
                            <label class="dmField_label">내용</label>
                            <div class="dmField_input_box">
                                <textarea name="contents" class="dmField_textarea" placeholder="내용을 입력해주세요."></textarea>
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