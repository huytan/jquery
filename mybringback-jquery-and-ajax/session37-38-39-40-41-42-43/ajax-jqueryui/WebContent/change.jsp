<%@page import="java.io.DataOutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.FileNotFoundException"%>

<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>

    
    <%
    DataOutputStream dos;
    if( !request.getParameter("list").isEmpty() ){
    	String fileName = getServletContext().getRealPath("list.jsp");
    	
    	String contents = request.getParameter("list");
    	File outFile =new File(fileName);
    	try {
    	dos = new DataOutputStream(
                new FileOutputStream(outFile));
    	
    	 dos.writeBytes(contents);
         dos.close();
         
         System.out.print("done");
    	} catch (FileNotFoundException ex) {
    	      ex.printStackTrace();
    	}
    }
   
    %>