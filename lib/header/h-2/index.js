$(document).ready(function() {
	megaMenu()
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