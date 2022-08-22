<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 | 닥터마틴 코리아</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Dosis&family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
<link rel="shortcut icon" href="/resources/img/icon/favicon.ico">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="/resources/css/reset.css" />
<link rel="stylesheet" href="/resources/css/style.css" />
<link rel="stylesheet" href="/resources/css/main.css" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
</head>
<body>
         <jsp:include page="/WEB-INF/JSP/include/header.jsp" />
       <div id="main"  style="margin-top : 180px;">
       <div class="wrap qna">
       <div class="left_menu">
       		<strong>CS center</strong><br>
       		<span>고객센터를 이용해 보세요.</span>
       		<ul id="left_menu">
       			<li class="on"><a href="/DrMarten/notice"><img src="/resources/img/icon/btn_cs01.jpg"><span>공지사항</span></a></li>
       			<li ><a href="/DrMarten/qna"><img src="/resources/img/icon/btn_cs03.jpg">자주 묻는 질문</a></li>
       		</ul>
       </div>
                <div class="inner qna auto">
<table id="notice_detail">
<tr>
	<td class="title_tb">[${board.category}] ${board.title}</td>
	<td>${board.wdate }</td>
</tr>
<tr>
	<td style="text-align : left; padding: 10px 30px; " colspan="2">조회수<span class="count"> | </span>${board.view_count }</td>
</tr>
<tr>
	<td colspan="2" class="contents">${board.contents}</td>
</tr>
</table>
<div class="btn_wrap">
<button type="button" onclick="location.href='/DrMarten/notice';" class="cmBtn black sml">목록</button>
</div>
                </div>
                </div>
        </div>
     <jsp:include page="/WEB-INF/JSP/include/footer.jsp" />
</body>
</html>