<!DOCTYPE html>
<html>
<head>
    <title>Display Data</title>
    <link rel="stylesheet" type="text/css" href="styleHomePage.css">
   <%@page import="java.sql.*,java.util.*"%>
   
</head>



<body bgcolor=white>
<div class="home-page">
		<div class="header">
			<h1>BookMovie</h1>
		</div>
		
		<div class="tablepage">
		<h2>DATA IN USERS TABLE</h2>
    <%
    try
    {
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from users;");
    %>
    <table>
          <tr>
             <th>First Name</th>
             <th>Last Name</th>
             <th>E-mail</th>
             <th>User-id</th>
             <th>Password</th>
          </tr>
        <%while(rs.next())
        {
            %>
            <tr>
                <td><%=rs.getString("fname") %></td>
                <td><%=rs.getString("lname") %></td>
                <td><%=rs.getString("email") %></td>
                <td><%=rs.getString("userid") %></td>
                <td><%=rs.getString("password") %></td>
            </tr>
      <%}%>
      </table><br>
    <%}
    catch(Exception e){
        out.print(e.getMessage());%><br><%
    }
    %>
    </div>
    <div class="footer">
			copyright &copy; 2020 anuj dube.
		</div>
    </div>
    
</body>
</html>