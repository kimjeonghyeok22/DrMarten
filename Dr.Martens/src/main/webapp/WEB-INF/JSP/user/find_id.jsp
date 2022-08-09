<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
</head>
<body>
<form id="find_id_form" action="/user/find_id" method="post">
<div>이름<input type="text" name="name" id="name"></div>
<div>전화번호<input type="text" name="phone_num" id="phone_num" placeholder="숫자만 입력"></div>
<button type="submit">아이디 찾기</button>
<a href="/user/login"><button type="button">로그인 창으로</button></a>
</form>
</body>
</html>