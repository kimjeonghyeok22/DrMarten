<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/JSP/include/header.jsp" />
<script>document.title = "DrMartens 마이페이지";</script>
<!--  -->
<!-- 페이지 영역 -->
<div id="container">
	<div id="content">
		<!-- 서브페이지 상단 -->
		<div id="subHead" class="sub_user">
			<div class="subHead_inr">
				<div class="subHead_bar">
					<div class="subHead_title">마이페이지</div>
					<!-- <ul class="mypage_util cf">
						<li><a href="/DrMarten/user/mypage"><span>Home</span></a></li>
						<li><a href="javascript:;"><span>Shopping</span></a></li>
						<li><a href="javascript:;"><span>Activity</span></a></li>
						<li><a href="/DrMarten/service/cs"><span>CS center</span></a></li>
					</ul> -->
				</div>
			</div>
		</div>
		<!-- //서브페이지 상단 -->
		<main id="user">
			<div class="user_inr">
				<div class="user_mypage_intro">
					<h4 class="welcome"><strong>${user.name}님</strong>, 환영합니다.</h4>
					<div class="user_info_box">
						<p class="user_mypage_id">${user.u_email}</p>
						<p class="user_mypage_logout pl10"><a href="" class="link mid">로그아웃</a></p>
					</div>
					<div class="user_point">
						<div class="img_box">
							<img src="/resources/img/icon/point_icon.jpg" alt="" />
							<span>포인트</span>
						</div>
						<p class="point_num">${user.point}</p>
					</div>
				</div>
				<div class="user_mypage_set">
					<!-- <div class="mypage_title">회원정보</div> -->
					<p class="set_txt"><span>ADDRESS</span>${user.adress}</p>
					<p class="set_txt"><span>TEL</span>0${user.phone_num}</p>
					<p class="set_txt"><span>BIRTH</span>${user.birth}</p>
					<ul class="btn_wrap">
						<li class="btn_box"><a class="cmBtn line sml black" href="/DrMarten/user/edit">회원 정보 수정</a></li>
						<li class="btn_box"><a class="cmBtn line sml" href="javascript:showPopUp()">추천인 입력</a></li>
					</ul>
				</div>
			</div>
			<div class="user_mypage_link">
					<div class="link_box">
						<p class="link_tit">
							<strong>Shopping</strong>
							<span>나의 쇼핑 정보를 확인하세요.</span>
						</p>
						<ul class="lick_con">
							<li><a href=""><img src="/resources/img/icon/btn_shopping01.jpg" alt="" />주문/배송 조회<span><i class="fa-solid fa-chevron-right"></i></span></a></li>
							<li><a href="" class=""><svg version="1.1" viewBox="0 0 28 33" width="28" height="33" class="BaseHeadButton__icon svg-icon svg-fill BaseHeadButton__icon--cart-pc">
						<path pid="0" fill="#111" fill-rule="evenodd" d="M21.539 7.5V0H7.471v7.5H.753V33h27.026V7.5h-6.24zM10.433 3h8.144v4.5h-8.144V3zm14.384 27H3.715V10.5h3.756v4.125h2.962V10.5h8.144v4.125h2.962V10.5h3.278V30z"></path></svg>장바구니<span><i class="fa-solid fa-chevron-right"></i></span></a></li>
						</ul>
					</div>
					<div class="link_box">
						<p class="link_tit">
							<strong>Activity</strong>
							<span>나의 활동 정보를 확인하세요.</span>
						</p>
						<ul class="lick_con">
							<li><a href=""><img src="/resources/img/icon/btn_activity04.jpg" alt="" />내가 쓴 글<span><i class="fa-solid fa-chevron-right"></i></span></a></li>
							<li><a href=""><img src="/resources/img/icon/btn_activity05.jpg" alt="" />내가 봤던 것들<span><i class="fa-solid fa-chevron-right"></i></span></a></li>
							<li><a href="/DrMarten/user/edit"><img src="/resources/img/icon/btn_activity06.jpg" alt="" />회원 정보 수정<span><i class="fa-solid fa-chevron-right"></i></span></a></li>
						</ul>
					</div>
					<div class="link_box">
						<p class="link_tit">
							<strong>CS center</strong>
							<span>고객센터를 이용해 보세요.</span>
						</p>
						<ul class="lick_con">
							<li><a href="/DrMarten/notice"><img src="/resources/img/icon/btn_cs01.jpg" alt="" />공지사항<span><i class="fa-solid fa-chevron-right"></i></span></a></li>
							<li><a href="/DrMarten/myqna/list"><img src="/resources/img/icon/btn_cs02.jpg" alt="" />1:1 문의<span><i class="fa-solid fa-chevron-right"></i></span></a></li>
							<li><a href="/DrMarten/qna"><img src="/resources/img/icon/btn_cs03.jpg" alt="" />자주 묻는 질문<span><i class="fa-solid fa-chevron-right"></i></span></a></li>
						</ul>
					</div>
				</div>
		</main>
	</div>
</div>
<!-- //페이지 영역 -->
<!--  -->
<jsp:include page="/WEB-INF/JSP/include/footer.jsp" />