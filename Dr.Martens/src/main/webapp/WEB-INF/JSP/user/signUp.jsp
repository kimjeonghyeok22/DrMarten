<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
</head>
<body>
<main>
<%-- 회원가입시 이메일 인증 처음에 하는데 이메일 인증하는데--%>
<form action="/user/emailSendAction" method="post" >
아이디:<input type="text" id="u_email" name="u_email" placeholder="이메일 형식 입력"> 
<button type="submit" >이메일 확인</button>
<a href="/user/login"><button type="button">로그인 페이지로</button></a>
</form>
</main>
</body>
</html>