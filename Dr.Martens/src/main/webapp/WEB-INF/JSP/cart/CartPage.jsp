<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<jsp:include page="/WEB-INF/JSP/include/header.jsp" />
<div id="main">
    <div class="inner">
	<!-- // 물건이없을경우에 -->
        <c:if test="${Cart==null}">
            <script type="text/javascript">
                alert('아직 로그인 하시지 않으셨거나 담으신 물건이없습니다');
                history.back();
                location.href='DrMarten/user/login'
            </script>
        </c:if>
	<!-- // 물건이 있을 경우에  -->
		<div id="subHead">
			<div class="subHead_back fx">
				<button class="subHead_btn" onclick="history.go(-1)">
					<span class="text_hiden">뒤로가기</span>
					<svg version="1.1" viewBox="0 0 34 22" class="subHead_btn_icon">
						<path pid="0" fill="#111" fill-rule="evenodd" d="M33.974 9.503H5.771l7.493-7.402L11.128-.01-.012 10.995 11.128 22l2.136-2.111-7.493-7.401h28.203V9.503z"></path>
					</svg>
				</button>
			</div>
		</div>
	    <c:if test="${Cart!=null}">
            <%int total = 0;%>
            <div class="cart_list">
				<span class="title">장바구니</span>
		    <c:forEach var="c" items="${Cart}"  varStatus="status">
                <form id="item" class="cart_item" action="/DrMarten/cart/cartRemove" method="post">
                    <input type="hidden" name="product_size" value="${c.product_size}">
                    <input type="hidden" name="product_code" value="${c.product_code}">
                    <div class="center" style="width : 90px;">${status.count}</div>
                    <img src="/resources/img/${c.name}/${c.name}_main.png" />
                    <!-- <div>제품 코드 :${c.product_code}</div> -->
                    <div style="width : 40%;">${c.name}</div>
                    <div>${c.product_size}</div>
                    <div>${c.discounted_price} 원</div>
                    <div>${c.product_count} 개</div>
                    <div>${c.total_price} 원</div>
                    <c:set var="total_price" value="${c.total_price}" />
                    <%
                        int price = (Integer)pageContext.getAttribute("total_price");
                        total += price;
                    %>
                    <div>
                        <button type="submit" style="width : 50px;">										<svg version="1.1" viewBox="0 0 24 24" class="mainSearchForm_cancel svg-icon svg-fill" style="width: 24px; height: 24px;">
											<path pid="0" class="bg" fill="#FFF" fill-rule="evenodd" d="M12 0c6.627 0 12 5.373 12 12s-5.373 12-12 12S0 18.627 0 12 5.373 0 12 0z"></path>
											<path pid="1" class="white" fill="#000" fill-rule="evenodd" d="M17.998 7.092L7.093 17.998l-1.091-1.091L16.907 6.002l1.091 1.09z"></path>
											<path pid="2" class="white" fill="#000" fill-rule="evenodd" d="M16.907 17.998L6.002 7.092l1.091-1.09 10.905 10.905-1.091 1.091z"></path>
										</svg></button>
                    </div>
                </form>
		    </c:forEach>
		    	<div class="right">
		    	합계<br>
		    	<%=total%> 원</div>
		    </div>
            <div>
                <form action="/DrMarten/cart/cartItemBuy " method="post" class="cart_buy_wrap">
                    <button type="submit" class="cmBtn black mid">전체 구매하기</button>
                </form>
            </div>
	    </c:if>
    </div>
</div>
<jsp:include page="/WEB-INF/JSP/include/footer.jsp" />