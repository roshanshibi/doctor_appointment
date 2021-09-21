<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="appointment.aspx.cs" Inherits="Doctor_Appointment_System.appointment" %>

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

.shine {
  height: 20px;
  width: 60%;
  background-image: radial-gradient(
    farthest-side at 50% -50%,
    hsla(0, 0%, 0%, 0.5),
    hsla(0, 0%, 0%, 0));
  position: relative; 
}

.shine::before {
  height: 1px;
  position: absolute;
  top: -1px;
  left: 0;
  right: 0;
  background-image: linear-gradient(
    90deg,
    hsla(0, 0%, 0%, 0),
    hsla(0, 0%, 0%, 0.75) 50%,
    hsla(0, 0%, 0%, 0));
}
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



      </style>
  </head>
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
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
	          <li class="nav-item"><a href="index.aspx" class="nav-link"><span>Home</span></a></li>
	          
                <li class="nav-item"><a href="messages.aspx" class="nav-link"><span>Messages</span></a></li>
                <li class="nav-item"><a href="updatepatient.aspx" class="nav-link"><span>My profile</span></a></li>
	          <li class="nav-item cta mr-md-2"><a runat="server" href="currentbookings.aspx" class="button button1"> My Appointments</a></li>
	        
	          
	           
	        </ul>

	      </div>
            
	    </div>
       
	  </nav>
      
       <br />
        <br />
            <br />
            <br />
       <hr class="shine">
       <form runat="server">
             <div class="card-body card-block">
                                       
                                            <div class="row form-group">
                                                <div class="col col-md-12">
                                                    <div class="input-group">
                                                        <div class="input-group-btn">
                                                          
                                                                <i class="fa fa-search"> 
                                                                    <asp:Button ID="btnsearchdoctor" class="fa fa-search" CssClass="btn btn-primary"  runat="server" Text="Search" OnClick="btnsearchdoctor_Click"/></i> 
                                                           
                                                       
                                                        </div>
                                                        <asp:TextBox ID="txtsearchdoctor" CssClass="form-control" placeholder="Search by name or department" runat="server"></asp:TextBox>
                                                       <%-- <input type="text" id="txtsearchdoctor" runat="server" name="input1-group2" placeholder="Name" class="form-control">--%>
                                                    </div>
                                                </div>
                                            </div>
   
     
           
                <asp:GridView ID="GridView1" runat="server" DataKeyNames="Id" CssClass="datatable table table-hover table-center mb-0" AutoGenerateColumns="False"  CellPadding="4" ForeColor="#333333" GridLines="None" OnRowEditing="GridView1_RowEditing">
                                        <AlternatingRowStyle BackColor="White"  />
                                        <Columns>
                                            <asp:TemplateField HeaderText="Id">
                                                <ItemTemplate >
                                                    <asp:Label ID="lblId" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Name">
                                                <ItemTemplate >
                                                    <asp:Label ID="lblname" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                               <asp:TemplateField HeaderText="Department">
                                                <ItemTemplate >
                                                    <asp:Label ID="lbldepartment" runat="server" Text='<%# Eval("Deptname") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Date">
                                                <ItemTemplate>
                                                    <asp:TextBox ID="txtdate" TextMode="Date"  Text='<%# Bind("Date") %>' runat="server">
                                                    </asp:TextBox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                          <asp:TemplateField HeaderText="Time in">
                                                <ItemTemplate >
                                                    <asp:Label ID="lbltimein" runat="server" Text='<%# Eval("Timein") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                               <asp:TemplateField HeaderText="Time out">
                                                <ItemTemplate >
                                                    <asp:Label ID="lbltimeout" runat="server" Text='<%# Eval("Timeout") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Location">
                                                <ItemTemplate >
                                                    <asp:Label ID="lbllocation" runat="server" Text='<%# Eval("Location") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                              <asp:TemplateField HeaderText="Phone">
                                                <ItemTemplate >
                                                    <asp:Label ID="lblphone" runat="server" Text='<%# Eval("Phone") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Gender">
                                                <ItemTemplate >
                                                    <asp:Label ID="lblgender" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                                                   
                                                </ItemTemplate>
                                               
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Email">
                                                <ItemTemplate >
                                                    <asp:Label ID="lblemail" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                         
                                           
                                            <asp:TemplateField >
                                                <ItemTemplate >
                                                   <asp:ImageButton ID="imgbook" runat="server" CommandName="Edit" ImageUrl="Admin/images/book1.png" Width="100px" Height="40px" OnClientClick="return confirm('Are you sure you want to book this appointment?');" AlternateText="Book" />
                                                   

                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <EditRowStyle BackColor="#2461BF" />
                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#EFF3FB" />
                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                    </asp:GridView>
    

           </div>
         </form>
       
    
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
      </body>
    </html>