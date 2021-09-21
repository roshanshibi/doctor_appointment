<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doctorlogin.aspx.cs" Inherits="Doctor_Appointment_System.doctorlogin" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <style>
        .button {
  background:#000000;
  border-radius: 100px;
  padding: 20px 60px;
  color:white;
  text-decoration:dashed;
  font-size: 1.45em;
  margin: 0 15px;
}



         .topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
}

    </style>
	<title>Login V14</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="Patientlogin/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Patientlogin/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Patientlogin/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Patientlogin/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Patientlogin/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Patientlogin/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Patientlogin/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Patientlogin/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Patientlogin/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Patientlogin/css/util.css">
	<link rel="stylesheet" type="text/css" href="Patientlogin/css/main.css">
<!--===============================================================================================-->
</head>
<body>
 <div class="topnav">
  <a class="active" href="index.aspx">Home</a>
  
  
  <a href="appointment.aspx">Doctors</a>
        <a href="patientsignup.aspx">Sign Up</a>
</div>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55">
				<form class="login100-form validate-form flex-sb flex-w" runat="server">
					<span class="login100-form-title p-b-32">
						Doctor login
					</span>

					<span class="txt1 p-b-11">
						Email
					</span>
					<div class="wrap-input100 validate-input m-b-36" data-validate = "Username is required">
						<input class="input100" type="text" name="username" runat="server" id="dtxtmail" required onblur="validateEmail(this);">
						<span class="focus-input100"></span>
                        <script>
                            function validateEmail(txtemail) {
                                var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

                                if (reg.test(txtemail.value) == false) {
                                    alert('Invalid Email Address');
                                    return false;
                                }

                                return true;

                            }
                                    </script>
					</div>
					
					<span class="txt1 p-b-11">
						Password
					</span>
					<div class="wrap-input100 validate-input m-b-12" data-validate = "Password is required">
						<span class="btn-show-pass">
							<i onclick="myFunction()" class="fa fa-eye"></i>
                             <script>
                                 function myFunction() {
                                     var x = document.getElementById("dtxtpass");
                                     if (x.type === "password") {
                                         x.type = "text;"
                                     }
                                     else {
                                         x.type = "password";
                                     }
                                 }
                            </script>
						</span>
						<input class="input100" type="password" name="pass" runat="server" id="dtxtpass" autocomplete="off" required>
                        
						<span class="focus-input100"></span>
					</div>
					
					

					<%--<<%--div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Login
						</button>
					</div>--%>
                    <asp:Button ID="btnlogindoctor" runat="server" Text="Login" CssClass="login100-form-btn" OnClick="btnlogin_Click" />

                    <br />

                    
                    
                   
                    

				</form>
                <br />
                 
                <label>Are you a Patient?<a href="Patientlogin.aspx">Login</a></label>
			</div>
          
		</div>
         
 
	</div>
    
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>