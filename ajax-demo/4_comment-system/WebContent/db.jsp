<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*,java.sql.*,java.io.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>

<%!Connection con;%>
<%!Statement s;%>
<%!ResultSet rs;%>
<%!PreparedStatement pst;%>
<%
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:1521:XE", "hr", "hr");
		 s = con.createStatement();
	
	} catch (Exception e) {
		e.printStackTrace();
	}
%>

