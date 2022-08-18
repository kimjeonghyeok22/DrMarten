<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <link rel="stylesheet" href="/resources/css/main.css" /> </head>

    <body>
        <jsp:include page="/WEB-INF/JSP/include/header.jsp" />
        <div id="main" style="padding-top : 180px; min-height:calc(100vh - 500px); height : fit-content;">
            <div class="inner" style="width:1140px;">
                <div class="ser_top"> 
                	<a href="#"><i class="fa-solid fa-arrow-left-long" style="font-size:40px; padding-bottom: 30px;"></i></a>
                    <br> <span style="font-size : 36px; color : #000; font-weight: bold;">실시간 검색</span>
				</div>
				<div class="con_wrap" style="width : 100%;  margin-top : 60px;">
					<div class="realtime" style="display:inline-block; width:267px; height: 443px; margin:0 20px 60px 0;">
						<a href="/DrMarten/benefits" style="display:inline-block; width:100%; height: 100%;">
							<img src="/resources/img/realtime/r1.png" style="display:inline-block; width:100%; margin-bottom:20px;">
							<span style="font-size:20px; color:#000; font-weight:bold;">신규가입 10%쿠폰</span>
						</a>
					</div>
					
					<div class="realtime" style="display:inline-block; width:267px; height: 443px; margin:0 20px 60px 0;">
						<a href="#" style="display:inline-block; width:100%; height: 100%;">
							<img src="/resources/img/realtime/r2.jpg" style="display:inline-block; width:100%; margin-bottom:20px;">
							<span style="font-size:20px; color:#000; font-weight:bold;">BEST 슈즈</span>
						</a>
					</div>
					
					<div class="realtime" style="display:inline-block; width:267px; height: 443px; margin:0 20px 60px 0;">
						<a href="#" style="display:inline-block; width:100%; height: 100%;">
							<img src="/resources/img/realtime/r3.jpg" style="display:inline-block; width:100%; margin-bottom:20px;">
							<span style="font-size:20px; color:#000; font-weight:bold;">온라인 단독상품</span>
						</a>
					</div>
					
					<div class="realtime" style="display:inline-block; width:267px; height: 443px;  margin:0 0 60px 0;">
						<a href="#" style="display:inline-block; width:100%; height: 100%;">
							<img src="/resources/img/realtime/r4.jpg" style="display:inline-block; width:100%; margin-bottom:20px;">
							<span style="font-size:20px; color:#000; font-weight:bold;">콜라보레이션</span>
						</a>
					</div>
					
					<div class="realtime" style="display:inline-block; width:267px; height: 443px; margin-right:20px;">
						<a href="#" style="display:inline-block; width:100%; height: 100%;">
							<img src="/resources/img/realtime/r5.jpg" style="display:inline-block; width:100%; margin-bottom:20px;">
							<span style="font-size:20px; color:#000; font-weight:bold;">Made in England</span>
						</a>
					</div>
					
					<div class="realtime" style="display:inline-block; width:267px; height: 443px; margin-right:20px;">
						<a href="#" style="display:inline-block; width:100%; height: 100%;">
							<img src="/resources/img/realtime/r6.jpg" style="display:inline-block; width:100%; margin-bottom:20px;">
							<span style="font-size:20px; color:#000; font-weight:bold;">카카오 간편가입 이벤트</span>
						</a>
					</div>
					
					<div class="realtime" style="display:inline-block; width:267px; height: 443px;">
						<a href="#" style="display:inline-block; width:100%; height: 100%;">
							<img src="/resources/img/realtime/r7.jpg" style="display:inline-block; width:100%; margin-bottom:20px;">
							<span style="font-size:20px; color:#000; font-weight:bold;">마일리지 정책 변경</span>
						</a>
					</div>
				</div>
		</div>
	</div>
 <jsp:include page="/WEB-INF/JSP/include/footer.jsp" /> </body>
</html>