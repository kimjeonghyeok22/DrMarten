<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/JSP/include/header.jsp" />
<script>document.title = "DrMartens 마이페이지";</script>
<!--  -->
<!-- 페이지 영역 -->
<div id="container">
	<div id="content">
		<!-- 서브페이지 상단 -->
		<div id="subHead">
			<div class="subHead_inr">
				<div class="subHead_bar">
					<div class="subHead_title">마이페이지</div>
					<ul class="mypage_util">
						<li><a href="/DrMarten/user/mypage"><span>Home</span></a></li>
						<li><a href="javascript:;"><span>Shopping</span></a></li>
						<li><a href="javascript:;"><span>Activity</span></a></li>
						<li><a href="/DrMarten/service/cs"><span>CS center</span></a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- //서브페이지 상단 -->
		<main id="user">
			<div class="user_inr">
				<div class="user_mypage_intro">
					<h4 class="welcome"><strong>${user.name}님</strong>, 환영합니다.</h4>
					<p class="user_mypage_id">${user.u_email}</p>
					<div class="user_point">
						<div class="img_box">
							<img src="/resources/img/icon/point_icon.jpg" alt="" />
							<span>포인트</span>
						</div>
						<p class="point_num">${user.point}</p>
					</div>
				</div>
				<div class="user_mypage_set">
					<div class="mypage_title">기본정보</div>
					<p class="set_txt"><span>ADDRESS</span>${user.adress}</p>
					<p class="set_txt"><span>TEL</span>0${user.phone_num}</p>
					<p class="set_txt"><span>BIRTH</span>${user.birth}</p>
					<p class="set_rcomm"><a href="javascript:showPopUp()">추천인 입력</a></p>
					<a class="" href="/DrMarten/user/edit">회원 정보 수정</a>
				</div>
				<div class="user_mypage_link">
					<div class="link_box">
						<p>
							<strong></strong>
							<span></span>
						</p>
						<ul>
							<li><a href=""></a></li>
							<li><a href=""></a></li>
							<li><a href=""></a></li>
							<li><a href=""></a></li>
							<li><a href=""></a></li>
							<li><a href=""></a></li>
							<li><a href=""></a></li>
							<li><a href=""></a></li>
							<li><a href=""></a></li>
							<li><a href=""></a></li>
						</ul>
					</div>
					<div class="link_box">
						<p>
							<strong></strong>
							<span></span>
						</p>
						<ul>
							<li><a href=""></a></li>
							<li><a href=""></a></li>
							<li><a href=""></a></li>
							<li><a href=""></a></li>
							<li><a href=""></a></li>
							<li><a href=""></a></li>
							<li><a href=""></a></li>
							<li><a href=""></a></li>
							<li><a href=""></a></li>
							<li><a href=""></a></li>
						</ul>
					</div>
					<div class="link_box">
						<p>
							<strong></strong>
							<span></span>
						</p>
						<ul>
							<li><a href=""></a></li>
							<li><a href=""></a></li>
							<li><a href=""></a></li>
							<li><a href=""></a></li>
							<li><a href=""></a></li>
							<li><a href=""></a></li>
							<li><a href=""></a></li>
							<li><a href=""></a></li>
							<li><a href=""></a></li>
							<li><a href=""></a></li>
						</ul>
					</div>
				</div>
			</div>
		</main>
	</div>
</div>
<!-- //페이지 영역 -->
<!--  -->
<jsp:include page="/WEB-INF/JSP/include/footer.jsp" />