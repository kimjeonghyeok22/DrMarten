<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
        <jsp:include page="/WEB-INF/JSP/include/header.jsp" />
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
		</div><span style="display: inline-block; font-size : 36px; color : #000; font-weight: bold; margin : 20px 0;">CONTACTS</span>
				<div class="con_wrap" style="display:flex; flex-direction:row; justify-content:space-between; width : 100%;  margin-top : 60px;">
					<div class="contacts">
						<img src="/resources/img/icon/contacts1.jpg" style="display:inline-block; width: 33px; margin-bottom:10px;"><br>
						<span style="font-size : 24px; color : #000; font-weight: bold; line-height:40px;">대리점 개설 문의</span><br>
						<span style="font-size : 16px; color : #666666; line-height:26px;">조성호 부장<br>Sungho.jo@drmartens.com</span>
					</div>
										<div class="contacts">
						<img src="/resources/img/icon/contacts2.jpg" style="display:inline-block; width: 33px; margin-bottom:10px;"><br>
						<span style="font-size : 24px; color : #000; font-weight: bold; line-height:40px;">PR / 협찬 문의</span><br>
						<span style="font-size : 16px; color : #666666; line-height:26px;">최진희 과장<br>Jinhee.Choi@drmartens.com</span>
					</div>
										<div class="contacts">
						<img src="/resources/img/icon/contacts3.jpg" style="display:inline-block; width: 33px; margin-bottom:10px;"><br>
						<span style="font-size : 24px; color : #000; font-weight: bold; line-height:40px;">온라인 입점 문의</span><br>
						<span style="font-size : 16px; color : #666666; line-height:26px;">이태영 상무<br>taeyoung.lee@drmartens.com</span>
					</div>
				</div>
		</div>
	</div>
 <jsp:include page="/WEB-INF/JSP/include/footer.jsp" />