<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/admin/user/edit" method="post">
<input type="hidden" id="userEmailChecked" name="userEmailChecked">
<div>아이디:<input id="u_email" name="u_email" value="${user.u_email}" readonly></div>
<div>비밀번호:<input type="text" id="u_pw" name="u_pw" value="${user.u_pw }"></div>
<div>이름:<input type="text" id="name" name="name" value="${user.name}" ></div>
<div>주소:<input type="text" id="adress" name="adress" value="${user.adress }"></div>
<div>전화번호:<input type="text" id="phone_num" name="phone_num" value="0${user.phone_num }"></div>
<div>성별:<input id="gender" name="gender" value="${user.gender }" readonly></div>
<div>생년월일:<input value="${user.birth }" name="birth" id="birth" readonly></div>
<div>포인트:<input value="${user.point }" name="point" id="point" value="${user.point }"></div>
<button type="submit">수정 저장</button>
</form>

</body>
</html>