<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prescription.aspx.cs" Inherits="Doctor_Appointment_System.prescription" %>

<!DOCTYPE html>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Mediplus - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">
    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
  </head>
   
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
      <form runat="server">
  	<div class="py-1 bg-black top">
    	<div class="container">
    		<div class="row no-gutters d-flex align-items-start align-items-center px-md-0">
	    		<div class="col-lg-12 d-block">
		    		<div class="row d-flex">
		    			<div class="col-md pr-4 d-flex topper align-items-center">
					    	<div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
						    <span class="text">+91 8289909475</span>
					    </div>
					    <div class="col-md pr-4 d-flex topper align-items-center">
					    	<div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-paper-plane"></span></div>
						    <span class="text">mediplus@gmail.com</span>
					    </div>
					    <div class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right justify-content-end">
						    <p class="mb-0 register-link"><a href="doctorlogin.aspx">Log out</a></p>
					    </div>



                       
   


				    </div>
			    </div>
		    </div>
		  </div>
           
          
       

    </div>
    
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index.html">Mediplus</a>
	      <button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav nav ml-auto">
	          <li class="nav-item"><a href="doctorpanel.aspx" class="nav-link"><span>Home</span></a></li>
	          <li class="nav-item"><a href="#about-section" class="nav-link"><span>About</span></a></li>
	          <li class="nav-item"><a href="updatedoctor.aspx" class="nav-link"><span>Profile</span></a></li>
                 <li class="nav-item"><a href="#.aspx" class="nav-link"><span>Messages</span></a></li>
	          
	          <li class="nav-item"><a href="#contact-section" class="nav-link"><span>Contact</span></a></li>
              <%-- <li class="nav-item"> <a href="updatedoctor.aspx" class="nav-link"><span style="border-style:hidden"><asp:Button ID="btnprofile" runat="server" Text="Profile" OnClick="btnprofile_Click" /></span></a></li>--%>
	          <li class="nav-item cta mr-md-2"><a href="viewappdoctor.aspx" class="nav-link">View appointments</a></li>
	        </ul>
	      </div>
	    </div>
    
	  </nav>

<br />
          <br />
          

          <section class="ftco-section contact-section" id="contact-section">
             <div class="row no-gutters block-9">
            <div class="col-md-6 order-md-last d-flex">
           
              
            
              <div class="form-group">
                <p><textarea style="width:700px" id="txtmessage" runat="server" cols="30" rows="7" class="form-control" placeholder="Enter the message"></textarea>
                    
                                               
                                                
                                                
                                                </p>
              </div>
              <div class="form-group">
               <%-- <input type="submit" value="Send Message" class="btn btn-secondary py-3 px-5">--%>
               <asp:Button ID="btnsendmessage" runat="server" Text="Send" CssClass="btn btn-secondary py-3 px-5" OnClick="btnsendmessage_Click" />
              </div>
          
          </div>
                 </div>
                </section>





          <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  
  <script src="js/main.js"></script>
    </form>
  </body>
</html>