$(document).ready(function(){
	if($(".home-popup").length>0)
	{
		$(".home-popup .form-group.qtext label").each(function(){
			$(this).addClass("label");
		});
		$(".home-popup .form-group.qtext input").each(function(){
			$(this).addClass("form-control");
		});
		$(".home-popup .form-group select").each(function(){
			$(this).addClass("form-control");
		});
		$(".home-popup .form-group textarea").each(function(){
			$(this).addClass("form-control datepicker");
		});
		
		$(".home-popup .frm-btnwrap input[type='submit']").each(function(){
			$(this).addClass("btn btn-primary");
		});
		$(".home-popup .date-picker input").addClass("datepicker");
		$(".home-popup .date-picker input").attr("type","date");
	}
	$("a.facybox").fancybox({
	   afterShow: function(){
			setTimeout(function(){ $("body .fancybox-container").appendTo("#aspnetForm"); }, 500);
	   }
	});
});