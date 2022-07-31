<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 상세 보기</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script type="text/javascript">
function addCart(){
	$.ajax({
		url: '/product/addCart/',
		method:'post',
		cache:false,
		dataType:'json',
		success:function(res){
			alert(res.saved ? '장바구니에 추가 되었습니다!':'Failed');
		},
		error:function(xhr,status,err){
			alert('Error:'+err);
		}
	});
	 return false;
}
</script>
</head>
<body>
<h3>제품 상세보기 페이지</h3>
이름 ${product.name}<br>
가격${product.price}<br>
색 ${product.color}<br>
생산지 ${product.made}<br>
재료${product.material}<br>
카테고리${product.category}<br>
조회수${product.view_count}<br>
누적판매량${product.sell_count}<br>

장바구니에 추가//코드 , 이름 ,수량 사이즈, 세션.
<form id="addCartForm" action="/product/cartAdd" method="post">
	<input type="hidden" name="name" value="${product.name}">
	<input type="hidden" name="product_code" value="${product.product_code}">
	<input type="number" name="number" min="0">
	<select name ="sized" required="required">
		<option value="240" selected="selected">240</option>
		<option value="240">250</option>
		<option value="240">260</option>
		<option value="240">270</option>
		<option value="240">280</option>
	</select>
	<button type="submit">[장바구니에 담기]</button>
</form>
<!-- <c:forEach var="f" items="${vo.attach}">
			<span><a href="/files/download/${f.num}">${f.fname}</a></span>
			[<a href="javascript:deleteIt(${f.num});">삭제</a>]<br>
		</c:forEach> -->
</body>
</html>