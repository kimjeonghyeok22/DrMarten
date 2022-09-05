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


	function not_sup(){
		alert('지원하지 않는 링크입니다 : (');
	}

    
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