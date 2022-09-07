<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="/WEB-INF/JSP/include/header.jsp" />
<script>document.title = "닥터마틴 코리아 :: 1:1문의 작성";</script>
<div id="main">
<div class="inner">
<form id="write_form" onsubmit="return saveMyQna();" class="myqna_form">
	<input type="hidden" name="pcode" value="0">

		<div class="dmField dmInput mb30 ib cate">
		<label class="dmField_label">카테고리</label>
		<div class="dmField_input_box cate">
			<select name="category" id="category" class="dmField_select">
		<option>상품관련</option>
		<option>주문관련</option>
		<option>배송관련</option>
		<option>교환/환불</option>
		<option>기타</option>
			</select>
		</div>
	</div>
		<div class="dmField dmInput mb30 ib rtitle">
		<label class="dmField_label">제목</label>
		<div class="dmField_input_box">
			<input type="text" name="title" value="" class="dmField_input qna_title" placeholder="제목을 입력해주세요.">
		</div>
	</div>
	<input type ="hidden" name="product_code"value="${product_code}">
	<input type ="hidden" name="order_num"  value=0>
	<br>
	<div class="dmField dmInput mb30">
		<label class="dmField_label">내용</label>
		<div class="dmField_input_box">
			<textarea  name="contents" class="dmField_textarea" placeholder="내용을 입력해주세요."></textarea>
		</div>
	</div>
<div class="btn_wrap">
<button type="reset" class="cmBtn black sml">취소</button>
<button type="submit" class="cmBtn black sml">저장</button>
</div>

</form>
</div>
</div>
<jsp:include page="/WEB-INF/JSP/include/footer.jsp" />