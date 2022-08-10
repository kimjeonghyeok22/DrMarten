<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<body>
<div>아이디:${user.u_email}</div>
<div>주소:${user.adress}</div>
<div>생년월일:${user.birth}</div>
<div>이름:${user.name}</div>
<div>전화번호:0${user.phone_num}</div>
<div>마일리지:${user.point}</div>
<div><a href="/user/edit"><button type="button">회원 정보 수정</button></a></div>
</body>
</html>