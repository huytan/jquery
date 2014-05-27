<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
<link rel="stylesheet" href="programdiary.css" />
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery-emoticons.js" type="text/javascript"></script>

<script type="text/javascript">
	$(document).ready(
			function() {
				$("#container").emotions();
				$("#comment_submit").click(
						function() {
							var name = $("#name").val();
							var email = $("#email").val();
							var comment = $("#comment").val();
							var dataString = 'name=' + name + '&email=' + email
									+ '&comment=' + comment;
							if (name == '' || email == '' || comment == '') {
								alert('Please fill all fields');
							}

							else {

								$.ajax({
									type : "POST",
									url : "save_ajax.jsp",
									data : dataString,
									cache : false,
									success : function(html) {
										$("#name").val('');
										$("#email").val('');
										$("#comment").val('');
										$("#success_msg").prepend(html)
												.emotions();
									}
								});
							}
							return false;
						});
			});
</script>
</head>
<body>
	<div id="container">

		<form action="#" method="POST">

			<table>
				<tr>
					<td style="width: 220px;">

						<h2>Name 8)</h2>
						<div>
							<input type="text" name="name" placeholder="Enter your Name..."
								class="textbox" id="name" />
						</div>
					</td>

					<td>
						<h2>Email ;)</h2>
						<div>
							<input type="text" name="email"
								placeholder="Enter your Email Address..." class="textbox"
								id="email" />
						</div>
					</td>
				</tr>

				<tr>
					<td colspan="2">
						<h2>Comment :</h2>
						<div>
							<textarea name="name" placeholder="Write your comment..."
								id="comment"></textarea>
						</div>
					</td>
				</tr>
			</table>

			<div>
				<input type="submit" class="btn" value="Comment" id="comment_submit">
			</div>
		</form>

		<div id="success_msg">
			<%@include file="load_comment.jsp"%>
		</div>

	</div>

	<a
		href="http://www.programdiary.in/2013/02/design-comment-system-in-jsp-using-ajax.html">
		resource</a>
</body>
</html>