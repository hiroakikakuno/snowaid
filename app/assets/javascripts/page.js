
   $(function(){
      // ▼マウスが載ったらサブメニューを表示
      $("ul.menu-list li").click(function(){
         $(this).siblings().find("ul").hide();  // 兄弟要素に含まれるサブメニューを全部消す。
         $(this).children().slideDown(150);     // 自分のサブメニューを表示する。
      });
      // ▼マウスが画面から離れたらサブメニューを消す
      $('html').mouseleave(function() {
         $('ul.menu-list ul').slideUp(150);
      });
   });



   $(function() {
    var $win = $(window),
        $main = $('main'),
        $nav = $('.lightbar'),
        navHeight = $nav.outerHeight(),
        navPos = $nav.offset().top,
        navPos = navPos - 110,
        fixedClass = 'is-fixed';
  
    $win.on('load scroll', function() {
      var value = $(this).scrollTop();
      if ( value > navPos ) {
        $nav.addClass(fixedClass);
        $main.css('margin-top', navHeight);
      } else {
        $nav.removeClass(fixedClass);
        $main.css('margin-top', '0');
      }
    });
  });
