function openCloseToc() {
	if (document.getElementById('category').style.display == 'none') {
		document.getElementById('category').style.display = 'block';
		document.getElementById('rowV').src='http://localhost/resources/img/Down_arrow_transparent.png';
	} else {
		document.getElementById('category').style.display = 'none';
		document.getElementById('rowV').src='http://localhost/resources/img/Up_arrow_transparent.png';
	}
}
function openCloseToc2() {
	if (document.getElementById('category2').style.display == 'none') {
		document.getElementById('rowV2').src='http://localhost/resources/img/Down_arrow_transparent.png';
		document.getElementById('category2').style.display = 'block';
		
	} else {
		document.getElementById('category2').style.display = 'none';
		document.getElementById('rowV2').src='http://localhost/resources/img/Up_arrow_transparent.png';
	}
}
function openCloseToc3() {
	if (document.getElementById('category3').style.display == 'none') {
		document.getElementById('rowV3').src='http://localhost/resources/img/Down_arrow_transparent.png';
		document.getElementById('category3').style.display = 'block';
		
	} else {
		document.getElementById('category3').style.display = 'none';
		document.getElementById('rowV3').src='http://localhost/resources/img/Up_arrow_transparent.png';
	}
}