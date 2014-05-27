<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>


<script type="text/javascript">
$(document).ready(function (){
    $("#btn382").click(function(){        
        /* set no cache */
        $.ajaxSetup({ cache: false });
 
        $.getJSON("data/car-sale.json", function(data){ 
            var html = [];
 
            /* loop through array */
            $.each(data, function(index, d){            
                html.push("Manufacturer : ", d.Manufacturer, ", ",
                          "Sold : ", d.Sold, ", ", 
                          "Month : ", d.Month, "<br>");
            });
            
            $("#div381").html(html.join('')).css("background-color", "orange");
        }).error(function(jqXHR, textStatus, errorThrown){ /* assign handler */
            /* alert(jqXHR.responseText) */
            alert("error occurred!");
        }); 
    });
});
        
</script>
</head>
<body>
	<a name="#ajax-getjson-example"></a>
<div id="example-section38">    
    <div>Car sale report</div>
    <div id="div381"></div>
    <button id="btn382" type="button">Click to load car sale report (json type)</button>    
    &nbsp;<a href="data/car-sale.json" target="_blank">Original car sale report</a>
</div>
</body>
</html>