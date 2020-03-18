<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.Blob"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
   <link rel="stylesheet" href="fontawesome-free-5.9.0-web/css/all.css">
   <style type="text/css">

body {margin:0;height:2000px;}

.icon-bar {
  position: fixed;
  -webkit-transform: translateY(-50%);
  -ms-transform: translateY(-50%);
  transform: translateY(-50%);
  top:250px;
}

.icon-bar a {
  display: block;
  text-align: center;
  padding: 16px;
  transition: all 0.3s ease;
  color: white;
  font-size: 20px;
}

.icon-bar a:hover {
  background-color: #000;
}

.facebook {
  background: #3B5998;
  color: white;
}

.twitter {
  background: #55ACEE;
  color: white;
}

.google {
  background: #dd4b39;
  color: white;
}

.linkedin {
  background: #007bb5;
  color: white;
}

.youtube {
  background: #bb0000;
  color: white;
}

.content {
  margin-left: 75px;
  font-size: 30px;
}
body,html{
	 background-image: linear-gradient(#CCFFCC,#000000);
	
	}
</style>
<link rel="stylesheet" href="fontawesome-free-5.9.0-web/css/all.css">
</head>
<body>
<div class="icon-bar">
  <a href="#" class="facebook"><i class="fab fa-facebook"></i></a> 
  <a href="#" class="twitter"><i class="fab fa-twitter"></i></a> 
  <a href="#" class="google"><i class="fab fa-google"></i></a> 
  <a href="#" class="linkedin"><i class="fab fa-linkedin"></i></a>
  <a href="#" class="youtube"><i class="fab fa-youtube"></i></a> 
</div>
<%
String id= request.getParameter("id");


ResultSet rs;
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/carshopping","root","");
PreparedStatement ps  = con.prepareStatement("select * from car_details where car_id='"+id+"'");
rs = ps.executeQuery();
if(rs.next()){
	%>
	<div class="row justify-content-center container-fluid">
	<div class="card bg-light" style="width: 35rem;">
  <img class="card-img-top img-fluid" src="Message.jsp?id=<%= rs.getString("car_id") %>" alt="Card image cap">
  <div class="card-body">
    <h3 class="card-title"><%= rs.getString("car_name") %> </h3>
    <p class="card-text"><strong> Maruti Suzuki Vitara Brezza</strong> Available only with a 1.3-litre diesel engine with both, 5-speed manual and automated manual transmissions, it is an efficient and easy to drive small SUV that also has good driving dynamics when you want to have some fun.Transmission: Automatic/Manual Engine (upto): 1248 cc</p>
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item">Mileage 24.3 kmpl	</li>
    <li class="list-group-item">Transmission Auto/manual</li>
    <li class="list-group-item">Service  &#8377;6,121</li>
    <li class="list-group-item">Engine 1248 cc</li>
  </ul>
  <div class="card-body">
    <a href="#" class="card-link btn-block btn btn-outline-success waves-effect">Card link</a>
    <a href="#" class="card-link btn-block btn btn-outline-primary">Another link</a>
  </div>
</div>

 <div class="row">
  <div class="col-md-4">
    <div class="thumbnail">
      <a href="/w3images/lights.jpg">
        <img src="image/Maruti-Suzuki-SPresso-Exterior-160582.webp" alt="Lights" style="width:100%">
        
      </a>
    </div>
  </div>
  <div class="col-md-4">
    <div class="thumbnail">
      <a href="/w3images/nature.jpg">
        <img src="/w3images/nature.jpg" alt="Nature" style="width:100%">
      </a>
    </div>
  </div>
  <div class="col-md-4">
    <div class="thumbnail">
      <a href="/w3images/fjords.jpg">
        <img src="/w3images/fjords.jpg" alt="Fjords" style="width:100%">
       
      </a>
    </div>
  </div>
</div>
</div>
	<%
}
}catch(Exception e){
	e.getMessage();
}
%>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://unpkg.com/popper.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
</body>
</html>