<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/JSP/include/header.jsp" />
<script>document.title = "DrMartens 아이디 찾기";</script>
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
				<!-- <div class="subHead_title">아이디 찾기</div> -->
			</div>
		</div>
		<!-- //서브페이지 상단 -->
		<main id="user">
			<h2 class="page_intro">
				<strong class="fw700 fz36">회원 정보를 잊으셨나요?</strong>
				<span class="fz18 c666">등록하신 휴대폰 또는 이메일을 통해 찾아보세요.</span>
			</h2>
			<ul class="find_util cf">
				<li class="id_find find_on"><a href="/DrMarten/user/find_id">아이디 찾기</a></li>
				<li class="pw_find"><a href="/DrMarten/user/find_pw">비밀번호 찾기</a></li>
			</ul>
			<div class="find_wrap mt30">
				<form id="find_id_form" action="/DrMarten/user/find_id" method="post">
					<div class="dmField dmInput mb30">
						<div class="dmField_input_box">
							<label class="dmField_label">이름</label> 
							<input type="text" id="name" name="name" class="dmField_input">
						</div>
					</div>
					<div class="dmField dmInput mb30">
						<div class="dmField_input_box">
							<label class="dmField_label">전화번호</label>
							<input type="text" id="phone_num" name="phone_num" placeholder="01012345678" class="dmField_input">
						</div>
					</div>
					<div class="mt20">
						<button type="submit" class="cmBtn fullWidth black large fw700 mb10">아이디 찾기</button>
					</div>
					<div class="login_util join_util">
						<div class="btn_wrap join_util">
							<a href="/DrMarten/user/login" class="link mid">로그인 페이지 돌아가기</a>
						</div>
					</div>
					<%-- //아이디 찾기 
					<div>이름<input type="text" name="name" id="name"></div>
					<div>전화번호<input type="text" name="phone_num" id="phone_num" placeholder="01012345678"></div>
					<button type="submit">아이디 찾기</button>
					<a href="/DrMarten/user/login"><button type="button">로그인 창으로</button></a>
					--%>
				</form>
			</div>
		</main>
	</div>
</div>
<!-- //페이지 영역 -->
<!--  -->
<jsp:include page="/WEB-INF/JSP/include/footer.jsp" />