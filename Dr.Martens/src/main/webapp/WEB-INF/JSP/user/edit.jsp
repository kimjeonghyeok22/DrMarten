<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script type="text/javascript">
<%--삭제 기능 제이슨--%>
function deleteId(){
	if(!confirm('정말로 탈퇴하시겠습니까?'))return;
	$.ajax({
		url:'/DrMarten/user/deleteId',
		method:'post',
		cache:false,
		dataType:'json',
		success:function(res){
			alert('회원의 아이디가 삭제되었습니다');
			location.href='/user/login';
		},
		error:function(xhr,status,err){
			alert(err);
		}
	});
}
</script>
</head>
<body>
<main>
<form action="/DrMarten/user/edit" method="post">
<input type="hidden" id="userEmailChecked" name="userEmailChecked" value="${user.userEmailChecked }">
<div>아이디:<input id="u_email" name="u_email" value="${user.u_email}" readonly></div>
<div>비밀번호:<input type="password" id="u_pw" name="u_pw"></div>
<div>비밀번호 확인:<input type="password" id="u_pw2" name="u_pw2"></div>
<div>이름:<input type="text" id="name" name="name"></div>
<div>주소:<input type="text" id="adress" name="adress"></div>
<div>전화번호:<input type="text" id="phone_num" name="phone_num" placeholder="숫자만입력"></div>
<div>성별:<input id="gender" name="gender" value="${user.gender }" readonly></div>
<div>생년월일:<input value="${user.birth }" name="birth" id="birth" readonly></div>
<button type="submit">수정 저장</button>
<%-- 수정 버튼 --%>
</form>
<button type="button" onclick="deleteId();">회원 탈퇴</button>
<%--삭제 버튼 --%>
</main>
</body>
</html>