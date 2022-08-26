<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/JSP/include/header.jsp" />
<script type="text/javascript">document.title = "DrMartens 이메일인증 완료";</script>
<!--  -->
<!-- 페이지 영역 -->
<div id="container">
	<div id="content">
		<!-- 서브페이지 상단 -->
		<div id="subHead">
			<div class="subHead_back">
				<button class="subHead_btn" onclick="history.go(-1)">
					<span class="text_hiden">뒤로가기</span>
					<svg version="1.1" viewBox="0 0 34 22" class="subHead_btn_icon">
						<path pid="0" fill="#111" fill-rule="evenodd" d="M33.974 9.503H5.771l7.493-7.402L11.128-.01-.012 10.995 11.128 22l2.136-2.111-7.493-7.401h28.203V9.503z"></path>
					</svg>
				</button>
				<!-- <div class="subHead_title">메일인증완료</div> -->
			</div>
		</div>
		<!-- //서브페이지 상단 -->
		<main id="user">
			<h2 class="page_intro mt20">
				<strong class="fw700 fz36">회원가입 메일 전송</strong>
				<span class="fz18 c666 lh015">입력하신 이메일 주소로 인증 메일을 보냈습니다.<br>메일에 있는 링크를 통해 회원가입을 완료해주세요.</span>
			</h2>
			<div class="join_box mt60">
				<a href="/DrMarten" class="cmBtn fullWidth black large fw700 mb10">메인으로</a>
			</div>
		</main>
	</div>
</div>
<!-- //페이지 영역 -->
<!--  -->
<jsp:include page="/WEB-INF/JSP/include/footer.jsp" />