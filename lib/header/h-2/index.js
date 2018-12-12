$(document).ready(function () {
	if ($(window).width() < 992) {
		$('body').append('<div class="backdrop"></div>')
	}
	$('.canhcam-header-1 .toggle-menu').on('click', function () {
		$('.canhcam-header-2').toggleClass('push-off')
		$('.backdrop').toggleClass('push-off')
		$('.canhcam-header-2 .nav-item').removeClass('active').find('.child-list').slideUp()
	})
	$('.backdrop').on('click', function () {
		$('.canhcam-header-2').removeClass('push-off')
		$('.backdrop').removeClass('push-off')
		$('.canhcam-header-2 .nav-item').removeClass('active').find('.child-list').slideUp()
	})

	if ($(window).innerWidth() < 992) {

		$('.canhcam-header-2 .main-nav .nav-item').on('click', function (e) {
			e.stopPropagation();
			$(e.currentTarget).toggleClass('active')
			$(e.currentTarget).children('.child-list').slideToggle()
		})
	}
	megaMenu();
});
$(window).on('scroll', () => {
	if ($(document).width() >= 992) {
		let s = $(document).scrollTop()
		let p = $('.canhcam-header-2').offset().top;
		let h = $('.canhcam-header-1').outerHeight()
		stickyHeader(s, p, h)
	}
})
function stickyHeader(s, p, h) {

	if (s >= (p - h)) {
		// console.log('bigger')
		$('.canhcam-header-1').fadeOut()
		$('.canhcam-header-2').addClass('fixed-menu')
	} else if (s < p) {
		// console.log('smaller')
		$('.canhcam-header-1').show()
		$('.canhcam-header-2').removeClass('fixed-menu')
	}
}
const megaMenu = () => {
	$('.mega-list .list-group-item').each(function () {
		let x = $(this).attr('data-link');
		$(this).hover(function () {
			$('.mega-menu .mega-content').not(x).hide()
			$(x).css('display', "flex")
		})
	})
}