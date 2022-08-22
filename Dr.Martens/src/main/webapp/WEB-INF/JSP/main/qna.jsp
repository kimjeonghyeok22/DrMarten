<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자주묻는질문 | 닥터마틴 코리아</title>
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
<script type="text/javascript">
$(function(){
	$('.getdetail').on('click', function(){
		if($(this).next('.detail').hasClass('on')==false){
			$('.detail').removeClass('on');
			$('.getdetail').removeClass('on');
			$(this).addClass('on');
			$(this).next('.detail').addClass('on');
		}else {
			$(this).toggleClass('on');
			$(this).next('.detail').toggleClass('on');
		}
	});
});
$(function(){
	$('.category_btn').on('click', function(){
		var category = $(this).text();
		if(category=="교환/반품/환불"){
			category = "교환•반품•환불";
		}
		var str =  '/DrMarten/qna/category/'+category;
		$('#table').load(location.href=str , '#table');
	});
});
</script>
</head>
<body>
        <jsp:include page="/WEB-INF/JSP/include/header.jsp" />
       <div id="main" style="margin-top : 180px;">
       <div class="wrap qna">
       <div class="left_menu">
       		<strong>CS center</strong><br>
       		<span>고객센터를 이용해 보세요.</span>
       		<ul id="left_menu">
       			<li><a href="/DrMarten/notice"><img src="/resources/img/icon/btn_cs01.jpg">공지사항</a></li>
       			<li class="on"><a href="/DrMarten/qna"><img src="/resources/img/icon/btn_cs03.jpg"><span>자주 묻는 질문</span></a></li>
       		</ul>
       </div>
                <div class="inner qna">
                   <h1>자주 묻는 질문</h1>
		<form id="search_input" method="post" action="/DrMarten/qna/search">
			<div class="search_wrap">
			<input type="text" value="" name="search" id="search" placeholder="검색어를 입력해주세요."><button type="submit" id="search_btn"><i class="fa-solid fa-magnifying-glass"></i></button>
			</div>
		</form>
		<c:forEach var="btn" items="${btnlist}">
		${btn}
		</c:forEach>
		<table id="qna">
		<tr>
				<th class="category_tb">문의유형</th>
				<th class="title_tb">내용</th>
			</tr>
			<c:forEach var="b" items="${pageInfo.list}">
				<tr class="getdetail">
					<td>[${b.category}]</td>
					<td>[${b.category}] ${b.title}</td>
				</tr>
				<tr  class="detail">
					<td colspan="2">
					${b.contents}<br><br>
					<a href="/DrMarten/qna/detail/${b.board_num }">상세보기</a>
					</td>
				</tr>
			</c:forEach>
		</table>
		<div class="pgn_wrap qna">
		<c:forEach var="i" items="${pageInfo.navigatepageNums}">
				<c:choose>
					<c:when test="${i==pageInfo.pageNum}">
				<span class="pgn pgn_on">${i}</span>
			</c:when>
					<c:otherwise>
				<span class="pgn"><a href="/DrMarten/qna/list/page/${i}">${i}</a></span>
			</c:otherwise>
				</c:choose>
			</c:forEach>
			</div>
                </div>
                </div>
        </div>
<jsp:include page="/WEB-INF/JSP/include/footer.jsp" /> 
</body>
</html>