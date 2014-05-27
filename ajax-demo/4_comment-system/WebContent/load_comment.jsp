<%@include file="db.jsp"%>
<%@page import="model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.emotions.js"></script>
<script>
	$(document).ready(function() {

		$(".txt").emotions();
	});
</script>
<title>JSP Page</title>
</head>
<%!String name ;
	String email;
	String comments;%>
<%
	
	rs = s.executeQuery("select * from comments order by com_id desc");
	while (rs.next()) {
		name = rs.getString(2);
		email = rs.getString(3);
		comments = rs.getString(4);
%>
<body>

	<div class="comment_box" id="comment_box">
		<div class="image_box">
			<img src="<%=Gravatar.glink(email)%>+?s=50" id="avatar_img" />
		</div>
		<div class='body'>

			<div>
				<span><b><%=name%></b></span> <span style="float: right;"><small>

				</small></span>
			</div>
			<div class="txt"><%=comments%></div>
		</div>
	</div>

	<%
		}
	%>
</body>
</html>
