<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/JSP/include/head.jsp" />
<header id="header">
		<!-- <div class="top_bnr">
			<svg width="22" height="19" viewBox="0 0 22 19" fill="none"
				xmlns="http://www.w3.org/2000/svg" class="top_bnr_svg">
				<rect x="7.81081" width="14.1892" height="15.3243" rx="2" fill="white"></rect>
				<rect y="8" width="13" height="7" rx="2" fill="white"></rect>
				<path d="M20.1149 15.6081C20.1149 16.9179 19.0531 17.9797 17.7432 17.9797C16.4334 17.9797 15.3716 16.9179 15.3716 15.6081C15.3716 14.2983 16.4334 13.2365 17.7432 13.2365C19.0531 13.2365 20.1149 14.2983 20.1149 15.6081Z" fill="black" stroke="white" stroke-width="1.5"></path>
				<path d="M8.19594 15.6081C8.19594 16.9179 7.13413 17.9797 5.82432 17.9797C4.51451 17.9797 3.4527 16.9179 3.4527 15.6081C3.4527 14.2983 4.51451 13.2365 5.82432 13.2365C7.13413 13.2365 8.19594 14.2983 8.19594 15.6081Z" fill="black" stroke="white" stroke-width="1.5"></path>
				<path d="M5.97229 4.54053H7.52702L7.81081 8.5135L2 8.5L4.37294 5.33966C4.7507 4.83656 5.34316 4.54053 5.97229 4.54053Z" stroke="white" stroke-width="1.5"></path>
			</svg>
			<p>5만원 이상 무료 배송 및 사이즈 무료 교환 1회</p>
		</div> -->
		<div class="hd_top">
			<div class="hd_inner">
				<nav class="util_menu">
					<ul class="util_menu_box">
						<%
							if((String)session.getAttribute("u_email")==null){
						%>
							<li class="util_item"><a href="/DrMarten/user/login">로그인</a></li>
							<li class="util_item"><a href="/DrMarten/user/signUp" class="fw500">회원가입</a></li>
						<%} else { %>
							<li class="util_item"><a href="/DrMarten/user/logout">로그아웃</a></li>
							<!-- <li class="util_item"><a href="/DrMarten/user/mypage">마이페이지</a></li>//아래 마이페이지 아이콘으로 이동 -->
						<%} %>
						<li class="util_item"><a href="/DrMarten/service/cs">고객센터</a></li>
						<li class="util_item"><a href="/DrMarten/service/contacts" class="contact">CONTACT</a></li>
					</ul>
				</nav>
			</div>
		</div>
		<div class="hd_content">
			<div class="hd_inner hd_content_box">
				<div class="logo">
					<a href="/DrMarten" tabindex="1"><img src="/resources/img/logo.svg" alt="닥터마틴 로고"></a>
				</div>
				<button type="button" tabindex="2" class="HamburgerButton category_menu">
					<span class="category_btn_line"></span>
					<span class="category_btn_text text_hiden">카테고리 열기</span>
				</button>
				<!-- 검색 -->
				<div class="main_search_form">
					<form action="/DrMarten/product/files/searchName" method="post" class="SearchForm"> 
						<fieldset>
							<legend class="text_hiden">검색</legend>
							<div class="mainSearchForm_wrapper">
								<div class="mainSearchForm_input_box">
									<input type="text" name="search_text" aria-label="검색어 입력" placeholder="검색어를 입력해 주세요." class="mainSearchForm_input">
									<!-- x버튼 -->
									<button type="button">
										<svg version="1.1" viewBox="0 0 24 24" class="mainSearchForm_cancel svg-icon svg-fill" style="width: 24px; height: 24px;">
											<path pid="0" class="bg" fill="#DDD" fill-rule="evenodd" d="M12 0c6.627 0 12 5.373 12 12s-5.373 12-12 12S0 18.627 0 12 5.373 0 12 0z"></path>
											<path pid="1" class="white" fill="#FFF" fill-rule="evenodd" d="M17.998 7.092L7.093 17.998l-1.091-1.091L16.907 6.002l1.091 1.09z"></path>
											<path pid="2" class="white" fill="#FFF" fill-rule="evenodd" d="M16.907 17.998L6.002 7.092l1.091-1.09 10.905 10.905-1.091 1.091z"></path>
										</svg>
									</button>
									<!-- //x버튼 -->
								</div>
								<!-- 검색버튼 -->
								<button type="submit" class="mainSearchForm_button mainSearchForm_button_black">
									<!-- 검색버튼 아이콘 -->
									<svg version="1.1" viewBox="0 0 32 32" width="32" height="32"
										class="mainSearchForm_button_icon">
										<path pid="0" fill="#111" fill-rule="evenodd" d="M31.759 29.805l-6.605-6.604a13.571 13.571 0 002.996-8.537 13.59 13.59 0 00-4.007-9.674A13.591 13.591 0 0014.468.982c-3.653 0-7.09 1.423-9.675 4.008a13.596 13.596 0 00-4.007 9.674c0 3.655 1.423 7.091 4.007 9.675a13.594 13.594 0 009.675 4.008c3.143 0 6.12-1.059 8.536-2.997l6.605 6.605 2.15-2.15zm-17.291-4.499a10.572 10.572 0 01-7.525-3.117 10.572 10.572 0 01-3.117-7.525c0-2.841 1.107-5.514 3.117-7.525a10.574 10.574 0 017.525-3.116c2.842 0 5.515 1.106 7.525 3.116a10.572 10.572 0 013.116 7.525c0 2.844-1.106 5.516-3.116 7.525a10.57 10.57 0 01-7.525 3.117z"></path>
										</svg>
									<!-- //검색버튼 아이콘 -->
									<span class="text_hiden">검색</span>
								</button>
								<!-- //검색버튼 -->
							</div>
						</fieldset>
					</form>
				</div>
				<!-- //검색 -->
				<!-- 위시리스트 -->
				<%--
				<a href="javascript:;" class="hdBtn ml0">
					<!-- 위시리스트 아이콘 -->
					<svg version="1.1" viewBox="0 0 35 29" width="35" height="29"
						class="BaseHeadButton__icon svg-icon svg-fill BaseHeadButton__icon--wish-pc">
						<path pid="0" fill="#111" fill-rule="evenodd"
							d="M17.433 29.002L3.459 15.198a8.847 8.847 0 010-12.605C5.157.915 7.423-.009 9.84-.009c2.417 0 4.683.924 6.38 2.602l1.213 1.198 1.214-1.198C20.345.915 22.611-.009 25.028-.009c2.417 0 4.682.924 6.381 2.602a8.847 8.847 0 010 12.605L17.433 29.002zM9.84 2.974c-1.61 0-3.118.613-4.246 1.728a5.85 5.85 0 00-1.75 4.193 5.85 5.85 0 001.75 4.194l11.839 11.696 11.841-11.696a5.854 5.854 0 001.75-4.194 5.853 5.853 0 00-1.75-4.193c-2.341-2.312-6.15-2.313-8.492 0l-3.349 3.307-3.348-3.307A5.993 5.993 0 009.84 2.974z"></path></svg>
					<!-- //위시리스트 아이콘 -->
					<span class="text_hiden">위시리스트</span>
				</a>
				 --%>
				<!-- //위시리스트 -->
				<!-- 장바구니 -->
				<a href="/DrMarten/cart/getmycart" class="hdBtn ml0">
					<!-- 장바구니 아이콘 -->
					<svg version="1.1" viewBox="0 0 28 33" width="28" height="33"
						class="BaseHeadButton__icon svg-icon svg-fill BaseHeadButton__icon--cart-pc">
						<path pid="0" fill="#111" fill-rule="evenodd"
							d="M21.539 7.5V0H7.471v7.5H.753V33h27.026V7.5h-6.24zM10.433 3h8.144v4.5h-8.144V3zm14.384 27H3.715V10.5h3.756v4.125h2.962V10.5h8.144v4.125h2.962V10.5h3.278V30z"></path></svg>
					<!-- //장바구니 아이콘 -->
					<span class="text_hiden">장바구니</span>
				</a>
				<!-- //장바구니 -->
				<!-- 최근 본 상품 -->
				<a href="/DrMarten/user/mypage/recently_viewed" class="hdBtn">
					<!-- 최근 본 상품 아이콘 -->
					<svg version="1.1" viewBox="0 0 39 28" width="39" height="28"
						class="BaseHeadButton__icon svg-icon svg-fill BaseHeadButton__icon--timeline-pc">
						<path pid="0" fill="#111" fill-rule="evenodd"
							d="M38.49 14.871c-.331.536-8.223 13.123-19.311 13.129h-.008C12.427 28 6.14 23.361.482 14.211l-.483-.781.476-.785C.781 12.14 8.087.285 18.964.005c.131-.003.262-.005.392-.005 6.714 0 13.137 4.452 19.099 13.24l.545.804-.51.827zM19.35 3c-.103 0-.205.002-.309.004-7.808.201-13.782 7.949-15.501 10.436C8.468 21.112 13.724 25 19.171 25h.007c7.965-.004 14.376-8.26 16.223-10.903C30.208 6.73 24.813 3 19.35 3zm.135 18.593c-4.183 0-7.587-3.406-7.587-7.593 0-4.186 3.404-7.593 7.587-7.593 4.184 0 7.588 3.407 7.588 7.593 0 4.187-3.404 7.593-7.588 7.593zm0-12.186A4.597 4.597 0 0014.896 14a4.597 4.597 0 004.589 4.593A4.597 4.597 0 0024.075 14a4.597 4.597 0 00-4.59-4.593z"></path></svg>
					<!-- //최근 본 상품 아이콘 -->
					<span class="text_hiden">최근 본 상품</span>
				</a>
				<!-- //최근 본 상품 -->
				<!-- 마이페이지 -->
				<a href="/DrMarten/user/mypage" class="hdBtn">
					<!-- 마이페이지 아이콘 -->
					<svg version="1.1" viewBox="0 0 33 32" width="33" height="32"
						class="BaseHeadButton__icon svg-icon svg-fill BaseHeadButton__icon--mypage-pc">
						<path pid="0" fill="#111" fill-rule="evenodd"
							d="M25.187 17.783h-6.918a8.942 8.942 0 004.595-2.458A8.906 8.906 0 0025.5 8.977a8.913 8.913 0 00-2.636-6.351A8.949 8.949 0 0016.5-.003a8.947 8.947 0 00-6.363 2.629A8.915 8.915 0 007.5 8.977a9.03 9.03 0 002.637 6.348 9.067 9.067 0 004.629 2.458H7.813L0 25.456v6.545h33v-6.545l-7.813-7.673zM10.5 8.977c0-1.576.641-3.12 1.758-4.234A6.047 6.047 0 0116.5 2.99c1.604 0 3.11.622 4.243 1.753A5.94 5.94 0 0122.5 8.977a6.023 6.023 0 01-1.757 4.232 6.048 6.048 0 01-4.243 1.754 6.046 6.046 0 01-4.242-1.754A6.021 6.021 0 0110.5 8.977zM30 29.008H3v-2.299l6.042-5.932h14.917L30 26.709v2.299z"></path></svg>
					<!-- //마이페이지 아이콘 -->
					<span class="text_hiden">마이페이지</span>
				</a>
				<!-- //마이페이지 -->
			</div>
		</div>
	</header>
	<!-- 메뉴 카테고리// -->
	<nav id="nav">
		<div class="gnb_top">
			<a href="javascript:;" class="gnbTop_item gnb_cart">
				<svg version="1.1" viewBox="0 0 28 33" width="28" height="33">
					<path pid="0" fill="#111" fill-rule="evenodd" d="M21.539 7.5V0H7.471v7.5H.753V33h27.026V7.5h-6.24zM10.433 3h8.144v4.5h-8.144V3zm14.384 27H3.715V10.5h3.756v4.125h2.962V10.5h8.144v4.125h2.962V10.5h3.278V30z"></path>
				</svg>
				<span class="text_hiden">장바구니 열기</span>
			</a>
			<button type="button" class="gnbTop_item gnb_close ml30">
				<svg version="1.1" viewBox="0 0 56 56" width="28" height="28">
					<path pid="0" fill="#111" fill-rule="evenodd" d="M55.994 4.213L51.769-.011l-23.78 23.779L4.21-.011-.015 4.213l23.78 23.78-23.78 23.78 4.225 4.225 23.779-23.78 23.78 23.78 4.225-4.225-23.78-23.78 23.78-23.78z"></path>
				</svg>
				<span class="text_hiden">카테고리 닫기</span>
			</button>
		</div>
		<div class="gnb_search">
			<div class="gnb_sch_wrap">
				<form action="/DrMarten/product/files/searchName" method="post">
					<div class="gnb_sch_box">
						<input type="text" name="search_text" aria-label="검색어 입력" placeholder="검색어를 입력해주세요." class="gnb_sch_input">
					</div>
					<button type="submit" class="gnb_sch_btn">
						<img src="/resources/img/gnb_search_btn.png" alt="검색버튼">
						<span class="text_hiden">검색하기</span>
					</button>
				</form>
			</div>
		</div>
		<!-- 메인 gnb -->
		<jsp:include page="/WEB-INF/JSP/include/gnb.jsp" />
		<!-- //메인 gnb  -->
	</nav>
	<!-- //메뉴 카테고리 -->
	<!-- //상단영역 -->