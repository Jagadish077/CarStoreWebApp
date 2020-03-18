<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">

<head>
	<title>Insert jaga here</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="index.css">
   <link rel="stylesheet" href="fontawesome-free-5.9.0-web/css/all.css">
</head>
<body>

<%--  This Is a Navbar  Starting  --%>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-4">
  <a class="navbar-brand" href="#">WWW.Car_Store.com</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="nav navbar-nav ml-auto">
      <li class="nav-item active">
        <a class="nav-link btn btn-outline-secondary" href="Login.jsp">SignUp <span class="sr-only">(current)</span></a> <!-- data-toggle="modal" --> 
      </li>
    
      <li class="nav-item">
        <a class="nav-link" href="#">Services</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Pricing</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Contact Us</a>
      </li>
      
      <li class="dropdown nav-item">
          <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="display.jsp">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
      <li class="nav-item">
      <form action="logout" method="post">
        <button class="nav-link btn btn-outline-secondary">Log_Out</button> 
      </form>
      </li>
      </ul>
    </div>
   </nav>
    
    <div class="row justify-content-center mb-4">
    <h2>Car Services / Second Hand Car Sales / Car Dealers</h2>
   </div>
    
    <div class=" row justify-content-center mb-4">
     <h1>Rupa Cars Dealers and Service Station</h1>
    </div>
    
    <div class="row justify-content-center mb-4">
    <div class="btn-group mb-4" role="group">
      <button type="button" class="btn btn-outline-info">Click Here To See cars!!</button>
      <button type="button" class="btn btn-outline-success" data-toggle="modal" data-target="#myModal">
 Click Here To Rgister!
</button>


    </div>
    </div>
    
    <%--  This Is a Navbar  Ending  --%>
    

<%--  This Is a image  Slider  --%>



       <div class="container-fluid mb-4">
       
       
          <div id="Myslide" class="carousel slide carousel-fade" data-ride="carousel">
          
          
            <ol class="carousel-indicators">
            <li class="active" data-target="#Myslide" data-slide-to="0"></li>
             <li class="active" data-target="#Myslide" data-slide-to="1"></li>
              <li class="active" data-target="#Myslide" data-slide-to="2"></li>
               <li class="active" data-target="#Myslide" data-slide-to="3"></li>
                <li class="active" data-target="#Myslide" data-slide-to="4"></li>
                 <li class="active" data-target="#Myslide" data-slide-to="5"></li>
            </ol>
          
                 <div class="carousel-inner">
                 
                         <div class="carousel-item active">
                     
                         <img src="image/phantam.png"  class="d-block w-100" data-interval="10000">
                     
                         </div>
                     
                         <div class="carousel-item">
                     
                         <img src="image/dxl-esvWH-owWug-unsplash.jpg" class="d-block w-100" data-interval="2000" >
                     
                         </div>
                     
                         <div class="carousel-item">
                     
                         <img src="image/audi.jpg" class="d-block w-100">
                     
                         </div>
                     
                         <div class="carousel-item">
                     
                         <img src="image/redcar1.jpg" class="d-block w-100" >
                     
                         </div>
                          <div class="carousel-item">
                     
                         <img src="image/samuele.jpg" class="d-block w-100" >
                     
                         </div>
                 
                 </div>
                 <div>
               <a href="#Myslide" class="carousel-control-prev" role="button" role="button" data-slide="prev">
                 <span class="carousel-control-prev-icon"></span>
                 <span class="sr-only">Previous</span>
               </a>
              <a href="#Myslide" class="carousel-control-next" role="button" role="button" data-slide="next">
                 <span class="carousel-control-next-icon"></span>
                 <span class="sr-only">Next</span>
               </a>
           </div>
         
          </div>
     
       </div>

<%--  This Is a image  Slider ENds  --%>


<!-- The REgistration  Modal Starts-->

