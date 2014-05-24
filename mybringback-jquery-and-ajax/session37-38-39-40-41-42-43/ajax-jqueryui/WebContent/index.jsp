<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Using jQueryUI</title>
	<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
	<script type="text/javascript" src ="js/script.js"></script>
	<script type="text/javascript" src="js/filter.js"></script>
	<script type="text/javascript" src="js/jquery-ui-1.10.4.custom.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div id="header">
	<div id="menu">
		<h2>jQuery UI, Search,</h2>
	
		<input id="search" style="float:right" type="text" placeholder="search..."/>
	</div>
</div>
<div id="overlay"></div>
<div id="frame">
	<table id="frame-table">
		<tr>
			<td id="left">
				<img src="images/l.jpg" alt="left"/>
			</td>
			<td id ="right">
				<img src="images/r.jpg" alt="right"/>
			</td>
		</tr>
	</table>
	<img id="main" src="" alt=""/>
	<div id="description">
		<p></p>
	</div>
</div>
<div id="wrapper">
	<ul id="filter">
		<li class="active">all</li>
		<li>nature</li>
		<li>city</li>
		<li>architecture</li>
	</ul>
	<ul id="portfolio">
		
	<%@ include file="list.jsp" %>
	</ul>
</div>
</body>
</html>