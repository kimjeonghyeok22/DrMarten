<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 페이지 : 공지사항 작성</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="/resources/css/admin.css">
        <link rel="stylesheet" href="/resources/css/style_guide.css">
    <script src="/resources/js/main.js"></script>
<script type="text/javascript">
function save(){
	var serData = $('#write_form').serialize();
	$.ajax({
		url : '/admin/notice/save',
		method : 'post',
		cache : false,
		data : serData,
		dataType : 'json',
		success : function(res){
			alert(res.saved ? '작성성공' : 'Failed');
			location.href='/admin/notice/list';
		},
		error : function(xhr, status, err){
			alert(err);
		}
	});
	return false;
}
</script>
</head>
<body>
    <header id="admin_header">
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
                            <li><a href="/admin/product/form">상품 등록</a></li>
                            <li><a href="/admin/product/list">상품 목록</a></li>
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
        <div id="admin_main">
            <div class="container">
                <div class="inner">
                    <h3>공지 작성</h3>
                    <form id="write_form" onsubmit="return save();">
                        <div class="wrap">
                            <div class="dmField dmInput">
                                <label class="dmField_label">분류</label>
                                <select name="category" id="category" class="dmField_select">
                                    <option>이벤트</option>
                                    <option>공지</option>
                                </select>
                            </div>
                            <div class="dmField dmInput">
                                <label class="dmField_label">제목</label>
                                <input type="text" name="title" id="title" class="dmField_input">
                            </div>
                        </div>
                        <div class="wrap">
                            <div class="dmField dmInput">
                                <label class="dmField_label">내용</label>
                                <textarea name="contents" id="contents" class="dmField_textarea"></textarea>
                            </div>
                        </div>
                        <div class="btn_wrap">
                            <button type="reset" class="cmBtn black sml">취소</button>
                            <button type="submit" class="cmBtn black sml">저장</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
<main>

</main>
</body>
</html>