<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/JSP/include/header.jsp" />
<script>document.title = "DrMartens 회원가입";</script>
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
				<!-- <div class="subHead_title">회원가입</div> -->
			</div>
		</div>
		<!-- //서브페이지 상단 -->
		<main id="user">
			<h2 class="page_intro">
				<strong class="fw700 fz36">지금 바로 가입하세요</strong>
				<span class="fz18 c666">간단한 정보 입력으로 닥터마틴의 가족이 되실 수 있습니다.</span>
			</h2>
			<div class="join_wrap">
				<div class="join_txt">
					<p class="txt1 fz18 fw700">본인인증 회원가입을 위해 본인확인 인증절차를 진행해주세요.</p>
					<p class="txt2 fz18 c666">이메일 주소를 사용하여 본인확인을 합니다.</p>
				</div>
				<div class="join_box">
					<%-- 회원가입시 이메일 인증 처음에 하는데 이메일 인증하는데--%>
					<form action="/DrMarten/user/emailSendAction" method="post" >
						<div class="dmField dmInput">
							<label class="dmField_label">이메일</label>
							<div class="dmField_input_box">
								<input name="u_email" id="u_email" type="text" class="dmField_input" placeholder="example@aaa.com" >
							</div>
						</div>
						<div class="mt20">
							<button type="submit" class="cmBtn fullWidth black large fw700 mb10">이메일 확인</button>
						</div>
						<div class="login_util join_util">
							<div class="btn_wrap join_util">
								<a href="/user/login" class="link mid">로그인 페이지 돌아가기</a>
							</div>
						</div>
					</form>
				</div>
			</div>
		</main>
	</div>
</div>
<!-- //페이지 영역 -->
<!--  -->
<jsp:include page="/WEB-INF/JSP/include/footer.jsp" />
<!-- <div id="main" style="margin-top : 125px;  min-height: calc(100vh - 429px);">
	<div class="inner" style="height:fit-content; padding-top : 110px;">
	    <div class="ser_top"> <a href="#"><i class="fa-solid fa-arrow-left-long" style="font-size:40px; padding-bottom: 30px;"></i></a></div>
	    <div class="wrap" style="text-align:center;">
			<form action="/DrMarten/user/emailSendAction" method="post" class="signUp_form">
				<strong style="font-size : 28px; color:#000; font-weight: bold;">회원가입</strong><br>
				<span style="font-size: 18px; color : #000; line-height: 80px;">아이디로 사용하실 이메일을 입력해주세요.</span>
				<div class="dmField dmInput mb30">
					<div class="dmField_input_box">
						<input name="u_email" id="u_email" type="text" class="dmField_input" placeholder="example@aaa.com" >
					</div>
				</div>
			<div class="btn_wrap signUp">
				<button type="submit" class="cmBtn fullWidth black large fw700 mb10" >이메일 확인</button>
				<a  href="/DrMarten/loginForm" class="cmBtn fullWidth yellow large fw700">로그인 페이지로</a>
			</div>
			</form>
		</div>
	</div>
</div> -->