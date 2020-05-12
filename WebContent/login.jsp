<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%

String userid=request.getParameter("userid");

String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from users");
try{
	
	int temp=1;
	String user="",pass="";
	while(rs.next())
	{
		user=rs.getString("userid");
		pass=rs.getString("password");
		if(pass.equals(password) && user.equals(userid))
		{
			if(pass.equals("admin") && user.equals("admin"))
			{
				out.println("<br/>Welcome " +user);
				out.println("<br/>You have Special privaliges <br/>");
				out.println("<br/>You can choose from following Options<br/><br/><br/>");
				out.println("<br/><a href='homePage.html'>Book Ticket</a><br/>");
				out.println("<br/><a href='display.jsp'>Show dataBase</a><br/>");
				out.println("<br/><a href='deleteDatabase.jsp'>delete database</a><br/>");
				out.println("<br/><a href='update.html'>update profile</a>");
			
			}
			else
			{
				out.println("<br/>Welcome " +user);
				out.println("<br/>You can choose from following Options<br/><br/><br/>");
				out.println("<br/><a href='homePage.html'>Book Ticket</a><br/>");
				out.println("<br/><a href='delete.html'>delete profile</a><br/>");
				out.println("<br/><a href='update.html'>update profile</a>");
			}
			temp=0;
			break;
		}
	}
	if(temp==1)
		out.println("Invalid password or username.");
	
}
catch (Exception e) {
e.printStackTrace();
}
%>
