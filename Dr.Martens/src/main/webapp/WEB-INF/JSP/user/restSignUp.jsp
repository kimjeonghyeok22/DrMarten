<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이메일 인증 후 회원가입</title>
</head>
<body>
<main>
<form action="/user/sign_Up" method="post">
<div>아이디:<input id="u_email" name="u_email" value="${u_email }" readonly></div>
<div>비밀번호:<input type="password" id="u_pw" name="u_pw"></div>
<div>비밀번호 확인:<input type="password" id="u_pw2" name="u_pw2"></div>
<div>이름:<input type="text" id="name" name="name"></div>
<div>주소:<input type="text" id="adress" name="adress"></div>
<div>전화번호:<input type="text" id="phone_num" name="phone_num" placeholder="숫자만입력"></div>
<div>성별:<input type="radio" name="gender" value="male">남성
		<input type="radio" name="gender" value="female">여성</div>
<div>생년월일:<input type="date" value="nowTime" name="birth" id="birth"></div>
<button type="submit">회원가입</button>
<a href="/user/login"><button type="button">로그인 페이지로</button></a>


</form>
</main>
</body>
</html>