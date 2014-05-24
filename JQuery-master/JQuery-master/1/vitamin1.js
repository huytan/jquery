$(function(){ //This is similar to $(document).ready(function{});
	$('#i7').text('Loaded');
	$('#i1').bind('click',function()	{
	alert('Box1');
	});
	$('#i2').click(function(){
		alert("Box2");
	});
	$('#i3').bind('click',function()	{
		$(this).css('backgroundColor','#05F723');
	});
	$('#i4').dblclick(function(){
		$(this).text("Double Clicked");
	});
	$('#i5').mouseenter(function(){
		$(this).css('backgroundColor',"#9A490C");
	}).mouseleave(function(){
		$(this).css('backgroundColor','');
	});
	
	$('#i6').hover(function(){
		$(this).text("IN");
	},function(){
		$(this).text("OUT");
	});

});
