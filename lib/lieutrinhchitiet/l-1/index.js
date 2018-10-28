function lieuTrinhChiTiet1() {
	$('.lieutrinhchitiet-1 .slider-img .slider-for').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: false,
		fade: false,
		autoplay: false,
		asNavFor: '.slider-nav'
	});
	$('.lieutrinhchitiet-1 .slider-img .slider-nav').slick({
		autoplay: false,
		slidesToShow: 4,
		slidesToScroll: 1,
		asNavFor: '.slider-for',
		dots: false,
		arrows: true,
		centerMode: false,
		focusOnSelect: true,
		prevArrow: $('.left-arrow'),
		nextArrow: $('.right-arrow'),
		// vertical: true,
		// variableWidth: false,
		// verticalSwiping: false,
		infinite: false,
		responsive: [{
			breakpoint: 768,
			settings: {
				slidesToShow: 3
			}
		}]
	}).on('init', function (event, slick, direction) {
		if (!$('.lieutrinhchitiet-1 .slider-img .slider-nav .left-arrow').is(':visible')) {
			$('.lieutrinhchitiet-1 .slider-img .slider-control').css({
				'padding-top': '0px'
			})
		}
	}).on('afterChange', function (event, slick, currentSlide, nextSlide) {
		var getcs = slick.$slides.length - 1
		if (currentSlide == 0) {
			$('.lieutrinhchitiet-1 .slider-img .left-arrow').attr('disabled', 'disabled')
		} else {
			$('.lieutrinhchitiet-1 .slider-img .left-arrow').removeAttr('disabled')
		}
		if (getcs == currentSlide) {
			$('.lieutrinhchitiet-1 .slider-img .right-arrow').attr('disabled', 'disabled')
		} else {
			$('.lieutrinhchitiet-1 .slider-img .right-arrow').removeAttr('disabled')
		}
	});
};

$(document).ready(function () {
	lieuTrinhChiTiet1();
	$('.lieutrinhchitiet-1 .button-list .btn-video').fancybox({
		'width': 768,
		'height': 480,
	});
});
