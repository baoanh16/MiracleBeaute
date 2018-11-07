$(document).ready(function () {
	if($(window).width() < 992){
		$('body').append('<div class="backdrop"></div>')
	}
	$('.canhcam-header-1 .toggle-menu').on('click',function(){
		$('.canhcam-header-2').toggleClass('push-off')
		$('.backdrop').toggleClass('push-off')
		$('.canhcam-header-2 .nav-item').removeClass('active').find('.child-list').slideUp()
	})
	$('.backdrop').on('click',function(){
		$('.canhcam-header-2').removeClass('push-off')
		$('.backdrop').removeClass('push-off')
		$('.canhcam-header-2 .nav-item').removeClass('active').find('.child-list').slideUp()
	})

	$('.canhcam-header-2 .main-nav .nav-item').on('click', function(e){
		e.stopPropagation();
		$(e.currentTarget).toggleClass('active')
		$(e.currentTarget).children('.child-list').slideToggle()
	})
});