<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	<script src="http://code.jquery.com/jquery-latest.js" type="text/javascript">	
	</script>
	
	<!-- ajax call using jquery -->
	<script type="text/javascript">
	$(document).ready(function(){
		$(".store").click(function(){
			var name =$("input#name").val();
			var country =$("input#country").val();
			var age= $("input#age").val();
			var club=$("input#club").val();
			
			var dataString = 'name='+ name +'&country='+ country  
            +'&age='+ age +'&club='+ club;
			
			$.ajax({
				type: "post",
				url: "register.jsp",
				data: dataString,
				cache: false, 
				success: function(html)
				{
				$("#sh").html(html);
				}
			});
			return false;	
		});
	});
	</script>
</head>
<body>
	<div id="sh"></div>
	<div>
	<input type="text" id="name" name="name" 
                          placeholder="playername" /></div>
	<div>
	<input type="text" id="country" name="country" 
	                         placeholder="country" /></div>
	<div>
	<input type="text" id="age" name="age" placeholder="age" /></div>
	<div>
	<input type="text" id="club" name="club" placeholder="club" />
	</div>
	<input type="submit" value="store" class="store"/>

</body>
</html>