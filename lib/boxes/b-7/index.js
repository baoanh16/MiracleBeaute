// $(window).scroll(function () {
// 	$('.canhcam-boxes-7 .nav-about .list-group .list-group-item .nav-link').each(function () {
// 		var link = $(this).attr('data-link')
// 		console.log(link)
// 		var xyz = $(link).offset().top - $('header .canhcam-header-2').outerHeight() - 10;
// 		if ($(window).scrollTop() >= xyz) {
// 			$('.canhcam-boxes-7 .nav-about .list-group .list-group-item .nav-link').removeClass('active')
// 			$(this).addClass('active')
// 		}
// 	})
// })
$(document).ready(function () {
	$('.canhcam-boxes-7 .nav-about .list-group .list-group-item .nav-link').each(function () {
		var link = $(this).attr('data-link');
		var headerHeight = $('header .canhcam-header-2').outerHeight();
		$(this).click(function () {
			$('.canhcam-boxes-7 .nav-about .list-group .list-group-item .nav-link').not(this).removeClass('active')
			$(this).addClass('active')
			$('html,body').animate({
				scrollTop: $(link).offset().top-headerHeight,
			}, 1000)
		})
	})
})
