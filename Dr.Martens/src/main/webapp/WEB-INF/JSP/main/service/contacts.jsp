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
            <div class="inner" style="width:1124px;">
                <div class="ser_top"> 
                	<a href="#"><i class="fa-solid fa-arrow-left-long" style="font-size:40px; padding-bottom: 30px;"></i></a>
                    <br> <span style="font-size : 36px; color : #000; font-weight: bold;">CONTACTS</span>
				</div>
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
 <jsp:include page="/WEB-INF/JSP/include/footer.jsp" /> </body>
</html>