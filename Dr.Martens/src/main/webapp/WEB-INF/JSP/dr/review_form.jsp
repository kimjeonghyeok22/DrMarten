<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰작성</title>
<link rel="stylesheet" href="/resources/css/style.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script type="text/javascript">
function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            document.getElementById('preview-image').src = e.target.result;
        };
        reader.readAsDataURL(input.files[0]);
    }
    else {
        document.getElementById('preview-image').src = "";
    }
}
</script>
</head>
<body>
<main>
<h3>리뷰작성</h3>
<form id="write_form" action="/dr/review/save" method="post" enctype="multipart/form-data">
<div style="text-align: left;">
	<label>상품명(=제목)</label>
	<input type="text" name="title" id="title" value="상품명코드로받아올것" style="width:420px;">
</div>
<div style="text-align: left;">
	<label>내용</label><br>
	<textarea  name="contents" id="contents"  rows ="10" cols="73" ></textarea>
</div>
<div class="image-container">
    <img  id="preview-image" src="https://dummyimage.com/300x300/ffffff/000000.png&text=preview+image">
    <input style="display: block;" type="file" id="input-image" name="files" onchange="readURL(this);">
</div><br>
 <div class="range">
	<input type="range"  min="1" max="5" id="score" name="score" value="5">
	</div>
<ul class="range-labels">
  <li class="active selected">1</li>
  <li>2</li>
  <li>3</li>
  <li>4</li>
  <li>5</li>
</ul>
<br>
<div class="btn_wrap">
<button type="reset">취소</button>
<button type="submit">저장</button>
</div>
</form>
</main>
</body>
</html>