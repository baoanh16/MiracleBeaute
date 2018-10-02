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

function toggleMenu() {
	$('.canhcam-header-1 .toggle-menu span.mdi').click(function () {
		$('.navbar-mobile').toggleClass('active');
	});
	$('.navbar-mobile .close-navbar span.mdi').click(function () {
		$('.navbar-mobile').toggleClass('active');
	});
}
$(document).ready(function () {
	// if ($(window).width < 992) {
		toggleMenu();
	// }
});
