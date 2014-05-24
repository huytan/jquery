$(function(){

	$("#filter li").click(function(){

		var category = $(this).html();
		$("#filter li").removeClass("active");

		$(this).addClass("active");

		$("#portfolio li").fadeOut();
		//var i =0;
		$("#portfolio li").each(function(){
			//	i = i + 1;
			//var test= $(this).html();
			//console.log(test + " - " + i); <img id="1" src="images/1.jpg" alt="img"/> - 1

			if ( $(this).hasClass(category) ) {
				$(this).fadeIn();
			}
		});
	});


});