<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
 	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>������ ������ : �������� ���</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="/resources/css/admin.css">
        <link rel="stylesheet" href="/resources/css/style_guide.css">
    <script src="/resources/js/main.js"></script>
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
        </div>
        <div id="admin_main">
            <div class="container">
                <div class="inner">
                  	<h3>�������� ���</h3>
		<table>
			<tr>
				<th style="width:60px;">��ȣ</th>
				<th>����</th>
				<th style="width:120px;">�ۼ���</th>
				<th style="width:60px;">��ȸ��</th>
			</tr>
			<c:forEach var="b" items="${list}">
				<tr>
					<td class="center">${b.board_num}</td>
					<td><a href="/admin/notice/detail/${b.board_num}">[${b.category}] ${b.title}</a></td>
					<td class="center">${b.wdate}</td>
					<td class="center">${b.view_count}</td>
				</tr>
			</c:forEach>
		</table>
		
		<div class="btn_wrap">
<button type="button" class="cmBtn line sml black" onclick="location.href='/admin/notice/write';" class="cmBtn black sml">�ۼ�</button>
</div>
                </div>
            </div>
        </div>
</body>
</html>