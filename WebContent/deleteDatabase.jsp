<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<% 
try{
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
Statement st= con.createStatement();
st.execute("drop table users");
st.execute("create table users(fname varchar(20),lname varchar(20),email varchar(30),userid varchar(20),password varchar(20));");
st.execute("insert into users values('anuj','dube','anuj@gmail.com','admin','admin')");
out.println("Successfully deleted database");
}
catch (Exception e) {
e.printStackTrace();
}
%>