<div class=" row justify-content-center">
<div class="modal fade" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Registeration form !!</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
       <form action="Register" method="post">
       
       <div class="form-group">
       <label>Enter Your Name</label>
       <input type="text" name="username" class="form-control" placeholder="Enter Your Name">
       </div>
      
       <div class="form-group">
       <label>Age</label>
       <input type="text" class="form-control" name="age" placeholder="Enter Your Name">
       </div>
       
         <div class="form-group">
             <label>Gender</label> <select name="gender" class="form-control">
              <option value="Male">Male</option>
              <option value="Female">Female</option>
              </select>
          </div>
       
       
       <div class="form-group">
       <label>City</label>
       <input type="text" class="form-control" name="city" placeholder="Enter Your Name">
       </div>
      
      
       <div class="form-group">
       <label>Email</label>
       <input type="text" class="form-control" name="email" placeholder="Enter Your Name">
       </div>
      
       <div class="form-group">
       <label>Passowrd</label>
       <input type="text" class="form-control" name="password" placeholder="Enter Your Name">
       </div>
      
       <div class="form-group">
       <label>Address</label>
       <input type="text" class="form-control" name="address" placeholder="Enter Your Name">
       </div>
      
       <div>
       <button id="Register" class="btn btn-info">Register</button>
       </div>
      
      </form>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
      <label class="p-0">Already Register?<a data-target="#mylogin" id="dismiss" data-toggle="modal" data-dismiss="modal" href="#mylogin" >Click Here For SignUP</a></label>
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>
</div>
<%-- This is a Registration  Modal Ends--%>

<%-- / / / / / / / / / / / / / / / / / / / / / /--%>

<%-- This is a Login Modal Starts--%>

<div class=" row justify-content-center">
<!-- The Modal -->
<div class="modal fade" id="mylogin">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Login Form !!</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
       <form action="Login" method="post">

       <div class="form-group">
       <label>Username</label>
       <input type="text" class="form-control" required name="username"  placeholder="Enter Your Name">
       </div>
      
       <div class="form-group">
       <label>Passowrd</label>
       <input type="password" class="form-control" required name="passowrd"  placeholder="Enter Your Name">
       </div>
      

      
       <div>
       <button class="btn btn-info">Login</button>
       </div>
          </form>
            <div class="modal1-footer">
      <label class="p-0">Not Registered Yet?<a data-target="#myModal" id="dismiss" data-toggle="modal" href="#myModal" data-dismiss="modal">Click Here For Register</a></label>
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>
   
      </div>
      </div>
      </div>
      </div>
      </div>
      
  <%-- This is a Login Modal Ends Here  --%>    
  <div class="container-fluid">
  
  <div class=" card-group p-3 mt-4"> 
  <div>
   <div class="card text-white bg-primary border-danger mb-3" style="width:400px">
   <img class="card-img-top" src="Message.jsp?id=1" alt="Card image">
     <div class="card-body"> 
       <h4 class="card-title">Vitara Breeza</h4>
       <p class="card-text">Type:  Petrol Engine</p>
       <p class="card-text">Price: $20931</p>
       <p class="card-text">Model: 2013</p>
      <a href="car_view.jsp?id=1" class="btn btn-secondary">View Details!</a>
   </div>
</div>
</div>

 <div class="card text-white bg-secondary border-primary mb-3"  style="width:400px">
   <img class="card-img-top" src="Message.jsp?id=2" alt="Card image">
     <div class="card-body"> 
       <h4 class="card-title">Verna</h4>
       <p class="card-text">Type:  Diesel Engine</p>
       <p class="card-text">Price: $209031</p>
       <p class="card-text">Model: 2018</p>
      <a href="car_view.jsp?id=2" class="btn btn-primary">View Details!</a>
   </div>
</div>
 <div class="card text-white bg-secondary border-primary mb-3" style="width:400px">
   <img class="card-img-top" src="Message.jsp?id=2" alt="Card image">
     <div class="card-body"> 
       <h4 class="card-title">Verna</h4>
       <p class="card-text">Type:  Diesel Engine</p>
       <p class="card-text">Price: $209031</p>
       <p class="card-text">Model: 2018</p>
      <a href="car_view.jsp?id=3" class="btn btn-primary">View Details!</a>
   </div>
</div>
</div>
</div>
     
<div class="container-fluid bg-dark mb-4" id="video">
	<div class="row">
  <div class="col-sm-6">
    <!-- 16:9 -->
    <h4 class="row justify-content-center text-white">16:9 Aspect Ratio</h4>
    <div class="embed-responsive embed-responsive-16by9">
      <iframe class="embed-responsive-item" src="//www.youtube.com/embed/zB4I68XVPzQ"></iframe>
    </div>
  </div>
  <div class="col-sm-6">
    <!-- 4:3 -->
    <h4 class="row justify-content-center text-white">4:3 Aspect Ratio</h4>
    <div class="embed-responsive embed-responsive-16by9">
      <iframe class="embed-responsive-item" src="//www.youtube.com/embed/T6uYT7894Wg"></iframe>
    </div>
  </div>
