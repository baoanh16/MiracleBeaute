$(document).ready(function(){
	if($("body").hasClass("en-us"))
	{
		$("#send-info h4").text("ONLINE CONSULTING BOOKING");
		$("#book-meeting h4").text("Make a calendar appointment");
		$(".modal-form label").each(function(){
			if($(this).text()=='Tên (*)' || $(this).text()=='Tên')
				$(this).text("Name (*)");
			else if($(this).text()=='Số điện thoại (*)'|| $(this).text()=='Số điện thoại')
				$(this).text("Phone number (*)");
			else if($(this).text()=='Email')
				$(this).text("E-mail address");
			else if($(this).text()=='Ngày hẹn (*)'|| $(this).text()=='Ngày hẹn')
				$(this).text("Consulting booking date (*)");
			else if($(this).text()=='Bạn cảm nhận như thế nào về làn da hiện tại? (*)')
				$(this).text("How do you feel about your skin recently? (*)");
			else if($(this).text()=='Kể tên các sản phẩm bạn đang sử dụng (nếu có) (*)')
				$(this).text("List all cosmetic products you are using in your routine (if any)");
			else if($(this).text()=='Bạn mong muốn Miracle Beaute cải thiện điều gì trên làn da hiện tại (*)')
				$(this).text("Which point that you desire Miracle Beaute to improve your skin?");
			else if($(this).text()=='Địa điểm (*)'|| $(this).text()=='Địa điểm')
				$(this).text("Consulting office location");
		});
		$(".modal-form option").each(function(){
			if($(this).text()=='Chọn địa điểm')
				$(this).text("Please choose location");
		});
		
		$(".validator input").each(function(){
			if($(this).attr("placeholder")=='Họ tên')
				$(this).attr("placeholder","Full Name");
			else if($(this).attr("placeholder")=='Email')
				$(this).attr("placeholder","Email address");
			else if($(this).attr("placeholder")=='Số điện thoại')
				$(this).attr("placeholder","Phone number");
			else if($(this).attr("placeholder")=='Địa chỉ')
				$(this).attr("placeholder","Address");
			else if($(this).attr("placeholder")=='Nội dung')
				$(this).attr("placeholder","Content");
		});
		
		$(".validator textarea").each(function(){
			if($(this).attr("placeholder")=='Nội dung')
				$(this).attr("placeholder","Content");
		});
	}



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
	
	$("a.btn-book-meeting").click(function(event){
		$("#openfrm").trigger("click");
		event.preventDefault();
			setTimeout(function(){ $("body .fancybox-container").appendTo("#aspnetForm"); }, 500);
	});
	
	
	if($(".commentpanel").length>0)
	{
		if($("#tabComment").length>0)
			$(".commentpanel").appendTo("#tabComment");
		else
			$(".commentpanel").remove();
	}
});