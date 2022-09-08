<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <!DOCTYPE html>
        <jsp:include page="/WEB-INF/JSP/include/header.jsp" />
        <div id="main">
            <div class="inner" style="width:1124px;">
                <div class="ser_top"> <a href="#"><i class="fa-solid fa-arrow-left-long" style="font-size:40px; padding-bottom: 30px;"></i></a>
                    <br> <span style="font-size : 36px; color : #000; font-weight: bold;">고객센터</span> </div>
                <div class="cs_sec1" style="width: 100%; display: flex; flex-direction:row; justify-content:  space-between; border-bottom : 1px solid #ddd; padding : 40px 0;">
                    <div class="cs_sec1_min" style="width : 49%"> 
                    	<span class="cs_bigSpan">
							고객센터 운영시간<br>
							1544-6486
						</span><br> 
						<span class="cs_smlSpan">
							- 상담시간 : 10AM ~ 5PM / 점심시간 : 12:00 ~ 13:00<br>
							- 주말 및 공휴일 휴무
						</span>
						</div>
                    <div class="cs_sec1_min" style="width : 49%; padding-left:60px;"> 
                    	<span class="cs_bigSpan">
							퀵 링크
						</span>
                        <br> <a href="" class="cs_link">비회원 주문조회</a>
                        <br> <a href="" class="cs_link">ID/PW 찾기</a> </div>
                </div>
                <div class="cs_sec2" style="width: 100%; display: flex; flex-direction:row; justify-content:  space-between; border-bottom : 1px solid #ddd; padding : 20px 0 0;">
                    <div class="cs_sec1_min" style="width : 49%"> 
                    	<span class="cs_bigSpan">
                    		<img src="/resources/img/icon/site02.svg" class="cs_icon"> 공지사항
						</span><br> 
						<span class="cs_smlSpan cs_ml65">
							닥터마틴의 다양한 소식을 만나보세요.
						</span><br>
						<a href="/DrMarten/notice" class="cs_btn cs_ml65">게시글 더보기<span class="cmbtn_icon"><i class="fa-solid fa-chevron-right fz16"></i></span></a>
						</div>
                    <div class="cs_sec1_min" style="width : 49%"> 
			<c:forEach var="b" items="${list}">
                  <div class="cs_notice_sub">
                           <span class="sub_title"><a href="/DrMarten/notice/detail/${b.board_num}">[${b.category}] ${b.title}</a></span><br>
                           <span class="sub_con">${b.contents}</span><br>
                           <span class="sub_date">${b.wdate}</span>
                     </div>
               </c:forEach>
                     </div>
                </div>
                                <div class="cs_sec1" style="width: 100%; display: flex; flex-direction:row; justify-content:  space-between; border-bottom : 1px solid #ddd; padding : 20px 0 40px;">
                    <div class="cs_sec1_min" style="width : 49%"> 
                    	<span class="cs_bigSpan">
                    		<img src="/resources/img/icon/cs02.jpg" class="cs_icon cs_icon2"> 1:1 문의
						</span><br> 
						<span class="cs_smlSpan cs_ml65">
							상품에 대해 궁금하신 점이 있으신가요?
						</span><br>
						<a href="/DrMarten/myqna/list" class="cs_btn cs_ml65">게시글 더보기<span class="cmbtn_icon"><i class="fa-solid fa-chevron-right fz16"></i></span></a>
						</div>
                </div>
            </div>
        </div>
        <jsp:include page="/WEB-INF/JSP/include/footer.jsp" />