function stickyMenu(headerOffset) {
	var posOfPage = $(window).scrollTop();
    if (posOfPage > headerOffset - 70) {
        $('.canhcam-header-1').addClass('fixedheader');
    } else {
        $('.canhcam-header-1').removeClass('fixedheader');
    };
    if (posOfPage >= headerOffset) {
        $('.canhcam-header-1').addClass('fixedheader');
        $('.canhcam-header-2').addClass('active');
        $('main').css('padding-top', '129px');
    } else {
        $('.canhcam-header-1').removeClass('fixedheader');
        $('.canhcam-header-2').removeClass('active');
        $('main').css('padding-top', '70px');
    };
}

function toggleMenu() {
    $('.canhcam-header-1 .toggle-menu span.mdi').click(function() {
        $('.navbar-mobile').toggleClass('active');
    });
    $('.navbar-mobile .close-navbar span.mdi').click(function() {
        $('.navbar-mobile').toggleClass('active');
    });
}