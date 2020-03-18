<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.Blob"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
 <%@ page import="java.io.PrintWriter"%>
 <%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Carshopping.com</title>
<link rel="stylesheet" href="fontawesome-free-5.9.0-web/css/all.css">
<link rel="stylesheet" href="cars.css">
</head>

<body>
    
   
        <%
		PrintWriter pw = response.getWriter();
	     HttpSession session2 = request.getSession();
	     if (((HttpServletRequest) request).getSession().getAttribute("username") == null) {
	    		pw.println("<script language='javascript'>");
				pw.println("alert('Pleas login To Perform this action___authentication_Error')");
				pw.println("window.location='index.jsp'");
				pw.println("</script>");
				
				}else{
		String connectionURL = "jdbc:mysql://localhost:3306/carshopping";
		String user = "root";
		String pass = "";
		 
		Connection con = null;
		 
		try{
		    Class.forName("com.mysql.jdbc.Driver").newInstance();
		    con = DriverManager.getConnection(connectionURL, user, pass);
		    
		    PreparedStatement ps = con.prepareStatement("select * from car_details");
		   ResultSet rs =  ps.executeQuery();
		   
		   while(rs.next()){
		    
		%>

<div class="container-fluid row justify-content-center mb-4">
	
	<h4>Seconds Cars with best price and with best cars maintained with showroom Maintainance</h4>

</div>

<form action="">
   
   <div class="container">
	
	<div class="row justify-content-center" id="ads" >
 
    <div class="col-md-7 col-lg-7">
        <div class="card rounded">
            <div class="card-image">
                <span class="card-notify-badge">Low KMS</span>
                <span class="card-notify-year"><%= rs.getString("car_model") %></span>
                <img class="img-fluid" src="Message.jsp?id=<%= rs.getString("car_id") %>" alt="Alternate Text" />
            </div>
            <div class="card-image-overlay m-auto">
                <span class="card-detail-badge">Used</span>
                <span class="card-detail-badge">$<%= rs.getString("car_price") %></span>
                <span class="card-detail-badge">13000 Kms</span>
                 <span class="card-detail-badge"><%= rs.getString("engine_type") %></span>
            </div>
            <div class="card-body text-center">
                <div class="ad-title m-auto">
                    <h5><%= rs.getString("car_name") %></h5>
                </div>
                <a class="ad-btn" href="car_view.jsp?id=<%= rs.getString("car_id") %>">View</a>
                </div>
                <div class="button">
                <a class="ad-btn" href="#">Buy Now</a><a class="ad-btn">Add to cart</a>
            </div>
        </div>
    </div>
    </div>

    </div>
    

 </form>
		
 <%
 
		   }
		
		}catch(Exception e){
			e.printStackTrace();
		}
		 }
 %>
    </body>
</html>