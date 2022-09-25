<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/JSP/include/admin_header.jsp" />
	<div id="admin_main">
		<div class="container user">
    		<div class="inner">
    			<div class="dmField dmInput mb30">
					<label class="dmField_label">이름</label>
					<input type="text" name="name" value="${detail.name}" class="dmField_input" >
				</div>
				<div class="dmField dmInput">
					<label class="dmField_label w33">아이디</label>
					<input type="text" name="u_email" value="${detail.u_email}" class="dmField_input" readonly="readonly">
				</div>
				<div class="dmField dmInput ">
					<label class="dmField_label w33">비밀번호</label>
					<input type="text" name="u_pw" value="${detail.u_pw}" class="dmField_input" >
				</div>
			
				<div class="dmField dmInput mb30">
					<label class="dmField_label">주소</label>
					<input type="text" name="adress" value="${detail.adress}" class="dmField_input">
				</div>
				<div class="dmField dmInput mb30">
					<label class="dmField_label">전화번호</label>
					<input type="text" name="phone_num" value="${detail.phone_num}" class="dmField_input">
				</div>
				<div class="dmField dmInput mb30">
					<label class="dmField_label">성별</label>
					<input type="text" name="gender" value="${detail.gender}" class="dmField_input" readonly>
				</div>
				<div class="dmField dmInput mb30">
					<label class="dmField_label">생년월일</label>
					<input type="text" name="birth" value="${detail.birth}" class="dmField_input" readonly>
				</div>
				<div class="dmField dmInput mb30">
					<label class="dmField_label">포인트</label>
					<input type="text" name="point" value="${detail.point}" class="dmField_input" >
				</div>
				<div class="btn_wrap">
				<button type="button" class="cmBtn black sml" onclick="location.href='/admin/user/edit/${detail.u_email}';">회원 정보 수정</button></div>
			</div>
		</div>
	</div>
<jsp:include page="/WEB-INF/JSP/include/admin_footer.jsp" />