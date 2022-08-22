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
<link rel="stylesheet" href="/resources/css/main.css" />
</head>
<body>
<jsp:include page="/WEB-INF/JSP/include/header.jsp" />
<div id="main" style="padding-top : 240px; margin-bottom : 0; min-height: 500px;">
<div class="inner" style="text-align : center; position:relative;">
	<p style="font-size : 16px; color : #666;"><span style ="font-size : 36px; font-weight : bold; color : #000;">지금 바로 가입하세요</span><br>
	<br>간단한 정보 입력으로 닥터마틴의 가족이 되실 수 있습니다.<br><br><br><br>
	<span style="font-size : 18px; font-weight : bold; color: #000;">회원가입을 위해 이메일 인증절차를 진행해주세요.</span><br><br>
	입력하신 이메일을 사용하여<br>
	본인확인을 합니다.</p><br><br>
	<!--여기에 이메일인증 연결하기 -->
	<a href="/DrMarten/user/signUp" class="cmBtn line big2 black cfff mb30">이메일 인증하기</a>	<br><br><br>
	<div class="btn_back" style="position : absolute; top :0px; left:30px; width : 34px; height: 22px;">
		<img src="/resources/img/icon/btn_back.jpeg" style="display: inline-block; width: 100%; margin : 0 auto;">
	</div>
</div>
</div>
<jsp:include page="/WEB-INF/JSP/include/footer.jsp" />
</body>
</html>