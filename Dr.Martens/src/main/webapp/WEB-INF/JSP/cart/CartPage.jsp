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
<script type="text/javascript">
function removeItem(key)
{
   
	
	$.ajax({
		url : '/cart/cartremove/'+key,
		method :'get',
		cache:false,
		/* data :date, */
		dataType : 'json',
		success : function(res) {
			if(res.remove){
				location.href= '/cart/getmycart';
			}
			
			alret('오류입니다 죄송합니다');
		
		},
		error : function(xhe, status, err) {
			alert(err);
		}
	});
	

}

</script>
</head>
<body>

	<!-- // 물건이없을경우에 -->
	<c:if test="${Cart==null}">
		<script type="text/javascript">
			alert('아직 로그인 하시지 않으셨거나 담으신 물건이없습니다');
			history.back();
		</script>
	</c:if>


	<!-- // 물건이 있을 경우에  -->
	<c:if test="${Cart!=null}">

		<c:forEach var="c" items="${Cart}">
			<div>
				<!-- // 물건 사진을 가져오는 경로들 적기  -->
			</div>
			<div>물건 이름 :${c.productName}</div>
			<div>구매 갯수 : ${c.productNumbers} 개</div>
			<%-- <div>물건 사이즈 : ${c.productSize}</div> --%>
			<%-- <div>총 가격 : ${c.price} 원</div> --%>

			<button type="button" onclick="removeItem(${c.productCood})">물건삭제</button>
		</c:forEach>

		<div>총가격은 : ${allPrice} 원 입니다</div>
		<div>
			<span>
				<button type="button">구매 하기</button>
			</span>
		</div>
	</c:if>

</body>
</html>