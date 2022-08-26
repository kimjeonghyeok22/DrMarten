<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/JSP/include/header.jsp" />
	<div id="container">
		<div id="Guide">
			<div class="gui_box ml80 mb60">
				<h2 class="gui_tit"><strong>닥터마틴 스타일 가이드</strong></h2><br />
				<p class="gui_title fz30 fw700">1. 폰트</p>
				<ul>
					<li class="fz36 fw900 c111 mb20">닥터마틴 스타일 fz36 fw900 c111</li>
					<li class="fz30 fw700 bold_line mb20">닥터마틴 스타일 fz30 fw700 bold_line</li>
					<li class="fz26 fw500 mb20">닥터마틴 스타일 fz26 fw500</li>
					<li class="fz20 fw500 slim_line op45 mb20">닥터마틴 스타일 fz20 fw500 slim_line op45</li>
					<li class="fz18 fw400 c666 mb20">닥터마틴 스타일 fz18 fw400 c666</li>
					<li class="fz16 fw300 mb20">닥터마틴 스타일 fz16 fw300</li>
					<li class="fz12 fw100 mb20">닥터마틴 스타일 fz12 fw100 </li>
				</ul>
			</div>
			<div class="gui_box ml80 mb60">
				<p class="gui_title fz30 fw700">2. 버튼</p>
				<div class="btn_wrap">
					<a href="javascript:;" class="cmBtn line mid fixedWidth black mb10 ml10">BUTTON1<span class="cmbtn_icon"><i class="fa-solid fa-chevron-right cfff fz16"></i></span></a>
					<a href="javascript:;" class="cmBtn line mid fixedWidth mb20 ml10">BUTTON2<span class="cmbtn_icon"><i class="fa-solid fa-chevron-right fz16"></i></span></a><br />
					<a href="javascript:;" class="cmBtn line big black cfff mb30">BUTTON3</a>
					<a href="javascript:;" class="cmBtn line big mb30">BUTTON4</a><br />
					<a href="javascript:;" class="cmBtn line big2 black cfff mb30">BUTTON5</a>
					<a href="javascript:;" class="cmBtn line big2 mb30 ml10">BUTTON6</a>
				</div>
				<ul class="btn_wrap mb30">
					<li class="btn_box"><a href="javascript:;" class="cmBtn line mid black">BUTTON7</a></li>
					<li class="btn_box"><a href="javascript:;" class="cmBtn line mid">BUTTON8</a></li>
					<li class="btn_box"><a href="javascript:;" class="cmBtn line hover mid">HOVER<span class="cmbtn_icon"><i class="fa-solid fa-chevron-right fz16"></i></span></a></li>
					<li class="btn_box"><a href="javascript:;" class="cmBtn line sml black">BUTTON9</a></li>
					<li class="btn_box"><a href="javascript:;" class="cmBtn line sml">BUTTON10</a></li>
				</ul>
				<div class="btn_wrap btn_test mb30">
					<a href="javascript:;" class="cmBtn fullWidth line large fw700 mb10">BUTTON11</a>
					<a href="javascript:;" class="cmBtn fullWidth black large fw700 mb10">BUTTON12</a>
					<a href="javascript:;" class="cmBtn fullWidth yellow large fw700">BUTTON13</a>
				</div>
				<div class="btn_wrap mb30">
					<a href="javascript:;" class="link mid">BUTTON13</a>
				</div>
				<!-- <ul class="btn_wrap">
					<li class="sl_btn"><a href="javascript:;" class="cmBtn prev">prev</a></li>
					<li class="sl_btn"><a href="javascript:;" class="cmBtn next">next</a></li>
				</ul> -->
			</div>
			<div class="gui_box ml80 mb60">
				<p class="gui_title fz30 fw700">3. input 폼</p>
				<div class="input_wrap input_test">
					<form action="" class="inputForm">
						<!-- input -->
						<div class="dmField dmInput mb30">
							<label class="dmField_label">타이틀</label>
							<div class="dmField_input_box">
								<input name="userid" type="text" class="dmField_input" placeholder="" >
							</div>
						</div>
						<!-- input :: value 고정 -->
						<div class="dmField dmInput mb30">
							<label class="dmField_label">타이틀</label>
							<div class="dmField_input_box">
								<input name="userid" type="text" class="dmField_input" placeholder="" value="타이틀" disabled readonly>
							</div>
						</div>
						<!-- input :: 타이틀 숨김 -->
						<div class="dmField dmInput mb30">
							<label class="dmField_label hide">타이틀</label>
							<div class="dmField_input_box">
								<input name="userid" type="text" class="dmField_input" placeholder="타이틀" >
							</div>
						</div>
						<!-- textarea -->
						<div class="dmField dmInput mb30">
							<label class="dmField_label">내용</label>
							<div class="dmField_input_box">
								<textarea placeholder="내용" name="contents" class="dmField_textarea"></textarea>
							</div>
						</div>
						<!-- select -->
						<div class="dmField dmInput">
							<label class="dmField_label">분류</label>
							<select name="category" id="addcategory" class="dmField_select">
								<option value="분류 선택" selected="selected">분류 선택</option>
								<option value="분류1">분류1</option>
								<option value="분류2">분류2</option>
								<option value="분류3">분류3</option>
								<option value="분류4">분류4</option>
								<option value="분류5">분류5</option>
							</select>
						</div>
					</form>
				</div>
			</div>
			<div class="gui_box ml80 mb60">
				<p class="gui_title fz30 fw700">4. check 박스 / Radio 박스</p>
				<ul class="check_wrap mb20">
					<li class="ck_box dib mr10">
						<input type="checkbox" id="ck1" name="cc" checked/>
						<label for="ck1"><span></span>Check Box1</label>
					</li>
					<li class="ck_box dib">
						<input type="checkbox" id="ck2" name="cc" />
						<label for="ck2"><span></span>Check Box2</label>
					</li>
				</ul>	
				<ul class="radio_wrap">
					<li class="ra_box dib mr10">
						<input type="radio" id="rd1" name="rr" checked/>
						<label for="rd1"><span></span>Radio Button1</label>
					</li>
					<li class="ra_box dib">
						<input type="radio" id="rd2" name="rr" />
						<label for="rd2"><span></span>Radio Button2</label>
					</li>
				</ul>		
			</div>
		</div>		
	</div>

<jsp:include page="/WEB-INF/JSP/include/footer.jsp" />