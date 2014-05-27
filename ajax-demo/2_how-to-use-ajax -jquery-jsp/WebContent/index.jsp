<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ajax calls using Jquery in Servlet</title>
	<script src="http://code.jquery.com/jquery-latest.js" type="text/javascript">	
	</script>
	
	<script type="text/javascript">
		$(document).ready(function(){
			$("#submit").click(function(event){
				var username=$("#user").val();
				$.get('ActionServlet',{user: username},function(responseText) {
					$("#welcometext").text(responseText);
				});
			});
		});
	</script>
</head>
<body>
	<form id="form1">
	<h1>Ajax calls using Jquery in JSP</h1>	
	<input type="text" id="user"/>
	<input type="button" id="submit" value="Ajax submit"/>
	<br/>
	<div id="welcometext"></div>
	</form>
</body>
</html>