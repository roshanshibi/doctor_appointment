<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updatepatient.aspx.cs" Inherits="Doctor_Appointment_System.updatepatient" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <style>
        .button {
  background:#000000;
  border-radius: 100px;
  padding: 20px 60px;
  color:white;
  text-decoration: none;
  font-size: 1.45em;
  margin: 0 15px;
}

         input {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
}

/* Style the submit button */
input[type=submit] {
  background-color: #4CAF50;
  color: white;
}

/* Style the container for inputs */
.container {
  background-color: #f1f1f1;
  padding: 20px;
}

/* The message box is shown when the user clicks on the password field */
#message {
  display:none;
  background: #f1f1f1;
  color: #000;
  position: relative;
  padding: 20px;
  margin-top: 10px;
}

#message p {
  padding: 10px 35px;
  font-size: 18px;
}

/* Add a green text color and a checkmark when the requirements are right */
.valid {
  color: green;
}

.valid:before {
  position: relative;
  left: -35px;
  content: "✔";
}

/* Add a red text color and an "x" when the requirements are wrong */
.invalid {
  color: red;
}

.invalid:before {
  position: relative;
  left: -35px;
  content: "✖";
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
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Au Register Forms by Colorlib</title>

    <!-- Icons font CSS-->
    <link href="Patientsignup/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="Patientsignup/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="Patientsignup/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="Patientsignup/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="Patientsignup/css/main.css" rel="stylesheet" media="all">
</head>

<body>
     <div class="topnav">
  <a class="active" href="index.aspx">Home</a>
  
  
  <a href="appointment.aspx">Doctors</a>
        <a href="messages.aspx">Messages</a>
         <a href="currentbookings.aspx">My Appointments</a>
</div>
    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title">Your profile</h2>
                    <form runat="server">
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Name</label>
                                    <input class="input--style-4" type="text" name="name" runat="server" id="txtname" required>
                                 
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Age</label>
                                    <input class="input--style-4" type="text" name="age" runat="server" id="txtage" onkeypress="javascript:return isNumber(event)">

                                     <script>
                                         // WRITE THE VALIDATION SCRIPT.
                                         function isNumber(evt) {
                                             var iKeyCode = (evt.which) ? evt.which : evt.keyCode
                                             if (iKeyCode != 46 && iKeyCode > 31 && (iKeyCode < 48 || iKeyCode > 57))
                                                 return false;

                                             return true;
                                         }
                                    </script>
                                </div>
                            </div>


                            
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Phone</label>
                                    <input class="input--style-4" type="text" name="phone" runat="server" id="txtphone" required onkeypress="javascript:return isNumber(event)" maxlength="10">

                                     <script>
                                         // WRITE THE VALIDATION SCRIPT.
                                         function isNumber(evt) {
                                             var iKeyCode = (evt.which) ? evt.which : evt.keyCode
                                             if (iKeyCode != 46 && iKeyCode > 31 && (iKeyCode < 48 || iKeyCode > 57))
                                                 return false;

                                             return true;
                                         }
                                    </script>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Gender</label>
                                    <div class="p-t-10">
                                        <label class="radio-container m-r-45">Male
                                            <%--<input type="radio" checked="checked" name="gender">--%>
                                            <asp:RadioButton ID="rbtnmale" runat="server" GroupName="a" />
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">Female
                                           <%-- <input type="radio" name="gender">--%>
                                                <asp:RadioButton ID="rbtnfemale" runat="server" GroupName="a" />
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Email</label>
                                    <input class="input--style-4" type="email" name="email" runat="server" id="txtemail" required onblur="validateEmail(this);">

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
                            </div>
                           
                        </div>
                        <div class="input-group">
                            <label class="label">Password</label>
                            <input class="input--style-4" type="text" name="create_password" runat="server" id="txtcreatepassword" pattern="(?=.*\d)(?=.*[a-z]).{6,}" title="Must contain at least one number,one lowercase letter, and at least 6 or more characters" required>
                            
                             <div id="message">
  <h3>Password must contain the following:</h3>
  <p id="letter" class="invalid">A <b>lowercase</b> letter</p>

  <p id="number" class="invalid">A <b>number</b></p>
  <p id="length" class="invalid">Minimum <b>8 characters</b></p>
</div>

                            <script>
                                var myInput = document.getElementById("txtcreatepassword");
                                var letter = document.getElementById("letter");

                                var number = document.getElementById("number");
                                var length = document.getElementById("length");

                                // When the user clicks on the password field, show the message box
                                myInput.onfocus = function () {
                                    document.getElementById("message").style.display = "block";
                                }

                                // When the user clicks outside of the password field, hide the message box
                                myInput.onblur = function () {
                                    document.getElementById("message").style.display = "none";
                                }

                                // When the user starts to type something inside the password field
                                myInput.onkeyup = function () {
                                    // Validate lowercase letters
                                    var lowerCaseLetters = /[a-z]/g;
                                    if (myInput.value.match(lowerCaseLetters)) {
                                        letter.classList.remove("invalid");
                                        letter.classList.add("valid");
                                    } else {
                                        letter.classList.remove("valid");
                                        letter.classList.add("invalid");
                                    }

                                    // Validate capital letters

                                    // Validate numbers
                                    var numbers = /[0-9]/g;
                                    if (myInput.value.match(numbers)) {
                                        number.classList.remove("invalid");
                                        number.classList.add("valid");
                                    } else {
                                        number.classList.remove("valid");
                                        number.classList.add("invalid");
                                    }

                                    // Validate length
                                    if (myInput.value.length >= 8) {
                                        length.classList.remove("invalid");
                                        length.classList.add("valid");
                                    } else {
                                        length.classList.remove("valid");
                                        length.classList.add("invalid");
                                    }
                                }
</script>  
      

                            </div>
                      
                           Show Password<input type="checkbox" onclick="myFunction()">
                        
                        <script>
                            function myFunction() {
                                var x = document.getElementById("txtcreatepassword");
                                if (x.type === "password") 
                                {
                                    x.type = "text";
                                }
                                else
                                {
                                    x.type = "password";
                                }
                            }
                            </script>
                          
                        <div class="p-t-15">
                            <%--<button class="btn btn--radius-2 btn--blue" type="submit">Submit</button>--%>
                           <asp:Button ID="Btnsubmit" runat="server" Text="Update" CssClass="btn btn--radius-2 btn--blue" OnClick="Btnsubmit_Click" />
                        </div>

                         
                        
                        <br />
                        
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->
