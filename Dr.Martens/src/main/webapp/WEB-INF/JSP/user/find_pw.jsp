<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
</head>
<body>
<main>
<form id="find_pw_form" action="/user/find_pw" method="post">
<div>아이디<input type="text" name="u_email" id="u_email"></div>
<div>이름<input type="text" name="name" id="name"></div>
<div>전화번호<input type="text" name="phone_num" id="phone_num"></div>
<button type="submit">비밀번호 찾기</button>
<a href="/user/login"><button type="button">로그인 창으로</button></a>
</form>
</main>
</body>
</html>