</div>
</div>
<section id="footer">
		<div class="container">
			<div class="row text-center text-xs-center text-sm-left text-md-left">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<h5>Quick links</h5>
					<ul class="list-unstyled quick-links">
						<li><a href="index.jsp"><i class="fa fa-angle-double-right"></i>Home</a></li>
						<li><a href="index.jsp"><i class="fa fa-angle-double-right"></i>About</a></li>
						<li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>FAQ</a></li>
						<li><a href="https://getbootstrap.com/"><i class="fa fa-angle-double-right"></i>Get Started</a></li>
						<li><a href="#video"><i class="fa fa-angle-double-right"></i>Videos</a></li>
					</ul>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<h5>Credits </h5>
					<ul class="list-unstyled quick-links">
						<li><a href="https://www.marutisuzuki.com/"><i class="fa fa-angle-double-right"></i>BootStrap 4</a></li>
						<li><a href="hyundai.com/in/en"><i class="fa fa-angle-double-right"></i>font_Awesome 5.9.0</a></li>
						<li><a href="https://www.mahindra.com/"><i class="fa fa-angle-double-right"></i>Eclips</a></li>
						<li><a href="https://www.nissan.in/"><i class="fa fa-angle-double-right"></i>jquery</a></li>
						<li><a href="https://www.toyotabharat.com/"><i class="fa fa-angle-double-right"></i>FAQ</a></li>
					</ul>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<h5>Our Brands</h5>
					<ul class="list-unstyled quick-links">
						<li><a href="https://www.marutisuzuki.com/"><i class="fa fa-angle-double-right"></i>Maruthi Suzuki</a></li>
						<li><a href="hyundai.com/in/en"><i class="fa fa-angle-double-right"></i>Hyundai</a></li>
						<li><a href="https://www.mahindra.com/"><i class="fa fa-angle-double-right"></i>Mahindra</a></li>
						<li><a href="https://www.nissan.in/"><i class="fa fa-angle-double-right"></i>Nissan</a></li>
						<li><a href="https://www.toyotabharat.com/"><i class="fa fa-angle-double-right"></i>Toyota</a></li>
					</ul>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-5">
					<ul class="list-unstyled list-inline social text-center">
					    <li class="list-inline-item"><h5>Follow Us On Social Media:-</h5></li>
						<li class="list-inline-item"><a href="https://www.facebook.com/jagadish.kumar.3975012"><i class="fab fa-facebook"></i></a></li>
						<li class="list-inline-item"><a href="https://twitter.com/Jagadis55597874"><i class="fab fa-twitter"></i></a></li>
						<li class="list-inline-item"><a href="https://github.com/Jagadish077"><i class="fab fa-github"></i></a></li>
				<%-- <li class="list-inline-item"><a href="javascript:void();"><i class="fab fa-google-plus"></i></a></li> --%>		
						<li class="list-inline-item"><a href="https://mail.google.com/mail/u/0/#compose" target="_blank"><i class="fa fa-envelope"></i></a></li>
					</ul>
				</div>
				</hr>
			</div>	
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-2 text-center text-white">
					<p><u><a href="https://www.nationaltransaction.com/">National Transaction Corporation</a></u> is a Registered MSP/ISO of Elavon, Inc. Georgia [a wholly owned subsidiary of U.S. Bancorp, Minneapolis, MN]</p>
					<p class="h6">&copy All right Reversed.<a class="text-green ml-2" href="www.carStore.com" target="_blank">Car_Store</a></p>
				</div>
				</hr>
			</div>	
		</div>
	</section>
<script type="text/javascript">
$('.dropdown-toggle').click(function(e) {
	  if ($(document).width() > 768) {
	    e.preventDefault();

	    var url = $(this).attr('href');

	    if (url !== '#') {
	      window.location.href = url;
	    }

	  }
	});
	
$(document).ready(function(){
	$(".dropdown, .btn-group").hover(function(){
		var dropdownMenu = $(this).children(".dropdown-menu");
		if(dropdownMenu.is(":visible")){
			dropdownMenu.parent().toggleClass("open");
		}
	});
});	
</script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://unpkg.com/popper.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
</body>
</html>
