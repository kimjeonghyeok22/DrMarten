<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/JSP/include/header.jsp" />
<script>document.title = "DrMartens 로그인";</script>
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
				<div class="subHead_title">로그인</div>
			</div>
		</div>
		<!-- //서브페이지 상단 -->
		<main id="user">
			<h2 class="page_intro mt20">
				<strong class="fw700 fz36">어서오세요</strong>
				<span class="fz18 c666">닥터마틴에 오신걸 환영합니다</span>
			</h2>
			<div class="login_wrap">
				<!-- 회원 로그인 -->
				<div class="user_login_form login_box">
					<h3 class="form_title">로그인</h3>
					<form id="login_form" action="/DrMarten/user/login" method="post">
						<div class="dmField dmInput mb30">
							<label class="dmField_label">아이디</label>
							<div class="dmField_input_box">
								<input type="email" name="u_email" id="u_email" class="dmField_input" placeholder="abc1234@email.com" >
							</div>
						</div>
						<div class="dmField dmInput">
							<label class="dmField_label">비밀번호</label>
							<div class="dmField_input_box">
								<input type="password" name="u_pw" id="u_pw" class="dmField_input">
							</div>
						</div>
						<div class="login_util">
							<div class="ck_box dib mr10">
								<input type="checkbox" id="ck1" name="cc"/>
								<label for="ck1"><span></span>아이디 자동저장</label>
							</div>
							<div class="btn_wrap">
								<a href="/DrMarten/user/find_id" class="link mid">아이디/</a>
								<a href="/DrMarten/user/find_pw" class="link mid">비밀번호 찾기</a>
							</div>
						</div>
						<div class="login_box mt40">
							<button type="submit" class="cmBtn fullWidth black large fw700 mb10">로그인</button>
							<!-- <a href="javascript:;" class="cmBtn fullWidth yellow large fw700">카카오 회원가입/로그인</a> -->
						</div>
						<div class="login_util join_util">
							<div class="btn_wrap join_util">
								<a href="/DrMarten/user/signUp" class="link mid">회원가입</a>
							</div>
						</div>
					</form>
				</div>
				<!-- //회원 로그인 -->
				<!-- 비회원 로그인 -->
				<div class="non_user_login_form login_box">
					<h3 class="form_title">비회원 주문조회</h3>
					<form id="login_form" action="/user/login" method="post">
						<div class="dmField dmInput mb30">
							<label class="dmField_label">주문번호</label>
							<div class="dmField_input_box">
								<input type="text" name="non_u_num" id="non_u_num" class="dmField_input">
							</div>
						</div>
						<div class="dmField dmInput mb30">
							<label class="dmField_label">이메일</label>
							<div class="dmField_input_box">
								<input type="email" name="non_u_email" id="non_u_email" class="dmField_input">
							</div>
						</div>
						<div class="login_box mt80">
							<a href="javascript:;" class="cmBtn fullWidth line large fw700 mb10">비회원 주문조회</a>
						</div>
					</form>
					<div class="mask">준비중</div>
				</div>
				<!-- //비회원 로그인 -->
			</div>
		</main>
	</div>
</div>
<!-- //페이지 영역 -->
<!--  -->
<jsp:include page="/WEB-INF/JSP/include/footer.jsp" />
<!-- <form id="login_form" action="/DrMarten/user/login" method="post">
아이디:<input type="email" name="u_email" id="u_email" placeholder="이메일 형식 입력">
비밀번호:<input type="password" name="u_pw" id="u_pw">
<div><button type="submit">로그인</button></div>
<div><a href="/DrMarten/user/find_id"><button type="button">아이디 찾기</button></a></div>
<div><a href="/DrMarten/user/find_pw"><button type="button">비밀번호 찾기</button></a></div>
<div><a href="/DrMarten/user/signUp"><button type="button">회원가입</button></a></div>
</form> -->