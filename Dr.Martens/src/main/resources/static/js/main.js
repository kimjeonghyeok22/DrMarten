$(function () {
    $('#menu>li').on('click', function(){
        $(this).children('.sub_wrap').toggleClass('on');
        $(this).toggleClass('on');
    });
    
    $('#visual1 .next').on('click', function(){
        var num = $('.slide_on').index();
        console.log(num);
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
        console.log(num);
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
    
  });