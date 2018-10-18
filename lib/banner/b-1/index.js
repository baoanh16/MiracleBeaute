$(document).ready(function() {
    // stickHeader();
    $('.canhcam-banner-1 .owl-carousel').owlCarousel({
        items: 1,
        dots: false,
        autoplay: true,
        autoplaySpeed: 500,
        autoplayTimeout: 4000,
        loop: true,
		nav: true,
		autoplayHoverPause: true,
        animateIn: 'fadeIn',
        animateOut: 'fadeOut',
        navText: ['<img src="/Data/Sites/1/skins/default/img/owl-prev.png">', '<img src="/Data/Sites/1/skins/default/img/owl-next.png">'],
    });
    
	var headerOffset = $('.canhcam-header-2').offset().top;
    if ($(window).width() > 992) {
        $(window).scroll(function() {
            stickyMenu(headerOffset);
        })
	}
	function stickyMenu(headerOffset) {
		var posOfPage = $(window).scrollTop();
		var e = $('.canhcam-header-2').outerHeight();
		if (posOfPage >= headerOffset) {
			$('.canhcam-header-1').addClass('d-none');
			$('.canhcam-header-2').addClass('active');
			$('.canhcam-banner-1').css('padding-bottom', e);
		} else {
			$('.canhcam-header-1').removeClass('d-none');
			$('.canhcam-header-2').removeClass('active');
	
			$('.canhcam-banner-1').css('padding-bottom', 0);
		};
	}
	
});