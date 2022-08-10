<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 페이지 : 자주묻는질문 목록</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="/resources/css/admin.css">
    <script src="/resources/js/main.js"></script>
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
		var str =  '/admin/qa/category/'+category;
		$('#main').load(location.href=str , '#table');
		$(this).addClass('on');
	});
});
</script>
<style type="text/css">
a{text-decoration : none; color : black;}
main{width : fit-content; margin : 50px auto;}
.category_btn{
	padding : 15px 20px; border-radius : 0px; border : 0.5px soldi #666;
	font-weight : bolder;
	line-height : 20px;
	background-color : #fcfcfc;
	margin : 5px 0;
	cursor: pointer;
}
.category_btn.on{
	color : #fff;
	background-color : black;
}
th.category{width : 200px;}
th.title{width : calc(100% - 550px);}
table{border-collapse: collapse; border-spacing: 0px; font-size : 12px;}
thead{border-bottom : 2px solid black; line-height: 40px;}
tr{ line-height : 36px; border-bottom : 1px solid gray;}
td{padding-left : 10px;}
.getdetail{cursor: pointer; }
.getdetail.on{border-bottom:none;}
.detail{
display : none; 
background-color : #eee; font-size : 12px; line-height : 28px;}
.detail.on{display: table-row;}
.detail>td{padding : 30px;}
.search_wrap{width:inherit; line-height: 40px;  border : 1px solid black; padding: 0 30px; margin-bottom:10px;}
#search{width : calc(100% - 40px); line-height: 38px; border: none; font-size:22px;}
#search:focus {outline : none;}
#search_btn{line-height: 40px; border: none; background-color: #fff; font-size : 22px;}
.pgn_wrap{margin : 30px auto; text-align: center;}
.pgn{display:inline-block; width : 34px; line-height:34px; border : 2px solid black; font-weight: bolder;
text-align: center; font-size : 20px; margin : 0 5px;}
.pgn_on{background-color: black; color : #fff;}
</style>
</head>
<body>
    <header id="header">
        <div class="inner">
<div class="img_wrap"> <a href="/admin/main" ><img src="/resources/img/logo.svg" alt=""> </a></div>            <div class="title_wrap"> <span>닥터마틴 관리자페이지</span> </div>
            <div class="controller_wrap">
                <div class="log_out">
                    <div class="welcome">
                    	<span class="time sml gray">로그인 : [[${time}]]</span>
                        <span>관리자님 안녕하세요 : )</span>
                    </div>
                    <button type="button">로그아웃</button>
                </div>
                <div class="search_box">
                    <div class="dmField_input_box">
                        <input name="userid" type="text" class="dmField_input" placeholder="검색" >
                        <button type="button" class="cmBtn line yellow">검색</button>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div class="wrap">
        <div id="gnb">
            <ul id="menu">
                <li> <span>고객 관리</span> <span class="off"><i class="fa-solid fa-chevron-down"></i></span> <span class="on"><i class="fa-solid fa-chevron-up"></i></span>
                    <div class="sub_wrap">
                        <ul id="sub_menu">
                            <li><a href="#">서브1</a></li>
                            <li><a href="#">서브2</a></li>
                            <li><a href="#">서브3</a></li>
                            <li><a href="#">서브4</a></li>
                        </ul>
                    </div>
                </li>
                <li> <span>게시판 관리</span> <span class="off"><i class="fa-solid fa-chevron-down"></i></span> <span class="on"><i class="fa-solid fa-chevron-up"></i></span>
                    <div class="sub_wrap">
                        <ul id="sub_menu">
                            <li><a href="/admin/notice/list">공지사항 관리</a></li>
                            <li><a href="/admin/notice/write">공지사항 작성</a></li>
                            <li><a href="/admin/myqna/list">1:1문의 관리</a></li>
                            <li><a href="/admin/qa/write">자주묻는 질문 작성</a></li>
                            <li><a href="/admin/qa/list">자주묻는 질문 관리</a></li>
                        </ul>
                    </div>
                </li>
                <li> <span>상품 관리</span> <span class="off"><i class="fa-solid fa-chevron-down"></i></span> <span class="on"><i class="fa-solid fa-chevron-up"></i></span>
                    <div class="sub_wrap">
                        <ul id="sub_menu">
                            <li><a href="#">상품 등록</a></li>
                            <li><a href="#">상품 목록</a></li>
                        </ul>
                    </div>
                </li>
                <li> <span>주문 관리</span> <span class="off"><i class="fa-solid fa-chevron-down"></i></span> <span class="on"><i class="fa-solid fa-chevron-up"></i></span>
                    <div class="sub_wrap">
                        <ul id="sub_menu">
                            <li><a href="#">전체주문목록</a></li>
                        </ul>
                    </div>
                </li>
                <li><span>통계분석</span></li>
            </ul>
        </div>
        <div id="main">
            <div class="container">
                <div class="inner">
                   <h1>자주 묻는 질문</h1>
		<form id="search_input" method="post" action="/admin/qa/search">
			<div class="search_wrap">
			<input type="text" value="" name="search" id="search" placeholder="검색어를 입력해주세요."><button type="submit" id="search_btn"><i class="fa-solid fa-magnifying-glass"></i></button>
			</div>
		</form>
		<c:forEach var="btn" items="${btnlist}">
		${btn}
		</c:forEach>
		<table id="table">
		<thead>
			<tr>
				<th class="category">문의유형</th>
				<th class="title">내용</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach var="b" items="${pageInfo.list}">
				<tr class="getdetail">
					<td>[${b.category}]</td>
					<td>[${b.category}] ${b.title}</td>
				</tr>
				<tr  class="detail">
					<td colspan="2">
					${b.contents}<br><br>
					<a href="/admin/qa/detail/${b.board_num }">상세보기</a>
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		<div class="pgn_wrap">
		<c:forEach var="i" items="${pageInfo.navigatepageNums}">
				<c:choose>
					<c:when test="${i==pageInfo.pageNum}">
				<span class="pgn pgn_on">${i}</span>
			</c:when>
					<c:otherwise>
				<span class="pgn"><a href="/admin/qa/list/page/${i}">${i}</a></span>
			</c:otherwise>
				</c:choose>
			</c:forEach>
			</div>
                </div>
            </div>
        </div>
    </div>
<main>
		
	</main>
</body>
</html>