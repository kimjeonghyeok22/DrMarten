<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
        <jsp:include page="/WEB-INF/JSP/include/header.jsp" />
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
						<div class="subHead_title">CONTACTS</div>
					</div>
				</div>
				<!-- //서브페이지 상단 -->
				<div id="conWrap">
					<div class="contacts">
						<img src="/resources/img/icon/contacts1.jpg">
						<span class="big_txt">팀장</span>
						<span class="sml_txt">김정혁</span>
						<span class="sml_txt">010-7567-3396</span>
						<span class="sml_txt">상품관련 개발</span>
					</div>
					<div class="contacts">
						<img src="/resources/img/icon/contacts2.jpg">
						<span class="big_txt">팀원</span>
						<span class="sml_txt">곽태준</span>
						<span class="sml_txt">010-3614-0617</span>
						<span class="sml_txt">로그인/회원가입 개발</span>
					</div>
					<div class="contacts">
						<img src="/resources/img/icon/contacts3.jpg">
						<span class="big_txt">팀원</span>
						<span class="sml_txt">곽은지</span>
						<span class="sml_txt">010-4243-2348</span>
						<span class="sml_txt">프론트개발</span>
					</div>
					<div class="contacts">
						<img src="/resources/img/icon/contacts1.jpg">
						<span class="big_txt">팀원</span>
						<span class="sml_txt">고진곤</span>
						<span class="sml_txt">010-6889-8808</span>
						<span class="sml_txt">로그인/회원가입 개발</span>
					</div>
					<div class="contacts">
						<img src="/resources/img/icon/contacts2.jpg">
						<span class="big_txt">팀원</span>
						<span class="sml_txt">김희범</span>
						<span class="sml_txt">010-2553-0427</span>
						<span class="sml_txt">장바구니 개발</span>
					</div>
					<div class="contacts">
						<img src="/resources/img/icon/contacts3.jpg">
						<span class="big_txt">팀원</span>
						<span class="sml_txt">승현지</span>
						<span class="sml_txt">010-2407-6482</span>
						<span class="sml_txt">게시판 및 관리자페이지 개발</span>
					</div>
				</div>
				<div id="conWrap">
					
				</div>
	        </div>
        </div>
        <%--
        <div id="main">
            <div class="inner">
	            <div id="subHead">
					<div class="subHead_back fx">
						<button class="subHead_btn" onclick="history.go(-1)">
							<span class="text_hiden">뒤로가기</span>
							<svg version="1.1" viewBox="0 0 34 22" class="subHead_btn_icon">
								<path pid="0" fill="#111" fill-rule="evenodd" d="M33.974 9.503H5.771l7.493-7.402L11.128-.01-.012 10.995 11.128 22l2.136-2.111-7.493-7.401h28.203V9.503z"></path>
							</svg>
						</button>
					</div> 
				</div>
				<span style="display: inline-block; font-size : 36px; color : #000; font-weight: bold; margin : 20px 0;">CONTACTS</span>
			</div>
		</div>
		 --%>
 	<jsp:include page="/WEB-INF/JSP/include/footer.jsp" />