<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script type="text/javascript">
function id_check(){
	var data = $('#u_id').serialize();
	alert(data);
	$.ajax({
		url:'/user/id_check',
		method:'post',
		cache:false,
		data:data,
		dataType:'json',
		success:function(res){
			alert(res.checked ? '사용불가능한 아이디 입니다': '사용 가능한 아이디 입니다');
		},
		error:function(xhr,status,err){
			alert("dpfj");
		}
	});
	return false;
}
function sign_up(){
	var data = $('#signUpForm').serialize();
	$.ajax({
		url:'/user/singUp',
		method:'post',
		cache:false,
		data:data,
		dataType:'json',
		success:function(res){
			alert(res.signUp ? '회원가입 성공' : '비밀번호를 확인해주세요');
		},
		error:function(xhr,status,err){
			alert(err);
		}
	});
	return false;
}
</script>
</head>
<body>
<main>
<form id="signUpForm" onsubmit="sign_up()">
<div>아이디:<input type="text" id="u_id" name="u_id"> <button type="button" onclick="id_check()">아이디 중복 확인</button></div>
<div>비밀번호:<input type="password" id="u_pw" name="u_pw"></div>
<div>비밀번호 확인:<input type="password" id="u_pw2" name="u_pw2"></div>
<div>이름:<input type="text" id="name" name="name"></div>
<div>주소:<input type="text" id="adress" name="adress"></div>
<div>전화번호:<input type="text" id="phone_num" name="phone_num" value="하이픈없이 숫자만 입력해주세요"></div>
<div>성별:<input type="radio" name="gender" value="male">남성
		<input type="radio" name="gender" value="female">여성</div>
<div>생년월일:<input type="date" value="nowTime" name="birth" id="birth"></div>
<div>이메일:<input type="text" name="email" id="email"></div>
<button type="submit">저장</button>
<a href="/user/login"><button type="button">로그인 페이지로</button></a>


</form>
</main>
</body>
</html>