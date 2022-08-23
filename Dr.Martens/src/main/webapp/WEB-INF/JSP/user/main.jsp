<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/JSP/include/header.jsp" />
<script type="text/javascript">document.title = "DrMarten -user-";</script>
<!--  -->
<!-- 페이지 영역 -->
<div id="container">
	<div id="content">
		<main id="user">
			<ul class="user_pageList">
				<li class="list01 end"><a href="/DrMarten/user/signUp">회원가입</a></li>
				<li class="list02 end"><a href="/DrMarten/user/login">로그인</a></li>
				<li class="list03 end"><a href="/DrMarten/user/emailwaitingroom">이메일 확인 버튼 누르고 갈 페이지</a></li>
				<li class="list04 end"><a href="/DrMarten/user/restSignUp">이메일 확인 후 나머지 회원가입 페이지</a></li><br />
				<li class="list05"><a href="/DrMarten/user/find_id">아이디 찾기</a></li>
				<li class="list06"><a href="/DrMarten/user/find_pw">비번 찾기</a></li>
				<li class="list07"><a href="/DrMarten/user/mypage">마이페이지</a></li>
				<li class="list08"><a href="/DrMarten/user/recommend">추천인 이동</a></li>
				<li class="list09"><a href="/DrMarten/user/emailSendAction">이메일 확인</a></li>
				<li class="list10"><a href="/DrMarten/user/emailCheck">인증 확인</a></li>
				<li class="list11"><a href="/DrMarten/user/edit">수정</a></li>
			</ul>
		</main>
	</div>
</div>
<!-- //페이지 영역 -->
<!--  -->
<jsp:include page="/WEB-INF/JSP/include/footer.jsp" />