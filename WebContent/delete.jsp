<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String userid=request.getParameter("userid");
try{
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
Statement st= con.createStatement();
st.execute("delete from users where userid='"+userid+"'");
out.println("succesfully deleted you can go to <a href='index.html'>Homepage</a>");
}
catch(SQLException se){
   //Handle errors for JDBC
   se.printStackTrace();   
}
%>
