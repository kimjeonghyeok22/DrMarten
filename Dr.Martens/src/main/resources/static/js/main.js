$(function () {
    $('#menu>li').on('click', function(){
        $(this).children('.sub_wrap').toggleClass('on');
        $(this).toggleClass('on');
    });
    
    $('#visual1 .next').on('click', function(){
        var num = $('.slide_on').index();
        $('.img_wrap').removeClass('slide_on');
        $('#visual1 .pgn').removeClass('on');
        if(num<2){
            $('.img_wrap').eq(num+1).addClass('slide_on');
            $('#visual1 .pgn').eq(num+1).addClass('on');
        } else if(num=3){
            $('.img_wrap').eq(0).addClass('slide_on');
            $('#visual1 .pgn').eq(0).addClass('on');
        }
    });
    $('#visual1 .prev').on('click', function(){
        var num = $('.slide_on').index();
        $('.img_wrap').removeClass('slide_on');
        $('#visual1 .pgn').removeClass('on');
        if(num>0){
            $('.img_wrap').eq(num-1).addClass('slide_on');
            $('#visual1 .pgn').eq(num-1).addClass('on');
        } else if(num<=0){
            $('.img_wrap').eq(2).addClass('slide_on');
            $('#visual1 .pgn').eq(2).addClass('on');
        }
    });
    visualAuto = setInterval(function(){
        $('#visual1 .next').click();
    }, 5000);


	//카테고리 슬라이드
    /*$('#category1 li').on('click', function(){
        $('#category1 li').removeClass('on');
        $(this).addClass('on');
        $('.category_detail').removeClass('on');
        $(this).children('.category_detail').addClass('on');
    });
    */
    
    $('ul.cateBtn_wrap li').on('click', function() {
		var active = $(this).attr('data-tab');
		$('ul.cateBtn_wrap li a').removeClass('black');
		$('#category1 li').removeClass('on');
		$('.category_detail').removeClass('on');
		$(this).find('a').addClass('black');
		$('#' + active).addClass('on');
		$('#' + active).children('.category_detail').addClass('on');
	})
    
    $('#sec1 .next').on('click', function(){
        var num = $('#category1 li.on .eq1').index();
        console.log(num);
        $('#category1 li.on .slide').removeClass('eq1'); 
        $('#category1 li.on .slide').removeClass('eq2');
        $('#category1 li.on .slide').removeClass('eq3');
        $('#category1 li.on .pgn').removeClass('on');
        if(num==0){
            $('#sec1 li.on .slide').eq(num+1).addClass('eq1');
            $('#sec1 li.on .slide').eq(num+2).addClass('eq2');
            $('#sec1 li.on .slide').eq(num).addClass('eq3');
            $('#sec1 li.on .pgn').eq(num+1).addClass('on');
        } else if(num==1){
            $('#sec1 li.on .slide').eq(num+1).addClass('eq1');
            $('#sec1 li.on .slide').eq(num-1).addClass('eq2');
            $('#sec1 li.on .slide').eq(num).addClass('eq3');
            $('#sec1 li.on .pgn').eq(num+1).addClass('on');
        } else if (num==2){
            $('#sec1 li.on .slide').eq(num-2).addClass('eq1');
            $('#sec1 li.on .slide').eq(num-1).addClass('eq2');
            $('#sec1 li.on .slide').eq(num).addClass('eq3');
            $('#sec1 li.on .pgn').eq(num-2).addClass('on');
        }
    });
    $('#sec1 .prev').on('click', function(){
        var num = $('#category1 li.on .eq1').index();
        console.log(num);
        $('#category1 li.on .slide').removeClass('eq1');
        $('#category1 li.on .slide').removeClass('eq2');
        $('#category1 li.on .slide').removeClass('eq3');
        $('#category1 li.on .pgn').removeClass('on');
        if(num==0){
            $('#sec1 li.on .slide').eq(num+2).addClass('eq1');
            $('#sec1 li.on .slide').eq(num+1).addClass('eq3');
            $('#sec1 li.on .slide').eq(num).addClass('eq2');
            $('#sec1 li.on .pgn').eq(num+2).addClass('on');
        } else if(num==2){
            $('#sec1 li.on .slide').eq(num-1).addClass('eq1');
            $('#sec1 li.on .slide').eq(num-2).addClass('eq3');
            $('#sec1 li.on .slide').eq(num).addClass('eq2');
            $('#sec1 li.on .pgn').eq(num-1).addClass('on');
        } else if (num==1){
            $('#sec1 li.on .slide').eq(num-1).addClass('eq1');
            $('#sec1 li.on .slide').eq(num+1).addClass('eq3');
            $('#sec1 li.on .slide').eq(num).addClass('eq2');
            $('#sec1 li.on .pgn').eq(num-1).addClass('on');
        }
    });
    
    $('.modal_close_btn').on('click', function(){
    	$('.addCart_modal').hide();
    });

$('.score .star').on('click', function(){
		var star_idx = $(this).index();
		$('.score').children('.star').removeClass('on');
		$('#review_score').val(star_idx+1);
		for(var i=0; i<=star_idx; i++){
            $('.score').children('.star').eq(i).addClass('on');
        }
	});
	
	$('.review .review_btn').on('click', function(){
		if($(this).hasClass('on')){
			$(this).removeClass('on');
			$(this).parent('.review').removeClass('on');
		}else{
			$(this).addClass('on');
			$(this).parent('.review').addClass('on');
		}
	
	});

    
  });

