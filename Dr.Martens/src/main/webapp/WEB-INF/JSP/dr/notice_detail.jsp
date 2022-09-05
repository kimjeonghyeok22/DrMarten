<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>������ ������ : �������� �󼼺���</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="/resources/css/admin.css">
        <link rel="stylesheet" href="/resources/css/style_guide.css">
    <script src="/resources/js/main.js"></script>
<script type="text/javascript">
function deleteThis(){
	if (!confirm('�����Ͻðڽ��ϱ�?')) return false;
	$.ajax({
		url : '/admin/notice/delete/${board.board_num}',
		method : 'get',
		cacht : false,
		dataType : 'json',
		success : function(res){
			alert(res.deleted?'��������':'��������');
			location.href='/admin/notice/list';
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
                            <li><a href="/admin/product/form">��ǰ ���</a></li>
                            <li><a href="/admin/product/list">��ǰ ���</a></li>
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
                <div class="inner auto">
      
<h3>�������� �󼼺���</h3>
<table>
<tr>
	<td class="title_tb">[${board.category}] ${board.title}</td>
	<td>${board.wdate }</td>
</tr>
<tr>
	<td style="text-align : left; padding: 10px 30px; " colspan="2">��ȸ��<span class="count"> | </span>${board.view_count }</td>
</tr>
<tr>
	<td colspan="2" class="contents">${board.contents}</td>
</tr>
</table>
<div class="btn_wrap">
<button type="button" onclick="location.href='/admin/notice/list';" class="cmBtn black sml">���</button>
<button type="button" onclick="location.href='/admin/notice/edit/${board.board_num}';" class="cmBtn black sml">����</button>
<button type="button" onclick="deleteThis();" class="cmBtn black sml">����</button>
</div>
                </div>
            </div>
        </div>
    </div>
<main>
</main>
</body>
</html>