<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script type="text/javascript">
$.getJSON('getJsonData.json', function(data){
	$.each(data, function(key,val){
		alert('key = ' +key + " : value = " + val);
	});
});
</script>
<title>Insert title here</title>
</head>
<body>
	getJSON function
</body>
</html>