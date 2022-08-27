<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<!-- <script type="text/javascript">

function removeItem()
{
    
	var date = $('#item').serialize();

	$.ajax({
			url : '/DrMarten/cart/cartRemove',
			method : 'post',
			cache : false,
			data : date,
			dataType : 'json',
			success : function(res) {
				
				if (res.cartRemove) {
					alret('물건이 삭제되었습니다');
					location.href = '/DrMarten/cart/getmycart';
				}

				alret('오류입니다 죄송합니다');

			},
			error : function(xhe, status, err) {
				alert(err);
			}
		});
	return false;

	}
</script> -->
</head>
<body>

	<!-- // 물건이없을경우에 -->
	<c:if test="${Cart==null}">
		<script type="text/javascript">
			alert('아직 로그인 하시지 않으셨거나 담으신 물건이없습니다');
			history.back();
			location.href='DrMarten/user/login'
		</script>
	</c:if>


	<!-- // 물건이 있을 경우에  -->
	<c:if test="${Cart!=null}">

		<c:forEach var="c" items="${Cart}" >

			<form id="item" action="/DrMarten/cart/cartRemove" method="post">
				<input type="hidden" name="product_size" value="${c.product_size}">
				<input type="hidden" name="product_code" value="${c.product_code}">
				<div>물건 이름 :${c.product_code}</div>
				<div>물건 이름 : ${c.name}</div>
				<div>구매 갯수 : ${c.product_count} 개</div>
				<div>물건 사이즈 : ${c.product_size}</div>
				<div>물건 가격 : ${c.discounted_price} 원</div>
				<div>
					<button type="submit">물건삭제</button>
				</div>

			</form>
			
		</c:forEach>


		<div>현재의 총물건 가격은 ${allPrice} 원입니다</div>

		<div>
			<span>
				<button type="button">현재 장바구니 구매 하기</button>
			</span>
		</div>

	</c:if>

</body>
</html>