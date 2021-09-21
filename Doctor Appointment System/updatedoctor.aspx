<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updatedoctor.aspx.cs" Inherits="Doctor_Appointment_System.updatedoctor" %>

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


          <style>
        .dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  padding: 12px 16px;
  z-index: 1;
}

.dropdown:hover .dropdown-content {
  display: block;
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

        .button {
  background:#000000;
  border-radius: 100px;
  padding: 20px 60px;
  color:white;
  text-decoration: none;
  font-size: 1.45em;
  margin: 0 15px;
}

   



    </style>
  </head>
   
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
      <form runat="server">
  	
    
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
	          
	          <li class="nav-item"><a href="#contact-section" class="nav-link"><span>Contact</span></a></li>
             
	          <li class="nav-item cta mr-md-2"><a href="viewappdoctor.aspx" class="nav-link">View appointments</a></li>
	        </ul>
	      </div>
	    </div>
    
	  </nav>
      <br />
          <br />
          <br />
          <br />



           <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-header">Doctor</div>
                                    <div class="card-body">
                                        <div class="card-title">
                                            <h3 class="text-center title-2">Profile</h3>
                                        </div>
                                        <hr>


                                       
                                            <div class="form-group">
                                                <label for="cc-payment" class="control-label mb-1">Name</label>
                                                <input id="txtname" runat="server" name="cc-payment" type="text" class="form-control" aria-required="true" aria-invalid="false" required>
                                            </div>
                                            <div class="form-group has-success">
                                                <label for="cc-name" class="control-label mb-1">Email id</label>
                                                <input id="txtemailid" runat="server" name="cc-name" type="text" class="form-control cc-name valid" data-val="true" data-val-required="Please enter the name on card"
                                                    autocomplete="cc-name" aria-required="true" aria-invalid="false" aria-describedby="cc-name-error" required onblur="validateEmail(this);">
                                                <span class="help-block field-validation-valid" data-valmsg-for="cc-name" data-valmsg-replace="true"></span>
                                                 <script>
                                                     function validateEmail(txtemailid) {
                                                         var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

                                                         if (reg.test(txtemailid.value) == false) {
                                                             alert('Invalid Email Address');
                                                             return false;
                                                         }

                                                         return true;

                                                     }
                                    </script>
                                            </div>
                                            <div class="form-group has-success">
                                                <label for="cc-name" class="control-label mb-1">Address</label>
                                                <input id="txtaddress" runat="server" name="cc-name" type="text" class="form-control cc-name valid" data-val="true" data-val-required="Please enter the name on card"
                                                    autocomplete="cc-name" aria-required="true" aria-invalid="false" aria-describedby="cc-name-error">
                                                <%--<span class="help-block field-validation-valid" data-valmsg-for="cc-name" data-valmsg-replace="true"></span>--%>
                                            </div>
                                            <div class="form-group">
                                                <label for="cc-number" class="control-label mb-1">Phone</label>
                                                <input id="txtphone" runat="server" name="cc-number" type="tel" class="form-control cc-number identified visa" value="" data-val="true"
                                                    data-val-required="Please enter the card number" data-val-cc-number="Please enter a valid card number"
                                                    autocomplete="cc-number" onkeypress="javascript:return isNumber(event)" maxlength="10" required>
                                                <span class="help-block" data-valmsg-for="cc-number" data-valmsg-replace="true"></span>

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
                                             <div class="form-group has-success">
                                                <label for="cc-name" class="control-label mb-1">Age</label>
                                                <input id="txtage" runat="server" name="cc-name" type="text" class="form-control cc-name valid" data-val="true" data-val-required="Please enter the name on card"
                                                    autocomplete="cc-name" aria-required="true" aria-invalid="false" aria-describedby="cc-name-error" onkeypress="javascript:return isNumber(event)" required>
                                                <span class="help-block field-validation-valid" data-valmsg-for="cc-name" data-valmsg-replace="true"></span>

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
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label class=" form-control-label">Gender</label>
                                                </div>
                                                <div class="col col-md-9">
                                                    <div class="form-check">
                                                        <div class="radio">
                                                            <label for="radio1" class="form-check-label ">
                                                                <input type="radio" runat="server" id="rbtnmale" name="radios" value="option1" class="form-check-input">Male
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label for="radio2" class="form-check-label ">
                                                                <input type="radio" runat="server" id="rbtnfemale" name="radios" value="option2" class="form-check-input">Female
                                                            </label>
                                                        </div>
                                         
                                                    </div>
                                                </div>
                                            </div>
                                     
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="select" class=" form-control-label">Department</label>
                                                </div>
                                                
                                                <div class="col-12 col-md-9">
                                             <asp:DropDownList ID="txtdepartment" runat="server">
                                                 <asp:ListItem>Please select</asp:ListItem>
                                                 <asp:ListItem>Neurology</asp:ListItem>
                                                 <asp:ListItem>Ophthalmology</asp:ListItem>
                                                 <asp:ListItem>Urology</asp:ListItem>
                                                 <asp:ListItem>Dental</asp:ListItem>
                                                 <asp:ListItem>Dermatology</asp:ListItem>
                                                 <asp:ListItem>Cardiology</asp:ListItem>
                                                 <asp:ListItem>Pediatrics</asp:ListItem>
                                                 <asp:ListItem>Traumatology</asp:ListItem>
                                                  
                                             </asp:DropDownList>
                                            </div>
                                                </div>
                                                  <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="select" class=" form-control-label">Time in</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                              

                                                     <asp:DropDownList ID="DropDownList1"  runat="server">
                                                         <asp:ListItem>1</asp:ListItem>
                                                         <asp:ListItem>2</asp:ListItem>
                                                         <asp:ListItem>3</asp:ListItem>
                                                         <asp:ListItem>4</asp:ListItem>
                                                         <asp:ListItem>5</asp:ListItem>
                                                         <asp:ListItem>6</asp:ListItem>
                                                         <asp:ListItem>7</asp:ListItem>
                                                         <asp:ListItem>8</asp:ListItem>
                                                         <asp:ListItem>9</asp:ListItem>
                                                         <asp:ListItem>10</asp:ListItem>
                                                         <asp:ListItem>11</asp:ListItem>
                                                         <asp:ListItem>12</asp:ListItem>
                                                          
                                                     </asp:DropDownList>

                                                    
                                              <asp:DropDownList ID="DropDownList2" runat="server">
                                                  <asp:ListItem>AM</asp:ListItem>
                                                  <asp:ListItem>PM</asp:ListItem>
                                              </asp:DropDownList>
                                                </div>
                                            </div>
                                            
                                           
                                                 <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="select" class=" form-control-label">Time out</label>
                                                </div>
                                                <div class="col-12 col-md-9" >
                                                  

                                                  <asp:DropDownList ID="DropDownList3" runat="server">
                                                       <asp:ListItem>1</asp:ListItem>
                                                         <asp:ListItem>2</asp:ListItem>
                                                         <asp:ListItem>3</asp:ListItem>
                                                         <asp:ListItem>4</asp:ListItem>
                                                         <asp:ListItem>5</asp:ListItem>
                                                         <asp:ListItem>6</asp:ListItem>
                                                         <asp:ListItem>7</asp:ListItem>
                                                         <asp:ListItem>8</asp:ListItem>
                                                         <asp:ListItem>9</asp:ListItem>
                                                         <asp:ListItem>10</asp:ListItem>
                                                         <asp:ListItem>11</asp:ListItem>
                                                         <asp:ListItem>12</asp:ListItem>
                                                  </asp:DropDownList>
                                                    
                                           
                                                    <asp:DropDownList ID="DropDownList4" runat="server">
                                                  <asp:ListItem>AM</asp:ListItem>
                                                  <asp:ListItem>PM</asp:ListItem>
                                              </asp:DropDownList>


                                               
                                                </div>
                                                
                                            </div>
                                           <div class="form-group has-success">
                                                <label for="cc-name" class="control-label mb-1">Location</label>
                                                <input id="txtlocation" runat="server" name="cc-name" type="text" class="form-control cc-name valid" data-val="true" data-val-required="Please enter the name on card"
                                                    autocomplete="cc-name" aria-required="true" aria-invalid="false" aria-describedby="cc-name-error">
                                                <span class="help-block field-validation-valid" data-valmsg-for="cc-name" data-valmsg-replace="true"></span>
                                            </div>
                                                
                                            <style>
                                                .wwi{
                                                    width:50%;
                                                }
                                            </style>
                                              
                                            <div class="row">
                                                <%--<div class="col-12">
                                                    <div class="form-group">
                                                        <label for="cc-exp" class="control-label mb-1">Expiration</label>
                                                        <input id="cc-exp" name="cc-exp" type="tel" class="form-control cc-exp" value="" data-val="true" data-val-required="Please enter the card expiration"
                                                            data-val-cc-exp="Please enter a valid month and year" placeholder="MM / YY"
                                                            autocomplete="cc-exp">
                                                        <span class="help-block" data-valmsg-for="cc-exp" data-valmsg-replace="true"></span>
                                                    </div>
                                                </div>--%>
                                                <div class="col-12">
                                                    <label for="x_card_code" class="control-label mb-1">Create password</label>
                                                    <div class="input-group">
                                                        <input id="txtpass" runat="server" name="x_card_code" type="tel" class="form-control cc-cvc" value="" data-val="true" data-val-required="Please enter the security code"
                                                            data-val-cc-cvc="Please enter a valid security code" autocomplete="off" pattern="(?=.*\d)(?=.*[a-z]).{6,}" title="Must contain at least one number and one lowercase letter, and at least 6 or more characters" required>

                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <%--<button id="payment-button" type="submit" class="btn btn-lg btn-info btn-block">
                                                    <i class="fa fa-lock fa-lg"></i>&nbsp;
                                                    <span id="payment-button-amount">Save</span>
                                                    <span id="payment-button-sending" style="display:none;">Sending…</span>
                                                </button>--%>
                                                  <asp:Button ID="btnsave" runat="server" Text="Update" CssClass="btn btn-lg btn-info btn-block" OnClick="btnsave_Click"   />

                                                 <div id="message">
                                                            <h3>Password must contain the following:</h3>
                                                             <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
                                                             <p id="number" class="invalid">A <b>number</b></p>
                                                             <p id="length" class="invalid">Minimum <b>8 characters</b></p>
                                                 </div>

                            <script>
                                var myInput = document.getElementById("txtpass");
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
                                        
                                    </div>
                                </div>



                                
                    
                            </div>
                            </form>
                            


      </body></html>