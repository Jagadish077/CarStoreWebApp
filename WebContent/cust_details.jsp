<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.PrintWriter"%>
    <%@ page import="java.sql.Connection"%>
    <%@ page import="java.sql.DriverManager"%>
    <%@ page import="java.sql.PreparedStatement"%>
    <%@ page import="java.sql.ResultSet" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="fontawesome-free-5.9.0-web/css/all.css">
</head>

<body>
<%
try{
	ResultSet rs;
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carshopping","root","");
	PreparedStatement pst = conn.prepareStatement("SELECT `username`, `password`, `age`, `gender`, `city`, `email`, `address` FROM `customer_registration` WHERE 1");
	rs =  pst.executeQuery();
	while(rs.next()){
		%>
		
<div class="container">
  
              
  <table class="table table-dark table-hover">
    <thead>
      <tr>
        <th>UserName</th>
        <th>Password</th>
        <th>Age</th>
        <th>Gender</th>
        <th>City</th>
        <th>Email</th>
        <th>Address</th>
        <th>Actions</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><%= rs.getString("username") %></td>
        <td><%= rs.getString("password") %></td>
        <td><%= rs.getString("age") %></td>
        <td><%= rs.getString("gender") %></td>
        <td><%= rs.getString("city") %></td>
        <td><%= rs.getString("email") %></td>
        <td><%= rs.getString("address") %></td>
        <td class="text-center" width="180">
                        <a href='edit.jsp?u=<%=rs.getString("username")%>' class="btn btn-warning"><span class="fas fa-user-edit"></span></a>
                        <a href='delete.jsp?d=<%=rs.getString("password")%>' class="btn btn-danger"><span class="fas fa-trash-alt"></span></a>
        </td>
      </tr>
    </tbody>
  </table>
</div>


<%
	}
}catch(Exception e){
	e.printStackTrace();
}
%>

</body>

</html>