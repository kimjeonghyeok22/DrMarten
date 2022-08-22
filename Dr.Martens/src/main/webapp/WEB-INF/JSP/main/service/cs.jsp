<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>닥터마틴 코리아</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Dosis&family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
        <link rel="shortcut icon" href="/resources/img/icon/favicon.ico">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="/resources/css/reset.css" />
        <link rel="stylesheet" href="/resource	s/css/style.css" />
        <link rel="stylesheet" href="/resources/css/main.css" />
        <style type="text/css">
            .cs_bigSpan {
                font-size: 26px;
                color: #000;
                font-weight: bold;
              	line-height: 43px;
            }
            
            .cs_smlSpan {
                display: inline-block;
                font-size: 20px;
                color: #666666;
                line-height: 28px;
                margin-top: 10px;
            }
            
            .cs_link {
                display: inline-block;
                font-size: 20px;
                color: #111111;
                font-weight: bold;
                border-bottom: 2px solid #999;
                margin: 10px 0;
            }
            
            .cs_link:first-of-type {
                margin-top: 20px;
            }
            .cs_icon{display:inline-block; height: 43px; margin: 0 20px 0 0; transform : translateY(10px);}
            .cs_icon2{margin: 0; transform : translate(-5px,10px);}
            .cs_ml65{margin-left:65px;}
            .cs_btn{display:inline-block; font-size : 16px; padding : 0 17px; border : 1px solid #000; margin-top : 20px; line-height: 40px;}
        	.cs_notice_sub{padding : 20px 0 30px 20px;}
        	.sub_title{font-size :20px ; color:#111111; font-weight:bold;}
        	.sub_con{display:inline-block; width:100%; font-size : 18px; color: #666666; line-height:22px; margin : 10px 0; min-height: 48px; max-height: 48px; text-overflow: ellipsis; overflow: hidden;}
        	.sub_date{font-size : 18px; color: #666666; line-height:22px;}
        </style>
    </head>

    <body>
        <jsp:include page="/WEB-INF/JSP/include/header.jsp" />
        <div id="main" style="padding-top : 180px; min-height:calc(100vh - 500px); height : fit-content;">
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
						<a href="" class="cs_btn cs_ml65">게시글 더보기<span class="cmbtn_icon"><i class="fa-solid fa-chevron-right fz16"></i></span></a>
						</div>
                </div>
            </div>
        </div>
        <jsp:include page="/WEB-INF/JSP/include/footer.jsp" /> </body>

    </html>