<%@page import="java.util.*,java.sql.*,java.io.*" %>
<%@page import="javax.servlet.*" %>
<%@page import="javax.servlet.http.*" %>

<%! Connection con; %>
<%! Statement s; %>
<%! ResultSet rs; %>
<%! PreparedStatement pst; %>

<%
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con = DriverManager.getConnection(
			"jdbc:oracle:thin:@localhost:1521:XE", "hr", "hr");
	/* s=con.createStatement(); */
	}catch(Exception e)
	{ e.printStackTrace(); }
%>

<%
String name=request.getParameter("name");
String country=request.getParameter("country");
String age=request.getParameter("age");
String club=request.getParameter("club");


System.out.println(country);

pst=con.prepareStatement("insert into playerinfo values(?,?,?,?)");
pst.setString(1, name);
pst.setString(2, country);
pst.setString(3, age);
pst.setString(4, club);
pst.executeUpdate();

%>

<html>
<body>
<h2>Player <%=name %> successfully register</h2>
</body>
</html>

