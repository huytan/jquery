<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*,java.sql.*,java.io.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%!Connection con;%>
	<%!Statement s;%>
	<%!ResultSet rs;%>
	<%
		String name = request.getParameter("q");
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:XE", "hr", "hr");
			s = con.createStatement();

			rs = s.executeQuery("select * from studentinfo where name = '"
					+ name + "'");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	%>

	<div id="dtl_table">
		<table border='3' cellpadding='5' cellspacing='2' width="400px">
			<tr bgcolor="66FF00">
				<th>Name</th>
				<th>Branch</th>
				<th>Year</th>
				<th>Email id</th>
			</tr>
			<tr>
				<%
					while (rs.next()) {
				%>
				<td><%=rs.getString(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				<%
					}
				%>
			</tr>
		</table>
	</div>
</body>
</html>