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
		<!-- //서브페이지 상단 -->
		<main id="user">
			
			<div>아이디:${user.u_email}</div>
			<div>주소:${user.adress}</div>
			<div>생년월일:${user.birth}</div>
			<div>이름:${user.name}</div>
			<div>전화번호:0${user.phone_num}</div>
			<div>마일리지:${user.point}</div>
			<div><a href="/DrMarten/user/edit"><button type="button">회원 정보 수정</button></a></div>
			<div class="util_item"><a href="javascript:showPopUp()">추천인 입력</a></div>
		</main>
	</div>
</div>
<!-- //페이지 영역 -->
<!--  -->
<jsp:include page="/WEB-INF/JSP/include/footer.jsp" />