//javascript - 추천인 팝업
  
function showPopUp() {
	var width = 500;
	var height = 500;
	var left = (window.screen.width / 2) - (width/2);
	var top = (window.screen.height / 4);
	var windowStatus = 'width='+width+', height='+height+', left='+left+', top='+top+', scrollbars=yes, status=yes, resizable=yes, titlebar=yes';
    const url = "http://localhost/DrMarten/user/recommend";
	window.open(url, "hello popup", windowStatus);
}

function saveMyQna(){
	var serData = $('#write_form').serialize();
	$.ajax({
		url : '/dr/myqna/save',
		method : 'post',
		cache : false,
		data : serData,
		dataType : 'json',
		success : function(res){
			history.go(-1);
		},
		error : function(xhr, status, err){
			alert(err);
		}
	});
	return false;
}
function saveRep(){
	var serData = $('#write_form').serialize();
	$.ajax({
		url : '/admin/myqna/save',
		method : 'post',
		cache : false,
		data : serData,
		dataType : 'json',
		success : function(res){
			history.go(-1);
		},
		error : function(xhr, status, err){
			alert(err);
		}
	});
	return false;
}

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
function deleteMyQA(){
	if (!confirm('삭제하시겠습니까?')) return false;
	$.ajax({
		url : '/admin/myqna/delete/${board.board_num}',
		method : 'get',
		cacht : false,
		dataType : 'json',
		success : function(res){
			alert(res.deleted?'삭제성공':'삭제실패');
			location.href='/admin/myqna/list';
		},
		error : function(xhr,status, err){
			alert(err);
		}
	});
	return false;
}

function deleteNotice(){
	if (!confirm('삭제하시겠습니까?')) return false;
	$.ajax({
		url : '/admin/notice/delete/${board.board_num}',
		method : 'get',
		cacht : false,
		dataType : 'json',
		success : function(res){
			alert(res.deleted?'삭제성공':'삭제실패');
			location.href='/admin/notice/list';
		},
		error : function(xhr,status, err){
			alert(err);
		}
	});
	return false;
}

          function editNotice() {
                var serData = $('#write_form').serialize();
                $.ajax({
                    url: '/admin/notice/update'
                    , method: 'post'
                    , cache: false
                    , data: serData
                    , dataType: 'json'
                    , success: function (res) {
                        alert(res.updated ? '수정성공' : 'Failed');
                        location.href = '/admin/notice/detail/${board.board_num}';
                    }
                    , error: function (xhr, status, err) {
                        alert(err);
                    }
                });
                return false;
            }
            
            function saveNotice(){
	var serData = $('#write_form').serialize();
	$.ajax({
		url : '/admin/notice/save',
		method : 'post',
		cache : false,
		data : serData,
		dataType : 'json',
		success : function(res){
			alert(res.saved ? '작성성공' : 'Failed');
			location.href='/admin/notice/list';
		},
		error : function(xhr, status, err){
			alert(err);
		}
	});
	return false;
}
            function deleteQA(){
	if (!confirm('삭제하시겠습니까?')) return false;
	$.ajax({
		url : '/admin/qa/delete/${board.board_num}',
		method : 'get',
		cacht : false,
		dataType : 'json',
		success : function(res){
			alert(res.deleted?'삭제성공':'삭제실패');
			location.href='/admin/qa/list';
		},
		error : function(xhr,status, err){
			alert(err);
		}
	});
	return false;
}

            function editQA() {
                var serData = $('#write_form').serialize();
                $.ajax({
                    url: '/admin/qa/update'
                    , method: 'post'
                    , cache: false
                    , data: serData
                    , dataType: 'json'
                    , success: function (res) {
                        alert(res.updated ? '수정성공' : 'Failed');
                        location.href = '/admin/qa/detail/${board.board_num}';
                    }
                    , error: function (xhr, status, err) {
                        alert(err);
                    }
                });
                return false;
            }
function saveQA(){
	var serData = $('#write_form').serialize();
	$.ajax({
		url : '/admin/qa/save',
		method : 'post',
		cache : false,
		data : serData,
		dataType : 'json',
		success : function(res){
			alert(res.saved ? '작성성공' : 'Failed');
			location.href='/admin/qa/list';
		},
		error : function(xhr, status, err){
			alert(err);
		}
	});
	return false;
}
            
	function not_sup(){
		alert('이용 불가능한 서비스입니다 : (');
	}
