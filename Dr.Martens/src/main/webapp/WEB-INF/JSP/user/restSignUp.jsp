<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/JSP/include/header.jsp" />
<script>document.title = "DrMarten 로그인";</script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function (data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수
                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                }
                else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }
                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if (data.userSelectedType === 'R') {
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if (data.buildingName !== '' && data.apartment === 'Y') {
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if (extraAddr !== '') {
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                }
                else {
                    document.getElementById("sample6_extraAddress").value = '';
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
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
				<!-- <div class="subHead_title">회원가입 상세정보</div> -->
			</div>
		</div>
		<!-- //서브페이지 상단 -->    
		<main id="user">
			<h2 class="page_intro mt20">
				<strong class="fw700 fz36">회원가입</strong>
			</h2>
			<div class="join_detail mt80">
				<form action="/DrMarten/user/sign_Up" method="post">
					<input type="hidden" id="adress" name="adress">
					<div class="dmField dmInput mb30">
						<div class="dmField_input_box">
							<label class="dmField_label">이름</label> 
							<input type="text" id="name" name="name" class="dmField_input">
						</div>
					</div>
					<div class="dmField dmInput mb30">
						<div class="dmField_input_box">
							<label class="dmField_label">아이디</label>
							<input id="u_email" name="u_email" value="${u_email }" readonly class="dmField_input">
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
							<input type="text" id="sample6_postcode" name="address1" class="dmField_input">
							<button type="button" onclick="sample6_execDaumPostcode()" class="cmBtn fullWidth black mid fw500 ml10 post_btn">우편번호찾기</button>
						</div>
					</div>
					<div class="dmField dmInput mb30">
						<div class="dmField_input_box">
							<label class="dmField_label">주소</label>
							<input type="text" id="sample6_address" name="address2" class="dmField_input">
						</div>
					</div>
					<div class="dmField dmInput mb60">
						<div class="dmField_input_box">
							<label class="dmField_label">상세주소</label>
							<input type="text" id="sample6_detailAddress" name="address3" class="dmField_input">
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
							<input type="text" id="phone_num" name="phone_num" placeholder="01012345678" class="dmField_input">
						</div>
					</div>
					<div class="dmField dmInput mb30">
						<div class="dmField_input_box">
							<p class="dmField_label">성별</p>
							<ul class="dmField_box">
								<li class="ra_box dib mr10">
									<input type="radio" id="rd1" name="gender" value="male" />
									<label for="rd1"><span></span>남성</label>
								</li>
								<li class="ra_box dib">
									<input type="radio" id="rd2" name="gender" value="female" /> 
									<label for="rd2"><span></span>여성</label>
								</li>
							</ul>
						</div>
					</div>
					<div class="dmField dmInput mb100">
						<div class="dmField_input_box">
							<label class="dmField_label">생년월일</label>
							<input type="date" value="nowTime" name="birth" id="birth" class="dmField_input">
						</div>
					</div>
					<div class="btn_wrap">
						<button type="submit" class="cmBtn black large fw700 join_exit">회원가입완료</button>
					</div>
				</form>
			</div>
		</main>
	</div>
</div>
<!-- //페이지 영역 -->
<!--  -->
<jsp:include page="/WEB-INF/JSP/include/footer.jsp" />
    
        