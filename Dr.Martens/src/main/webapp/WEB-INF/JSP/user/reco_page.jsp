<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/JSP/include/head.jsp" />
<script>document.title = "DrMartens 추천인등록";</script>
<!-- 페이지 영역 -->
<div id="recommend">
	<h2 class="page_intro mb50">
		<strong class="fz30 fw700 c333 lh015">닥터마틴을 추천해주신 분의<br />아이디를 등록해주세요</strong>
		<span class="fz18 c666 lh015">회원님과 추천인에게 <em class="c333 fw700">500마일리지</em>가 지급됩니다</span>
	</h2>
	<form action="/DrMarten/user/recommend" method="post">
		<%-- 팝업 : 추천인 입력--%>
		<div class="dmField dmInput mb30">
			<label class="dmField_label">추천인 입력</label>
			<div class="dmField_input_box">
				<input type="text" name="recommender" id="recommender" placeholder="추천인 아이디 입력"  class="dmField_input">
			</div>
		</div>
		<button type="submit" class="cmBtn fullWidth black large fw700 mb10">추천인 등록</button>
	</form>
</div>
<!-- //페이지 영역 -->