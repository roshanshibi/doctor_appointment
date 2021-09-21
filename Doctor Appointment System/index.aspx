<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Doctor_Appointment_System.index" EnableEventValidation="false" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title >Mediplus - Appoint doctor online</title>
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

      <style>
         .button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: blue;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}

.button1 {
  background-color: darkgreen; 
  color: white; 
  border-radius:12px;
  border: 12px thin #4CAF50;
  box-shadow:8px 8px 4px #888888;
  
}

.button1:hover {
  background-color: #4CAF50;
  color: white;
}





.card {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 40%;
  border-radius: 5px;
  position:absolute;
  top:35px;
  left:890px;
  width:350px;
  height:350px;
  
}

.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
  -ms-transform: scale(1.5); /* IE 9 */
  -webkit-transform: scale(1.5); /* Safari 3-8 */
  transform: scale(1.5); 
}

img {
  border-radius: 5px 5px 0 0;
}



.pulsate-fwd {
	-webkit-animation: pulsate-fwd 0.5s ease-in-out 2 both;
	        animation: pulsate-fwd 0.5s ease-in-out 2 both;
}
@-webkit-keyframes pulsate-fwd {
  0% {
    -webkit-transform: scale(1);
            transform: scale(1);
  }
  50% {
    -webkit-transform: scale(1.1);
            transform: scale(1.1);
  }
  100% {
    -webkit-transform: scale(1);
            transform: scale(1);
  }
}
@keyframes pulsate-fwd {
  0% {
    -webkit-transform: scale(1);
            transform: scale(1);
  }
  50% {
    -webkit-transform: scale(1.1);
            transform: scale(1.1);
  }
  100% {
    -webkit-transform: scale(1);
            transform: scale(1);
  }
}











    
      </style>


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
                            <%
                                if( Session["Id"] ==null)
                                {
                                    Response.Write("<p class='mb-0 register-link'><a href='patientsignup.aspx' class='mr-3'>Sign Up</a><a href='Patientlogin.aspx'>Login</a>");
                                }
                                else
                                {
                                    Response.Write("<asp:LinkButton ID='LinkButton1' runat='server' OnClick='sessionclear()'>Log out</asp:LinkButton></p>");
                                }
                                 %>
						   <script>

						       function sessionclear()
						       {
						          
						           $.post("logout.aspx?action=logout",{},function(data){
						               location.href="index.aspx";
						           })
						       }
						   </script>
					    </div>
                        
				    </div>
			    </div>
		    </div>
		  </div>
    </div>
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" style="color:white">Mediplus</a>
	      <button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav nav ml-auto">
	          <li class="nav-item"><a href="#home-section" class="nav-link" style="color: darkgreen"><span>Home</span></a></li>
	          
	         
	          <li class="nav-item"><a href="appointment.aspx" class="nav-link" style="color: darkgreen  "><span>Doctors</span></a></li>
	          
	          <li class="nav-item"><a href="#contact-section" class="nav-link" style="color: darkgreen  "><span>Contact</span></a></li>
                <li class="nav-item"><a href="messages.aspx" class="nav-link" style="color: darkgreen  "><span>Messages</span></a></li>
                
                <li class="nav-item"><a href="updatepatient.aspx" class="nav-link" style="color: darkgreen  "><span>My profile</span></a></li>
                <%-- <li class="nav-item"><a href="viewprescription.aspx" class="nav-link" style="color: darkgreen  "><span>Prescriptions</span></a></li>--%>
	          <li class="nav-item cta mr-md-2"><a runat="server" href="currentbookings.aspx" class="button button1"> My Appointments</a></li>
                </ul>
                
	      </div>
            
	    </div>


      
	  </nav>
       
	  
	  <section class="hero-wrap js-fullheight" style="background-image: url('images/doc1.jpg');" data-section="home" data-stellar-background-ratio="0.5">
      <div class="overlay"> </div>
      <div class="container">
        
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start" data-scrollax-parent="true">
           
          <div class="col-md-6 pt-5 ftco-animate">
               
          	<div class="mt-5">
          		<span class="subheading" style="color:black">Welcome to Mediplus</span>
	            <h1 style="color:white" class="mb-4">We are here <br>for your Care</h1>
	            
	            <p><a href="appointment.aspx" class="button button1 pulsate-fwd">Make an appointment</a></p>
                  
            </div>
             
              <div class="card">
  <img src="images/corona_info_0.png" style="width:100%"  >
      </div>

          </div>
                           
             


              </div>
             
        </div>

      </div>
    </section>

	


		

    
		
		

		


   
    

    <section class="ftco-section contact-section" id="contact-section">
      <div class="container">
      	<div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section text-center ftco-animate">
            <h2 class="mb-4">Contact Us</h2>
            <p></p>
          </div>
        </div>
        <div class="row d-flex contact-info mb-5">
          <div class="col-md-6 col-lg-3 d-flex ftco-animate">
          	<div class="align-self-stretch box p-4 text-center bg-light">
          		<div class="icon d-flex align-items-center justify-content-center">
          			<span class="icon-map-signs"></span>
          		</div>
          		<h3 class="mb-4">Address</h3>
	            <p>198 West 21th Street, Suite 721 New York NY 10016</p>
	          </div>
          </div>
          <div class="col-md-6 col-lg-3 d-flex ftco-animate">
          	<div class="align-self-stretch box p-4 text-center bg-light">
          		<div class="icon d-flex align-items-center justify-content-center">
          			<span class="icon-phone2"></span>
          		</div>
          		<h3 class="mb-4">Contact Number</h3>
	            <p><a href="tel://1234567920">+91 8289909475</a></p>
	          </div>
          </div>
          <div class="col-md-6 col-lg-3 d-flex ftco-animate">
          	<div class="align-self-stretch box p-4 text-center bg-light">
          		<div class="icon d-flex align-items-center justify-content-center">
          			<span class="icon-paper-plane"></span>
          		</div>
          		<h3 class="mb-4">Email Address</h3>
	            <p><a href="mailto:info@yoursite.com">mediplus@gmail.com</a></p>
	          </div>
          </div>
          <div class="col-md-6 col-lg-3 d-flex ftco-animate">
          	<div class="align-self-stretch box p-4 text-center bg-light">
          		<div class="icon d-flex align-items-center justify-content-center">
          			<span class="icon-globe"></span>
          		</div>
          		<h3 class="mb-4">Website</h3>
	            <p><a href="#">mediplus.com</a></p>
	          </div>
          </div>
        </div>
        <div class="row no-gutters block-9">
          <div class="col-md-6 order-md-last d-flex">
            <form action="#" class="bg-light p-5 contact-form" >
              
            
              <div class="form-group">
                <textarea style="width:700px" id="txtmessage" runat="server" cols="30" rows="7" class="form-control" placeholder="Enter your feedback"></textarea>
              </div>
              <div class="form-group">
               <%-- <input type="submit" value="Send Message" class="btn btn-secondary py-3 px-5">--%>
               <asp:Button ID="btnsendmessage" runat="server" Text="Send" CssClass="btn btn-secondary py-3 px-5" OnClick="btnsendmessage_Click" />
                  <br />
                  <br />
                 
                 <%-- <a id="btnviewreplies" href="repliesfromadmin.aspx" class="btn btn-secondary py-3 px-5">View replies</a>--%>
                  
              </div>
            </form>
          
          </div>

         
        </div>
      </div>
    </section>

    <footer class="ftco-footer ftco-section img" style="background-image: url(images/footer-bg.jpg);">
    	<div class="overlay"></div>
      <div class="container-fluid px-md-5">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Mediplus</h2>
              <p>Far far away, behind the word mountains, far from the countries.</p>
              <ul class="ftco-footer-social list-unstyled mt-5">
                <li class="ftco-animate"><a href="http://twitter.com"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="http://www.facebook.com"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="http://instagram.com"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
          
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">Links</h2>
              <ul class="list-unstyled">
                  <li><a href="patientsignup.aspx"><span class="icon-long-arrow-right mr-2"></span>Sign Up</a></li>
                  <li><a href="Patientlogin.aspx"><span class="icon-long-arrow-right mr-2"></span>Login</a></li>
                <li><a href="index.aspx"><span class="icon-long-arrow-right mr-2"></span>Home</a></li>
              
                
                <li><a href="appointment.aspx"><span class="icon-long-arrow-right mr-2"></span>Doctors</a></li>
        
                <li><a href="#contact-section"><span class="icon-long-arrow-right mr-2"></span>Contact</a></li>
                  <li><a href="messages.apx"><span class="icon-long-arrow-right mr-2"></span>Messages</a></li>
                  <li><a href="updatepatient.aspx"><span class="icon-long-arrow-right mr-2"></span>My Profile</a></li>
                  <li><a href="viewprescription.aspx"><span class="icon-long-arrow-right mr-2"></span>Prescriptions</a></li>
              
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Services</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Emergency Services</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Qualified Doctors</a></li>
            
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>24 Hours Services</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
	                <li><a href="tel://1234567920"><span class="icon icon-phone"></span><span class="text">+91 8289909475</span></a></li>
	                <li><a href="mailto:info@yoursite.com"><span class="icon icon-envelope pr-4"></span><span class="text">mediplus@gmail.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">
	
            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
    
  

  <!-- loader -->
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