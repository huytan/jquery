<%@include file="db.jsp"%>
<%@page import="model.*;"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<%
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String comment = request.getParameter("comment");
	pst = con.prepareStatement("insert into comments values(default,?,?,?)");
	pst.setString(1, name);
	pst.setString(2, email);
	pst.setString(3, comment);
	int i =pst.executeUpdate();
%>
</head>
<body>
	<div class='comment_box'>
		<div class="image_box">
			<img src="<%= Gravatar.glink(email)%>+?s=50" id="avatar_img" />
		</div>
		<div class='body'>
			<div>
				<span><b><%=name%></b></span> <span style="float: right;"><small>

				</small></span>
			</div>
			<div class='txt'><%=comment%></div>
		</div>
	</div>
</body>
</html>
