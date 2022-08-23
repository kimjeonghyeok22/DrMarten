<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/JSP/include/header.jsp" />
<script>document.title = "DrMartens 회원정보수정";</script>
<script type="text/javascript">
<%--삭제 기능 제이슨--%>
function deleteId(){
	if(!confirm('정말로 탈퇴하시겠습니까?'))return;
	$.ajax({
		url:'/DrMarten/user/deleteId',
		method:'post',
		cache:false,
		dataType:'json',
		success:function(res){
			alert('회원의 아이디가 삭제되었습니다');
			location.href='/user/login';
		},
		error:function(xhr,status,err){
			alert(err);
		}
	});
}
</script>
<!--  -->
<!-- 페이지 영역 -->
<div id="container">
	<div id="content">
		<!-- 서브페이지 상단 -->
		<div id="subHead">
			<div class="subHead_back">
				<button class="subHead_btn" onclick="history.go(-1)">
					<span class="text_hiden">뒤로가기</span>
					<svg version="1.1" viewBox="0 0 34 22" class="subHead_btn_icon">
						<path pid="0" fill="#111" fill-rule="evenodd" d="M33.974 9.503H5.771l7.493-7.402L11.128-.01-.012 10.995 11.128 22l2.136-2.111-7.493-7.401h28.203V9.503z"></path>
					</svg>
				</button>
				<!-- <div class="subHead_title">회원정보수정</div> -->
			</div>
		</div>
		<!-- //서브페이지 상단 -->    
		<main id="user">
			<h2 class="page_intro mt20">
				<strong class="fw700 fz36">회원가입</strong>
			</h2>
			<div class="join_detail mt80">
				<form action="/DrMarten/user/sign_Up" method="post">
					<input type="hidden" id="userEmailChecked" name="userEmailChecked" value="${user.userEmailChecked }">
					<div class="dmField dmInput mb30">
						<div class="dmField_input_box">
							<label class="dmField_label">이름</label>
							<input type="text" id="name" name="name" value="${user.name}" class="dmField_input">
						</div>
					</div>
					<div class="dmField dmInput mb30">
						<div class="dmField_input_box">
							<label class="dmField_label">아이디</label>
							<input id="u_email" name="u_email" value="${user.u_email}" readonly class="dmField_input">
						</div>
					</div>
					<div class="dmField dmInput mb30">
						<div class="dmField_input_box">
							<label class="dmField_label">비밀번호</label>
							<input type="password" id="u_pw" name="u_pw" class="dmField_input">
						</div>
					</div>
					<div class="dmField dmInput mb60">
						<div class="dmField_input_box">
							<label class="dmField_label">비밀번호 확인</label>
							<input type="password" id="u_pw2" name="u_pw2" class="dmField_input">
						</div>
					</div>
					<div class="dmField dmInput mb20">
						<div class="dmField_input_box">
							<label class="dmField_label">우편번호</label>
							<input type="text" id="sample6_postcode" name="address1" value="${user.adress1}" class="dmField_input">
							<button type="button" onclick="sample6_execDaumPostcode()" class="cmBtn fullWidth black mid fw500 ml10 post_btn">우편번호찾기</button>
						</div>
					</div>
					<div class="dmField dmInput mb30">
						<div class="dmField_input_box">
							<label class="dmField_label">주소</label>
							<input type="text" id="sample6_address" name="address2" value="${user.adress2}" class="dmField_input">
						</div>
					</div>
					<div class="dmField dmInput mb60">
						<div class="dmField_input_box">
							<label class="dmField_label">상세주소</label>
							<input type="text" id="sample6_detailAddress" name="address3" value="${user.adress3}" class="dmField_input">
						</div>
					</div>
					<!-- <div class="dmField dmInput mb60">
						<div class="dmField_input_box">
							<label class="dmField_label">기타</label>
							<input type="text" id="sample6_extraAddress" name="address4" placeholder="참고항목" class="dmField_input">
						</div>
					</div> -->
					<div class="dmField dmInput mb30">
						<div class="dmField_input_box">
							<label class="dmField_label">전화번호</label>
							<input type="text" id="phone_num" name="phone_num" value="${user.phone_num}" placeholder="01012345678" class="dmField_input">
						</div>
					</div>
					<div class="dmField dmInput mb30">
						<div class="dmField_input_box">
							<p class="dmField_label">성별</p>
							<ul class="dmField_box">
								<li class="ra_box dib mr10">
									<input type="radio" id="rd1" name="gender" value="${user.gender}" checked/>
									<label for="rd1"><span></span>${user.gender}</label>
								</li>
							</ul>
						</div>
					</div>
					<div class="dmField dmInput mb100">
						<div class="dmField_input_box">
							<label class="dmField_label">생년월일</label>
							<!-- <input type="date" value="nowTime" name="birth" id="birth" class="dmField_input"> -->
							<input type="date" value="${user.birth}" name="birth" id="birth" readonly class="dmField_input">
						</div>
					</div>
					<div class="btn_wrap">
						<button type="submit" class="cmBtn black large fw700 join_exit">회원정보 수정</button>
					</div>
					<div class="login_util join_util">
						<div class="btn_wrap join_util">
							<button type="button" onclick="deleteId();" class="link mid">회원탈퇴</button>
						</div>
					</div>
				</form>
			</div>
		</main>
	</div>
</div>
<!-- //페이지 영역 -->
<!--  -->
<jsp:include page="/WEB-INF/JSP/include/footer.jsp" />
<%--
<form action="/DrMarten/user/edit" method="post">
<input type="hidden" id="userEmailChecked" name="userEmailChecked" value="${user.userEmailChecked }">
<div>아이디:<input id="u_email" name="u_email" value="${user.u_email}" readonly></div>
<div>비밀번호:<input type="password" id="u_pw" name="u_pw"></div>
<div>비밀번호 확인:<input type="password" id="u_pw2" name="u_pw2"></div>
<div>이름:<input type="text" id="name" name="name" value="${user.name}" ></div>
<div>주소:<input type="text" id="adress" name="adress"></div>
<div>전화번호:<input type="text" id="phone_num" name="phone_num" placeholder="숫자만입력"></div>
<div>성별:<input id="gender" name="gender" value="${user.gender }" readonly></div>
<div>생년월일:<input value="${user.birth }" name="birth" id="birth" readonly></div>
<button type="submit">수정 저장</button>
</form>
<button type="button" onclick="deleteId();">회원 탈퇴</button>
--%>
