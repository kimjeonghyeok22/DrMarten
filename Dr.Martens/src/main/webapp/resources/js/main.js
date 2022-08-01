$(function () {
    $('#menu>li').on('click', function(){
        $(this).children('.sub_wrap').toggleClass('on');
        $(this).toggleClass('on');
    });
  });