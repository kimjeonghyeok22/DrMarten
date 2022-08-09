<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
</head>
<body>
<main>
<form id="login_form" action="/user/login" method="post">
아이디:<input type="email" name="u_email" id="u_email" placeholder="이메일 형식 입력">
비밀번호:<input type="password" name="u_pw" id="u_pw">
<button type="submit">로그인</button>
<a href="/user/find_id"><button type="button">아이디 찾기</button></a>
<a href="/user/find_pw"><button type="button">비밀번호 찾기</button></a>
<a href="/user/signUp"><button type="button">회원가입</button></a>
<a href="/user/edit"><button type="button">회원 정보 수정</button></a>
</form>
</main>
</body>
</html>