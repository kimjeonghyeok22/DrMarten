<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
이름:${detail.name }
아이디:${detail.u_email }
비밀번호:${detail.u_pw }
나이:${detail.birth }
성별:${detail.gender }
폰번호:0${detail.phone_num }
포인트:${detail.point }
<button type="button"><a href='/admin/user/edit/${detail.u_email }'>회원 정보 수정</a></button>
</body>
</html>