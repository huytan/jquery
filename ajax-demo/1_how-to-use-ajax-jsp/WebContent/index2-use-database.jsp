<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP page</title>
<script type="text/javascript">

function showuser(str){
	var xreq;
	if(str == ""){
		document.getElementById("showtext").innerHTML="";
		return;
	}
	if(window.XMLHttpRequest){
		xreq = new XMLHttpRequest();
	}else{
		xreq=new ActiveXObject("Microsoft.XMLHTTP");
	}
	xreq.onreadystatechange =function(){
		if( (xreq.readyState==4) && (xreq.status==200) ){
			document.getElementById("showtext").innerHTML 
            =xreq.responseText;
		}
	}
	
	xreq.open("get","getuser.jsp?q="+str,"true");
	xreq.send();
}

</script>

</head>
<body>
	<form>
	<select name="user" onchange="showuser(this.value)" >
	<option value="">Select Student name....</option>
	<option value="abhi">abhi</option>
	<option value="alex">alex</option>
	<option value="adam">adam</option>
	</select>
	</form>
	<br />
	<div id="showtext">The response will come here</div>
</body>
</html>