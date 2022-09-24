<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/JSP/include/header.jsp" />
<script>document.title = "DrMartens 마이페이지";</script>
<!--  -->
<!-- 페이지 영역 -->
<div id="main" class="wrote">
	<div class="inner">
	<div class="wrote_gnb">
	<div class="link_box">
						<p class="link_tit">
							<strong>Shopping</strong>
							<span>나의 쇼핑 정보를 확인하세요.</span>
						</p>
						<ul class="lick_con">
							<li><a href="/DrMarten/user/mypage/orderlist"><img src="/resources/img/icon/btn_shopping01.jpg" alt="" />주문/배송 조회<span></span></a></li>
							<li><a href="/DrMarten/cart/getmycart" class=""><svg version="1.1" viewBox="0 0 28 33" width="28" height="33" class="BaseHeadButton__icon svg-icon svg-fill BaseHeadButton__icon--cart-pc">
						<path pid="0" fill="#111" fill-rule="evenodd" d="M21.539 7.5V0H7.471v7.5H.753V33h27.026V7.5h-6.24zM10.433 3h8.144v4.5h-8.144V3zm14.384 27H3.715V10.5h3.756v4.125h2.962V10.5h8.144v4.125h2.962V10.5h3.278V30z"></path></svg>장바구니<span></span></a></li>
						</ul>
					</div>
					<div class="link_box">
						<p class="link_tit">
							<strong>Activity</strong>
							<span>나의 활동 정보를 확인하세요.</span>
						</p>
						<ul class="lick_con">
							<li><a href="/DrMarten/user/mypage/wrote" class="on"><img src="/resources/img/icon/btn_activity04.jpg" alt="" />내가 쓴 글<span></span></a></li>
							<li><a href="/DrMarten/user/mypage/recently_viewed"><img src="/resources/img/icon/btn_activity05.jpg" alt="" />내가 봤던 것들<span></span></a></li>
							<li><a href="/DrMarten/user/edit"><img src="/resources/img/icon/btn_activity06.jpg" alt="" />회원 정보 수정<span></span></a></li>
						</ul>
					</div>
					<div class="link_box">
						<p class="link_tit">
							<strong>CS center</strong>
							<span>고객센터를 이용해 보세요.</span>
						</p>
						<ul class="lick_con">
							<li><a href="/DrMarten/notice"><img src="/resources/img/icon/btn_cs01.jpg" alt="" />공지사항<span></span></a></li>
							<li><a href="/DrMarten/myqna/list"><img src="/resources/img/icon/btn_cs02.jpg" alt="" />1:1 문의<span></span></a></li>
							<li><a href="/DrMarten/qna"><img src="/resources/img/icon/btn_cs03.jpg" alt="" />자주 묻는 질문<span></span></a></li>
						</ul>
					</div>
	</div>
	<div class="wrote_wrap">
				<strong class="title">내가 쓴 글</strong>
				<div class="wrap">
					<a class="wrote_category" href="/DrMarten/user/mypage/wrote">나의 상품문의</a>
					<a class="wrote_category on" href="/DrMarten/user/mypage/wrote_review">나의 상품후기</a>
				</div>
				<div class="table_container">
				<table>	
				<tr>
				<th style="width:90px;">번호</th>
				<th>제목</th>
				<th style="width:150px;">작성일</th>
				</tr>
				<c:forEach var="q" items="${review}" varStatus="v">
				<tr>
				<td style="text-align:center;">${v.count}</td>
				<td><a href="/DrMarten/product/detail_product/${q.product_code}">${q.title}</a></td>
				<td style="text-align:center;">${q.wdate}</td>
				</tr>
				</c:forEach>
				</table>
				</div>
	
	</div>
	</div>
</div>
<!-- //페이지 영역 -->
<!--  -->
<jsp:include page="/WEB-INF/JSP/include/footer.jsp" />