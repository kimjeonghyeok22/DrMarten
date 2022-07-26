<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script type="text/javascript">
function find_id(){
	var data = $('#find_id_form').serialize();
	alert(data);
	$.ajax({
		url:'/user/find_id',
		method:'post',
		cache:false,
		data:data,
		dataType:'json',
		success:function(res){
			if(res.ufId == null){
				alert('잘못된 회원정보 입니다');
			}else{
				alert('귀하의 아이디는 '+res.ufId+' 입니다');
			}
		},
		error:function(xhr,status,err){
			alert("dpfj");
		}
	});
	return false;
}
</script>
</head>
<body>
<form id="find_id_form" onsubmit="find_id()">
<div>이름<input type="text" name="name" id="name"></div>
<div>주소<input type="text" name="adress" id="adress"></div>
<button type="submit">비밀번호 찾기</button>
</form>
</body>
</html>