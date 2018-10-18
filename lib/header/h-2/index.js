$(document).ready(function() {
	if($(window).width() < 992){
		$('.navbar-mobile .Module-217 .nav-item.lieutrinh .lieutrinh-menu').prepend('<div class="close-mega"><span class="mdi mdi mdi-arrow-left"></span></div>')
	}
	megaMenu();
	
	$('.navbar-mobile .Module-217 .nav-item.giaiphap').each(function(){
		$(this).on('click', function(){
			$('.navbar-mobile .Module-217 .nav-item').not(this).removeClass('rotate');
			$('.navbar-mobile .Module-217 .nav-item.giaiphap').not(this).find('.container').slideUp();
			$('.navbar-mobile .Module-217 .nav-item.lieutrinh').find('.container').removeClass('toggle-lieutrinh');
			$(this).toggleClass('rotate');
			$(this).find('.container').slideToggle();
		})
	})

	$('.navbar-mobile .Module-217 .nav-item.lieutrinh').on('click', function(){
		$('.navbar-mobile .Module-217 .nav-item').not(this).removeClass('rotate');
		$('.navbar-mobile .Module-217 .nav-item.giaiphap').find('.container').slideUp();
		$(this).toggleClass('rotate');
		$(this).find('.container').toggleClass('toggle-lieutrinh')
	})
});


function megaMenu(){
	$('.canhcam-header-2 .navbar-mobile .lieutrinh-menu .lieutrinh-list .list-group-item').each(function(){
		var menuID = $(this).attr('data-link');
		$(this).hover(function(){
			$('.canhcam-header-2 .navbar-mobile .lieutrinh-menu .lieutrinh-content').removeClass('active')
			$(menuID).addClass('active')
		})
	})
}

$(window).resize(function(){
	if($(window).width() < 992){
		$('.navbar-mobile .Module-217 .nav-item.lieutrinh .lieutrinh-menu').prepend('<div class="close-mega"><span class="mdi mdi mdi-arrow-left"></span></div>')
	}
})