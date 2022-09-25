<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/JSP/include/admin_header.jsp" />
	<div id="admin_main">
		<div class="container user">
    		<div class="inner">
				<form action="/admin/user/edit" method="post">
				<input type="hidden" id="userEmailChecked" name="userEmailChecked">
							<div class="dmField dmInput mb30">
					<label class="dmField_label">이름</label>
					<input type="text" name="name" value="${user.name}" class="dmField_input" >
				</div>
				<div class="dmField dmInput mb30">
					<label class="dmField_label">아이디</label>
					<input type="text" name="u_email" value="${user.u_email}" class="dmField_input" readonly="readonly">
				</div>
				<div class="dmField dmInput mb30">
					<label class="dmField_label">비밀번호</label>
					<input type="text" name="u_pw" value="${user.u_pw}" class="dmField_input" >
				</div>
	
				<div class="dmField dmInput mb30">
					<label class="dmField_label">주소</label>
					<input type="text" name="adress" value="${user.adress}" class="dmField_input">
				</div>
				<div class="dmField dmInput mb30">
					<label class="dmField_label">전화번호</label>
					<input type="text" name="phone_num" value="${user.phone_num}" class="dmField_input">
				</div>
				<div class="dmField dmInput mb30">
					<label class="dmField_label">성별</label>
					<input type="text" name="gender" value="${user.gender}" class="dmField_input" readonly>
				</div>
				<div class="dmField dmInput mb30">
					<label class="dmField_label">생년월일</label>
					<input type="text" name="birth" value="${user.birth}" class="dmField_input" readonly>
				</div>
				<div class="dmField dmInput mb30">
					<label class="dmField_label">포인트</label>
					<input type="text" name="point" value="${user.point}" class="dmField_input" >
				</div>
				<div class="btn_wrap">
				<button type="submit" class="cmBtn black sml">수정 저장</button></div>
				</form>
			</div>
		</div>
	</div>
<jsp:include page="/WEB-INF/JSP/include/admin_footer.jsp" />