<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script type="text/javascript">
function login(){
	var serData=$('#login_form').serialize();
	$.ajax({
		url:'/user/login',
		method:'post',
		cache:false,
		data:serData,
		dataType:'json',
		success: function(res){
			alert(res.checked ? '로그인 성공' : '아이디/비밀번호를 확인해주세요');
		},
		error:function(xhr, err,status){
			alert(err);
		}
	}),
	return false;
}

</script>
</head>
<body>
<main>
<form id="login_form" onsubmit="login();" method="post">
아이디:<input type="text" name="u_id" id="u_id">
비밀번호:<input type="password" name="u_pw" id="u_pw">
<button type="submit">로그인</button>
<a href="/user/find_id"><button type="button">아이디 찾기</button></a>
<a href="/user/find_pw"><button type="button">비밀번호 찾기</button></a>
<a href="/user/sign_up_form"><button type="button">회원가입</button></a>
</form>
</main>
</body>
</html>