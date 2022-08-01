<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 페이지 : 자주묻는질문 상세보기</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="/resources/css/style.css">
    <script src="/resources/js/main.js"></script>
<script type="text/javascript">
function deleteThis(){
	if (!confirm('삭제하시겠습니까?')) return false;
	$.ajax({
		url : '/admin/qa/delete/${board.board_num}',
		method : 'get',
		cacht : false,
		dataType : 'json',
		success : function(res){
			alert(res.deleted?'삭제성공':'삭제실패');
			location.href='/admin/qa/list';
		},
		error : function(xhr,status, err){
			alert(err);
		}
	});
	return false;
}
</script>
</head>
<body>
    <header id="header">
        <div class="inner">
<div class="img_wrap"> <a href="/admin/main" ><img src="/resources/img/logo.svg" alt=""> </a></div>
            <div class="title_wrap"> <span>닥터마틴 관리자페이지</span> </div>
            <div class="controller_wrap">
                <div class="log_out">
                    <div class="welcome">
                    	<span class="time sml gray">로그인 : ${time}</span>
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
                    <h3>자주묻는질문 상세보기</h3>
<table>
<tr>
	<td class="title">[${board.category}] ${board.title}</td>
	<td>${board.wdate }</td>
</tr>
<tr>
	<td style="text-align : left; padding: 10px 30px; " colspan="2">조회수<span class="count"> | </span>${board.view_count }</td>
</tr>
<tr>
	<td colspan="2">${board.contents}</td>
</tr>
</table>
<div class="btn_wrap">
<button type="button" onclick="location.href='/admin/qa/list';" class="cmBtn black sml">목록</button>
<button type="button" onclick="location.href='/admin/qa/edit/${board.board_num}';" class="cmBtn black sml">수정</button>
<button type="button" onclick="deleteThis();" class="cmBtn black sml">삭제</button>
</div>
                </div>
            </div>
        </div>
    </div>
<main>

</main>
</body>
</html>