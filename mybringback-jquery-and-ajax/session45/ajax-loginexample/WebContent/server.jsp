<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.io.File"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.FileInputStream"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	if (request.getParameter("password") != "") {
		String login = request.getParameter("login");
		String password = request.getParameter("password");
		
		
		
		String dataDatabase = "";
		String fileName = getServletContext().getRealPath(
				"database.txt");
		File inFile = new File(fileName);
		try {
			BufferedReader br = new BufferedReader(
					new InputStreamReader(new FileInputStream(inFile)));
			
			dataDatabase = br.readLine();
		      br.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		
		String[] pairs = dataDatabase.split("-");
		System.out.println("pairs[0]: "+ pairs[0]);
		int loginIn =0;
		for(int i = 0; i < pairs.length ; i++){
			
			String[] user = pairs[i].split(":");
			if(user[0].equals(login) && user[1].equals(password)){
				
				out.print("<h1>Hello </h1>" + user[0]);
				/* //System.out.print("ok");
				System.out.print("<h1>Hello </h1>" + user[0]); */
				loginIn =1;
			}
		}
		if(loginIn != 1){
			out.print("<h1>Wrong login</h1>");
			System.out.print("faild");
		}
	}
%>