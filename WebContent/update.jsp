<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");

String email=request.getParameter("email");
String userid=request.getParameter("userid");
String password=request.getParameter("password");
String olduserid=request.getParameter("olduserid");
try{
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
Statement st= con.createStatement();
st.execute("update users set fname='"+fname+"',lname='"+lname+"',email='"+email+"',userid='"+userid+"',password='"+password+"' where userid='"+olduserid+"'");
out.println("succesfully updated Go to <a href='index.html'>Homepage</a>"+userid);
}
catch(SQLException se){
   //Handle errors for JDBC
   se.printStackTrace();
}
%>