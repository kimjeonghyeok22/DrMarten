<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="/WEB-INF/JSP/include/header.jsp" />
<script>document.title = "닥터마틴 코리아 :: 리뷰작성";</script>
<div id="main">
<div class="inner">
<form id="write_form" class="inputForm" action="/dr/review/save" method="post" enctype="multipart/form-data">
	<input type="hidden" name="order_num"  value="${order_num}">
	<input type="hidden" name="product_code"  value="${product_code}">
	<div class="dmField dmInput mb30">
		<label class="dmField_label">제목</label>
		<div class="dmField_input_box">
			<input type="text" name="title" value="" class="dmField_input" placeholder="제목을 입력해주세요.">
		</div>
	</div>
	<div class="dmField dmInput mb30">
		<label class="dmField_label">내용</label>
		<div class="dmField_input_box">
			<textarea  name="contents" class="dmField_textarea" placeholder="내용을 입력해주세요."></textarea>
		</div>
	</div>
<div class="image-container dmField dmInput mb30">
    <div class="dmField_input_box img">
    	<img  id="preview-image" src="https://dummyimage.com/300x300/ffffff/000000.png&text=preview+image" class="dmField_input img">
    	<label class="dmField_label hide" >사진</label>
    </div>
    <div class="dmField dmInput mb30 file">
	    <div class="dmField_input_box mb30">
	    	<label class="dmField_label">첨부파일</label>
	   	 	<input type="file" id="input-image" name="files" onchange="readURL(this);" class="dmField_input ">
	   	 </div>
	   	    <div class="dmField_input_box">
	   	    	<label class="dmField_label">별점</label>
	   	    	<div class="dmField_input score">
	   	    		<div class="star on">
	   	    			<span class="empty"><i class="fa-regular fa-star"></i></span>
	   	    			<span class="full"><i class="fa-solid fa-star"></i></span>
	   	    		</div>
	   	    		<div class="star">
	   	    			<span class="empty"><i class="fa-regular fa-star"></i></span>
	   	    			<span class="full"><i class="fa-solid fa-star"></i></span>
	   	    		</div>
	   	    		<div class="star">
	   	    			<span class="empty"><i class="fa-regular fa-star"></i></span>
	   	    			<span class="full"><i class="fa-solid fa-star"></i></span>
	   	    		</div>
	   	    		<div class="star">
	   	    			<span class="empty"><i class="fa-regular fa-star"></i></span>
	   	    			<span class="full"><i class="fa-solid fa-star"></i></span>
	   	    		</div>
	   	    		<div class="star">
	   	    			<span class="empty"><i class="fa-regular fa-star"></i></span>
	   	    			<span class="full"><i class="fa-solid fa-star"></i></span>
	   	    		</div>
	   	    	</div>
	   	    </div>
	   	    <div class="btn_wrap">
<button type="reset" class="cmBtn black mid">취소</button>
<button type="submit" class="cmBtn yellow mid">저장</button>
</div>
   	 </div>
</div>
	<input type="hidden" name="score" id="review_score"  value="1">

</form>
</div>
</div>
<jsp:include page="/WEB-INF/JSP/include/footer.jsp" />