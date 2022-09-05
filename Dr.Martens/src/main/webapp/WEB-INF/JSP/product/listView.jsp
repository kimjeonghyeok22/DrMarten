<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.text.DecimalFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<jsp:include page="/WEB-INF/JSP/include/header.jsp" />
<div id="main" class="pro_ser">
<div class="inner">
<div id="searchRes">
<div class="fz36 fw900 c111 ser_key">"${searchKey}"</div>
<div class="fz20 fw700 c666 ser_txt">검색 결과를 확인하세요.</div>
<div class="fz26 fw700 c111 ser_cnt">제품(${list.size()})</div>
</div>
<div id="reset_by_category">
	<c:forEach items="${list}" var="lists">
		<form id="list" onclick="location.href='/DrMarten/product/detail_product/${lists.product_code}'">
			<img src="http://localhost/${lists.attach[0].fpath}${lists.name}_main.png"/>
		<br>
			<div class="fz26 fw700 product_name">
				<c:set value="${lists.name}" var="deleName"/>
				<%String namez =  (String)pageContext.getAttribute("deleName");
				namez = namez.replace("_"," ");%>
				<%=namez%>
			</div>
			<span class="fz20 fw700 priceRight">
			<c:set value="${lists.price}" var="priceNum"/>
						<%Integer price = (Integer)pageContext.getAttribute("priceNum");
						DecimalFormat formatter = new DecimalFormat("###,###");
						%>₩<%=formatter.format(price)%></span>
                                        	<div class="wrap">
												<span class="color">${product.color}</span>
												<input type="hidden" name = "name" value="${product.name}">
												<input type="hidden" name = "name" value="${product.product_code}">
												<input type="hidden" name = "name" value="${product.price}">
												<button type="button" class="goCart" onclick="">바로가기</button>
											</div>
		</form>
	</c:forEach>
</div>
</div>
</div>
 <jsp:include page="/WEB-INF/JSP/include/footer.jsp" />