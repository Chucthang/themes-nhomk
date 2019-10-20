
$(document).ready(function(){

    $(".box_tagss > a").addClass('bg-tags');

});
    /*----------------------- PRIMARY MENU ---------------*/


    $(document).ready(function(){
        $('.navbar-nav > .menu-item-home > .nav-link').addClass('nhomk-home');

                $('.navbar-nav > .menu-item ').each(function(){

                    if( !$(this).hasClass('menu-item-home') && !$(this).hasClass('menu-item-object-page'))
                    {
                    $(this).addClass('product-category');
                    }
                    
                });
                $(".navbar-nav > .product-category > .nav-link").addClass('get-category');
         
       
      });



   

  

/*--------------------------------- ADD JS ------------------------*/
$(document).ready(function () {
   


       $('.nav-item').click(function() {
            var _this = $(this);
            _this.children(".dropdown-menu").slideToggle();
           
            $('.nav-item').not(_this).children('.dropdown-menu').slideUp();
          
        });

         
        $('.navbar .respon').click(function() {
            $(".navbar-nav").slideToggle();
        });
   

        $(window).resize(function(){

            var width = $(window).width();

            if (width > 813 ){

                $(".navbar-nav").css({"display": "flex", "flex-direction": "row"});

            }
            else
            {
                $(".navbar-nav").css({"display": "flex", "flex-direction": "column"});
              
            }

        });
});
/*---------------------------- ACTIVE ARROW -------------------------*/

$(document).ready(function () {
var arrow = document.getElementsByClassName("nav-item");
for (var i = 0; i < arrow.length; i++) {
    // debugger;
    arrow[i].addEventListener("click", function() {
        // debugger;
  var current = document.getElementsByClassName("current-menu-item");
//   debugger;
  current[0].className = current[0].className.replace(" current-menu-item", "");
  this.className += " current-menu-item";
//   debugger;
  });
}


}); 






  
  /*------------------------ swiper -----------------*/

// var swiper = new Swiper('.swiper-container', {
//     navigation: {
//       nextEl: '.swiper-button-next',
//       prevEl: '.swiper-button-prev',
//     },

$(document).ready(function () {
        var swiper = new Swiper('.swiper-container', {
            slidesPerView: 1,
            spaceBetween: 30,
            loop: true,    
            navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
            }
        });
});