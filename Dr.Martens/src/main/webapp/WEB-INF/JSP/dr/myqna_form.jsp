<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>1:1���� �ۼ���</title>
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
			alert(res.saved ? '�ۼ�����' : 'Failed');
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
            <div class="title_wrap"> <span>���͸�ƾ ������������</span> </div>
            <div class="controller_wrap">
                <div class="log_out">
                    <div class="welcome">
                    	<span class="time sml gray">�α��� : ${time}</span>
                        <span>�����ڴ� �ȳ��ϼ��� : )</span>
                    </div>
                    <button type="button">�α׾ƿ�</button>
                </div>
                <div class="search_box">
                    <div class="dmField_input_box">
                        <input name="userid" type="text" class="dmField_input" placeholder="�˻�" >
                        <button type="button" class="cmBtn line yellow">�˻�</button>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div class="wrap">
        <div id="gnb">
            <ul id="menu">
                <li> <span>�� ����</span> <span class="off"><i class="fa-solid fa-chevron-down"></i></span> <span class="on"><i class="fa-solid fa-chevron-up"></i></span>
                    <div class="sub_wrap">
                        <ul id="sub_menu">
                            <li><a href="#">����1</a></li>
                            <li><a href="#">����2</a></li>
                            <li><a href="#">����3</a></li>
                            <li><a href="#">����4</a></li>
                        </ul>
                    </div>
                </li>
                <li> <span>�Խ��� ����</span> <span class="off"><i class="fa-solid fa-chevron-down"></i></span> <span class="on"><i class="fa-solid fa-chevron-up"></i></span>
                    <div class="sub_wrap">
                        <ul id="sub_menu">
                            <li><a href="/admin/notice/list">�������� ����</a></li>
                            <li><a href="/admin/notice/write">�������� �ۼ�</a></li>
                            <li><a href="/admin/myqna/list">1:1���� ����</a></li>
                            <li><a href="/admin/qa/write">���ֹ��� ���� �ۼ�</a></li>
                            <li><a href="/admin/qa/list">���ֹ��� ���� ����</a></li>
                        </ul>
                    </div>
                </li>
                <li> <span>��ǰ ����</span> <span class="off"><i class="fa-solid fa-chevron-down"></i></span> <span class="on"><i class="fa-solid fa-chevron-up"></i></span>
                    <div class="sub_wrap">
                        <ul id="sub_menu">
                            <li><a href="#">��ǰ ���</a></li>
                            <li><a href="#">��ǰ ���</a></li>
                        </ul>
                    </div>
                </li>
                <li> <span>�ֹ� ����</span> <span class="off"><i class="fa-solid fa-chevron-down"></i></span> <span class="on"><i class="fa-solid fa-chevron-up"></i></span>
                    <div class="sub_wrap">
                        <ul id="sub_menu">
                            <li><a href="#">��ü�ֹ����</a></li>
                        </ul>
                    </div>
                </li>
                <li><span>���м�</span></li>
            </ul>
        </div>
        <div id="admin_main">
            <div class="container">
                <div class="inner">
<h3>1:1���� �ۼ�</h3>
<form id="write_form" onsubmit="return save();">
<input type="hidden" name="pcode" value="0">
<div>
<label>ī�װ�</label>
	<select name="category" id="category">
		<option>�ֹ�����</option>
		<option>��۰���</option>
		<option>��ȯ/ȯ��</option>
		<option>��ǰ����</option>
		<option>��Ÿ</option>
	</select>
	<label>map���� ��ǰ��ȣ/�ֹ���ȣ �Ѱܹޱ�</label>
	<input type ="hidden" name="product_code" id="product_code" value="1234">
	<input type="hidden" name="order_num" id="order_num" value="2022062801">
	<br>
	
	<label>����</label>
	<input type="text" name="title" id="title" >
</div>
<div>
	<label>����</label>
	<textarea  name="contents" id="contents"></textarea>
</div>
<div class="btn_wrap">
<button type="reset" class="cmBtn black sml">���</button>
<button type="submit" class="cmBtn black sml">����</button>
</div>
</form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>