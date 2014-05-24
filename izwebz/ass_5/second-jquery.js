$(document).ready(function() { 
	$('<a href="#top">back to top</a>').insertAfter('div.chapter p:gt(2)');
	$('<a id ="top" name="top"></a>').prependTo('body');
});