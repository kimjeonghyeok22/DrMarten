<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 | 닥터마틴 코리아</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Dosis&family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
<link rel="shortcut icon" href="/resources/img/icon/favicon.ico">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="/resources/css/reset.css" />
<link rel="stylesheet" href="/resources/css/style.css" />
<link rel="stylesheet" href="/resources/css/main.css" />
<link rel="stylesheet" href="/resources/css/style_guide.css" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script type="text/javascript">
function showPopUp() {
	var width = 500;
	var height = 500;
	var left = (window.screen.width / 2) - (width/2);
	var top = (window.screen.height / 4);
	var windowStatus = 'width='+width+', height='+height+', left='+left+', top='+top+', scrollbars=yes, status=yes, resizable=yes, titlebar=yes';
    const url = "http://localhost/user/recommend";
	window.open(url, "hello popup", windowStatus);
}
</script>
</head>
<body>
         <jsp:include page="/WEB-INF/JSP/include/header.jsp" />
       <div id="main"  class="loginForm" style="margin-top : 180px;">
			<div class="inner">
				<strong style="font-size : 28px; color:#000; font-weight: bold;">로그인</strong>
									<div class="welcome">
										<strong style="font-size : 28px; color:#000; font-weight: bold;">어서오세요</strong><br>
										<span style="font-size: 18px; color : #000">닥터마틴에 오신걸 환영합니다</span>
					</div>
				<div class="wrap">
					<div class="login_wrap mem">
						<span>로그인</span>
						<form id="login_form" action="/user/login" method="post">
							<div class="dmField dmInput mb30">
							<label class="dmField_label">아이디</label>
							<div class="dmField_input_box">
								<input name="u_email" type="text" class="dmField_input" placeholder="이메일 형식 입력" >
							</div>
						</div>
												<div class="dmField dmInput mb30">
							<label class="dmField_label">비밀번호</label>
							<div class="dmField_input_box">
								<input name="u_pw" type="password" class="dmField_input" placeholder="" >
							</div>
						</div>
						<a href="/user/find_id" class="findIDPW">아이디</a>/<a href="/user/find_pw" class="findIDPW">비밀번호 찾기</a><br>
						<button type="submit" class="cmBtn fullWidth black large fw700 mb10">로그인</button><br>
												<a href="/user/signUp" class="cmBtn fullWidth yellow large fw700">회원가입</a>
						</form>
					</div>
					<div class="login_wrap not_mem">						
					<span>비회원 주문조회</span>
						<form>
							<div class="dmField dmInput mb30">
							<label class="dmField_label">주문번호</label>
							<div class="dmField_input_box">
								<input name="order_num" type="text" class="dmField_input" placeholder="" >
							</div>
						</div>
												<div class="dmField dmInput mb30">
							<label class="dmField_label">이메일</label>
							<div class="dmField_input_box">
								<input name="email" type="text" class="dmField_input" placeholder="" >
							</div>
						</div>
						<a href="#" class="findIDPW"></a><br>
						<button type="submit" class="cmBtn fullWidth line large fw700 mb10">비회원 주문조회</button>
						</form>
					</div>
				</div>
			</div>
        </div>
     <jsp:include page="/WEB-INF/JSP/include/footer.jsp" /> 
</body>
</html>