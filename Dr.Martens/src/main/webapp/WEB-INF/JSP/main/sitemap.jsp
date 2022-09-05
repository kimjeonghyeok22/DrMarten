<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
        <jsp:include page="/WEB-INF/JSP/include/header.jsp" />
        <div id="main">
            <div class="inner" >
        		<div id="subHead">
			<div class="subHead_back fx">
				<button class="subHead_btn" onclick="history.go(-1)">
					<span class="text_hiden">뒤로가기</span>
					<svg version="1.1" viewBox="0 0 34 22" class="subHead_btn_icon">
						<path pid="0" fill="#111" fill-rule="evenodd" d="M33.974 9.503H5.771l7.493-7.402L11.128-.01-.012 10.995 11.128 22l2.136-2.111-7.493-7.401h28.203V9.503z"></path>
					</svg>
				</button>
			</div>
		</div><span style="display: inline-block; font-size : 36px; color : #000; font-weight: bold; margin : 20px 0;">사이트 맵</span>
				<div class="sitemap" style="width:100%; padding-top : 40px;">
					<img src="/resources/img/icon/site01.svg" style="height:24px; margin-right:10px;"><span style="font-size: 24px; color:#000; font-weight:bold;">PRODUCT</span>
					<ul id="m_product" style="display: flex; flex-direction:row; justify-content:space-between; width: 100%; padding-bottom : 60px; border-bottom : 1px solid #eee; margin: 16px 0 30px;">
						<li class="w187">
							<a href="#"  class="sitemap_title1">신상품</a><br>
							<a href="#"   class="sitemap_title2">여성</a><br>
							<a href="#"   class="sitemap_title2">남성</a><br>
							<a href="#"   class="sitemap_title2">스페셜 컬렉션</a>
						</li>
												<li class="w187">
							<a href="#"  class="sitemap_title1">여성</a><br>
							<a href="#"   class="sitemap_title2">신발</a><br>
							<a href="#"   class="sitemap_title2">컬렉션</a><br>
							<a href="#"   class="sitemap_title2">액세서리</a>
						</li>
												<li class="w187">
							<a href="#"  class="sitemap_title1">남성</a><br>
							<a href="#"   class="sitemap_title2">신발</a><br>
							<a href="#"   class="sitemap_title2">컬렉션</a><br>
							<a href="#"   class="sitemap_title2">액세서리</a>
						</li>
												<li class="w187">
							<a href="#"  class="sitemap_title1">키즈</a><br>
							<a href="#"   class="sitemap_title2">인펀트</a><br>
							<a href="#"   class="sitemap_title2">토들러</a><br>
							<a href="#"   class="sitemap_title2">주니어</a>
						</li>
												<li class="w187">
							<a href="#"  class="sitemap_title1">오리지널</a><br>
							<a href="#"   class="sitemap_title2">슈즈</a><br>
							<a href="#"   class="sitemap_title2">부츠</a>
						</li>
												<li class="w187">
							<a href="#"  class="sitemap_title1">세일</a><br>
							<a href="#"   class="sitemap_title2">여성</a><br>
							<a href="#"   class="sitemap_title2">남성</a><br>
							<a href="#"   class="sitemap_title2">액세서리</a>
						</li>
					</ul>
						<img src="/resources/img/icon/site02.svg" style="height:24px; margin-right:10px;"><span style="font-size: 24px; color:#000; font-weight:bold;">CONTENTS</span>
					<ul id="m_contents" style="display: flex; flex-direction:row; justify-content:space-between; width: 100%; padding-bottom : 60px; border-bottom : 1px solid #eee; margin: 16px 0 30px;">
						<li class="w224">
							<a href="#"  class="sitemap_title1">매거진</a>
						</li>
												<li class="w224">
							<a href="#"  class="sitemap_title1">피플</a>
						</li>
												<li class="w224">
							<a href="#"  class="sitemap_title1">콜라보레이션</a>
						</li>
												<li class="w224">
							<a href="#"  class="sitemap_title1">이벤트</a>
						</li>
												<li class="w224">
							<a href="#"  class="sitemap_title1">브랜드 헤리티지</a>
						</li>
					</ul>
											<img src="/resources/img/icon/site03.svg" style="height:24px; margin-right:10px;"><span style="font-size: 24px; color:#000; font-weight:bold;">ETC</span>
					<ul id="m_contents" style="display: flex; flex-direction:row; justify-content:left; width: 100%; padding-bottom : 60px; margin: 16px 0 0;">
						<li class="w224">
							<a href="#"  class="sitemap_title1">고객센터</a><br>
							<a href="#"   class="sitemap_title2">1:1 문의</a><br>
							<a href="/DrMarten/qna"   class="sitemap_title2">자주묻는 질문</a><br>
							<a href="/DrMarten/notice"   class="sitemap_title2">공지사항</a>
						</li>
												<li class="w224">
							<a href="#"  class="sitemap_title1">매장찾기</a>
						</li>
												<li class="w224">
							<span  class="sitemap_title1">기타</span><br>
							<a href="/DrMarten/sizeguide"   class="sitemap_title2">사이즈 가이드</a><br>
							<a href="/DrMarten/service/agreement"   class="sitemap_title2">이용약관</a><br>
							<a href="/DrMarten/service/privacy"   class="sitemap_title2">개인정보 취급방침</a><br>
							<a href="/DrMarten/service/contacts"   class="sitemap_title2">CONTACT</a>
						</li>
					</ul>
				</div>
		</div>
	</div>
 <jsp:include page="/WEB-INF/JSP/include/footer.jsp" />