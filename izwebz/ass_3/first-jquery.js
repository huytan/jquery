$(document).ready(function() {
	$('#switcher-default').bind('click', function() {
        $('body').removeClass('red').removeClass('green'); 
		$('#switcher .button').removeClass('selected');
        $(this).addClass('selected')
	});
    $('#switcher-red').bind('click', function(){
        $('body').addClass('red').removeClass('green');
		$('#switcher .button').removeClass('selected');
        $(this).addClass('selected')		
    });
    $('#switcher-green').bind('click', function() {
        $('body').addClass('green').removeClass('red');
		$('#switcher .button').removeClass('selected');
        $(this).addClass('selected')
    });
});