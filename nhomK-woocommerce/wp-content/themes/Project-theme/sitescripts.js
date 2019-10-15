const newLocal = 'nepr-fball';
$(document).ready(function(){

    $(".box_tagss > a").addClass('bg-tags');



     /*----------------------- HEADER CONTACT MENU ---------------*/
    //  $(".nav-two > .navbar-nav").addClass('ul-two');
    //  $("#menu-header-contact > .nav-item").addClass('li-two');
    //  $(".li-two:nth-child(1) > .nav-link").addClass('color-a-one');
    //  $(".li-two:nth-child(2) > .nav-link").addClass('color-a-two');
    //  $(".li-two > .color-a-two:nth").addClass('color-a-iconone');
    //  $(".li-two > .nav-link:last-child").addClass('color-a-icontwo');
    //  $( "<i class='fas fa-file-alt'></i>" ).insertBefore( ".color-a-two:first" );
      /*----------------------- HEADER CONTACT MENU ---------------*/


    /*----------------------- PRIMARY MENU ---------------*/
    // $(".nav-one > .navbar-nav").addClass('ul-one');
    // // $(".nav-one > .navbar-nav").addClass('ul-dataid');
    // $("#menu-primary-menu > .nav-item").addClass('li-one');

    // $("#menu-primary-menu > .nav-item").addClass('li-dataid');

    // $(".li-one > .nav-link:first").addClass('icon-home');
    // $('.icon-home').html('<i class="fas fa-home home-click"></i>');
    // $(".li-one > .nav-link").addClass('color-a-first');

    // $(".li-one > .dropdown-menu").addClass('ul-subtwo');
    // // $(".li-one > .dropdown-menu").addClass('ul-dataid');

    // $(".ul-subtwo > .nav-item").addClass('li-subtwo');
    // $(".ul-subtwo > .nav-item").addClass('li-dataid');
    /*----------------------- PRIMARY MENU ---------------*/


    $(document).ready(function(){
        $('.navbar-nav > .menu-item-home > .nav-link').addClass('nhomk-home');

                    $('.navbar-nav > .menu-item ').each(function(){

                        if( !$(this).hasClass('menu-item-home') && !$(this).hasClass('menu-item-has-children'))
                        {
                        $(this).addClass('nhomk-page-ajax');
                        }
                        
                    });
  $(".navbar-nav > .nhomk-page-ajax > .nav-link").addClass('li-ajax-page');

         
       
      });



    $(window).on('load',function(){



$('.owl-carousel').owlCarousel({
    loop:true,
    margin:10,
    nav:true,
    autoplay:false,
    autoplayTimeout:100,
    autoplayHoverPause:true,
    responsive:{
        0:{
            items:1
		},
		350:{
            items:1
		},
        768:{
            items:1
		},
		992:{
            items:1
        },
        1200:{
            items:1
        }
    }
})

    });



// $(".owl-prev , .owl-next").children().addClass('nepr-cick');
// $(".owl-next").children().addClass('right-nex');



$('.slidtwo').owlCarousel({
    loop:true,
    margin:10,
    nav:true,
    autoplay:false,
    autoplayTimeout:1000,
    autoplayHoverPause:true,
    responsive:{
        0:{
            items:1
		},
		350:{
            items:1
		},
        768:{
            items:2
		},
		992:{
            items:3
        },
        1140:{
            items:3
        },
        1200:{
            items:3
        }
    }
})




// $(".owl-prev , .owl-next").children().addClass(newLocal);
// $(".owl-next").children().addClass('right-fball');
// $(".owl-carousel > .owl-nav").addClass('adprev');


// $('.slidthree').owlCarousel({
//     loop:true,
//     margin:10,
//     nav:true,
//     autoplay:true,
//     autoplayTimeout:3000,
//     autoplayHoverPause:true,
//     responsive:{
//         0:{
//             items:3
// 		},
// 		350:{
//             items:3
// 		},
//         768:{
//             items:3
// 		},
// 		992:{
//             items:3
//         },
//         1200:{
//             items:3
//         }
//     }
// })

document.getElementsByClassName("main_menu")[0].setAttribute("id", "myHeader");   
// document.getElementsByClassName("sidebar-right")[0].setAttribute("id", "stick-sidebar");   
// document.addEventListener('DOMContentLoaded', function() {


window.onscroll = function() {menuscrolll()};

        var header = document.getElementById("myHeader");

        var sticky = header.offsetTop;
    
      
      
                    function menuscrolll() {
                    if (window.pageYOffset > sticky) {
                        header.classList.add("sticky");
                      
                    } else {
                        header.classList.remove("sticky");
                       
                    }
                    }
});

