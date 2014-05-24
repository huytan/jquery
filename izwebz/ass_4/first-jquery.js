$(document).ready(function() { 
	var $speech = $('div.speech'); 
	var defaultSize = $speech.css('fontSize'); 
	$('#switcher button').click(function() { 
	var num = parseFloat( $speech.css('fontSize'), 10 ); 
	switch (this.id) { 
	case 'switcher-large': 
	num *= 1.4; 
	break; 
	case 'switcher-small': 
	num /= 1.4; 
	break; 
	default: 
	num = parseFloat(defaultSize, 10); 
	} 
	$speech.css('fontSize', num + 'px'); 
});
});