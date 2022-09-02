<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>1:1질문 작성폼</title>
<style type="text/css">

	main{width : 350px; padding: 10px 10px 30px; margin : 50px auto;
	border : 1px solid black; border-radius: 10px; text-align : center;}
	textarea#title{width : 320px; height: 300px;}
	.btn_wrap{margin : 10px auto 0;}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script type="text/javascript">
function save(){
	var serData = $('#write_form').serialize();
	$.ajax({
		url : '/dr/myqna/save',
		method : 'post',
		cache : false,
		data : serData,
		dataType : 'json',
		success : function(res){
			alert(res.saved ? '작성성공' : 'Failed');
			location.href='/dr/myqna/list';
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
        <div id="admin_main">
            <div class="container">
                <div class="inner">
<h3>1:1질문 작성</h3>
<form id="write_form" onsubmit="return save();">
<input type="hidden" name="pcode" value="0">
<div>
<label>카테고리</label>
	<select name="category" id="category">
		<option>주문관련</option>
		<option>배송관련</option>
		<option>교환/환불</option>
		<option>상품관련</option>
		<option>기타</option>
	</select>
	<label>map으로 상품번호/주문번호 넘겨받기</label>
	<input type ="hidden" name="product_code" id="product_code" value="1234">
	<input type="hidden" name="order_num" id="order_num" value="2022062801">
	<br>
	
	<label>제목</label>
	<input type="text" name="title" id="title" >
</div>
<div>
	<label>내용</label>
	<textarea  name="contents" id="contents"></textarea>
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
</body>
</html>