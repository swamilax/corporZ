(function($){
  "use strict"; 
    $(window).on("load",function(){
        $("#preloader").delay(300).animate({
          "opacity" : "0"
          }, 300, function() {
          $("#preloader").css("display","none");
        });  
		 }); 
    /*--------------------------
     Fixed Header
    ---------------------------- */			 
 		var fixed_top = $(".header-section");
    $(window).on("scroll", function(){
      if( $(window).scrollTop() > 50){  
          fixed_top.addClass("animated fadeInDown menu-fixed");
      }
      else{
          fixed_top.removeClass("animated fadeInDown menu-fixed");
      }
    });
    /*--------------------------
     Header Searchbox
    ---------------------------- */		
		$('.header-searchtrigger').on('click', function () {
			$(this).find('.fa').toggleClass('fa-search fa-close');
			$(this).siblings('.header-searchbox').toggleClass('is-visible');
		});
    /*--------------------------
    Mobile Menu
    ---------------------------- */	 
	$('nav.in-navigation').meanmenu({
		meanMenuOpen: '<i class="fa fa-bars"></i>',
		meanMenuClose: '<i class="fa fa-close"></i>',
		meanMenuCloseSize: '18px',
		meanScreenWidth: '991',
		meanExpandableChildren: true,
		meanMenuContainer: '.mobile-menu',
		onePage: true
	});
	
    /* =======================================
        Main Slider
    =======================================*/
	if ($('.main-slider-carousel').length) {
		$('.main-slider-carousel').owlCarousel({
			loop:true,
			margin:0,
			nav:true,
			animateOut: 'slideOutDown',
    		animateIn: 'fadeIn',
    		active: true,
			smartSpeed: 2000,
			autoplay: 5000,
			navText: [ '<span class="fa fa-angle-left"></span>', '<span class="fa fa-angle-right"></span>' ],
			responsive:{
				0:{
					items:1
				},
				600:{
					items:1
				},
				1200:{
					items:1
				}
			}
		});
		}  
    /*--------------------------
    Counter Section
    ---------------------------- */
 $('.Count').each(function () {
    "use strict";
    $(this).prop('Counter', 0).animate({
        Counter: $(this).text()
    }, {
        duration: 10000,
        easing: 'swing',
        step: function (now) {
            $(this).text(Math.ceil(now));
        }
    });
}); 
$('.partners').owlCarousel({
        loop: true,
        margin: 10,
        autoplay: true,
        smartSpeed: 900,
        autoplayTimeout: 3000,
        responsive:{
            0:{
                items:1
            },
            600:{
                items:1
            },
			700:{
                items:3
            },
            1000:{
                items:4
            },
			1300:{
                items:5
            },
            1600:{
                items:5
            }
        }
    });
    /*--------------------------
    scrollUp
    ---------------------------- */
    $.scrollUp({
        scrollText: '<i class="bi bi-finger-index"></i>',
        easingType: 'linear',
        scrollSpeed: 900,
        animation: 'fade'
    });
	/*--------------------------
      MagnificPopup
    ---------------------------- */
    $('.photo-overlay .zoom-icon a').magnificPopup({
      type: 'image',
      gallery:{
        enabled:true
      }
    });  
	// map zooming 	 
        $('.google-map').on('click', function() {
            $('.google-map').find('iframe').css("pointer-events", "auto");
        });
	/*------------------------------------------------------------------
    FAQ
    ------------------------------------------------------------------*/
	/*---------------------
	Accordion Box
    --------------------- */ 
	if($('.accordion-box').length){
		$(".accordion-box").on('click', '.acc-btn', function() {
			
			var outerBox = $(this).parents('.accordion-box');
			var target = $(this).parents('.accordion');
			
			if($(this).hasClass('active')!==true){
				$(outerBox).find('.accordion .acc-btn').removeClass('active');
			}
			
			if ($(this).next('.acc-content').is(':visible')){
				return false;
			}else{
				$(this).addClass('active');
				$(outerBox).children('.accordion').removeClass('active-block');
				$(outerBox).find('.accordion').children('.acc-content').slideUp(300);
				target.addClass('active-block');
				$(this).next('.acc-content').slideDown(300);	
			}
		});	
	}
	/*--------------------------
    Two Item Carousel
    ---------------------------- */
	if ($('.two-item-carousel').length) {
		$('.two-item-carousel').owlCarousel({
			loop:true,
			margin:70,
			nav:true,
			smartSpeed: 500,
			autoplay: 5000,
			navText: [ '<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>' ],
			responsive:{
				0:{
					items:1,
					margin:10
				},
				600:{
					items:1,
					margin:20
				},
				800:{
					items:1,
					margin:20
				},
				1024:{
					items:3,
					margin:20
				},
				1200:{
					items:3,
					margin:20
				}
			}
		});    		
	}
	

})(jQuery); 