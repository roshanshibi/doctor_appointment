<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminpanel.aspx.cs" Inherits="Doctor_Appointment_System.adminpanel" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>Dashboard</title>

    <!-- Fontfaces CSS-->
    <link href="Admin/css/font-face.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="Admin/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="Admin/vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="Admin/css/theme.css" rel="stylesheet" media="all">
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



    </style>

</head>

<body class="animsition">
    <div class="page-wrapper">
        <!-- HEADER MOBILE-->
        <header class="header-mobile d-block d-lg-none">
            <div class="header-mobile__bar">
                <div class="container-fluid">
                    <div class="header-mobile-inner">
                        <a class="logo">
                            <img src="Admin/images/icon/admin-logo-png-6.png" width:"10px" height:"10px" />
                        </a>
                        <button class="hamburger hamburger--slider" type="button">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
            <nav class="navbar-mobile">
                <div class="container-fluid">
                    <ul class="navbar-mobile__list list-unstyled">
                        <li class="has-sub">
                            <a class="js-arrow" href="adminpanel.aspx">
                                <i class="fas fa-tachometer-alt"></i>Dashboard</a>
                            
                        </li>
                        <li>
                            <a href="chart.html">
                                <i class="fas fa-chart-bar"></i>Charts</a>
                        </li>
                        <li>
                            <a href="table.html">
                                <i class="fas fa-table"></i>Tables</a>
                        </li>
                        <li>
                            <a href="form.html">
                                <i class="far fa-check-square"></i>Forms</a>
                        </li>
                        <li>
                            <a href="calendar.html">
                                <i class="fas fa-calendar-alt"></i>Calendar</a>
                        </li>
                        <li>
                            <a href="map.html">
                                <i class="fas fa-map-marker-alt"></i>Maps</a>
                        </li>
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-copy"></i>Pages</a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="login.html">Login</a>
                                </li>
                                <li>
                                    <a href="register.html">Register</a>
                                </li>
                                <li>
                                    <a href="forget-pass.html">Forget Password</a>
                                </li>
                            </ul>
                        </li>
                        <li class="has-sub">
                            <a class="js-arrow" href="index.aspx">
                                <i class="fas fa-desktop"></i>Home</a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="button.html">Button</a>
                                </li>
                                <li>
                                    <a href="badge.html">Badges</a>
                                </li>
                                <li>
                                    <a href="tab.html">Tabs</a>
                                </li>
                                <li>
                                    <a href="card.html">Cards</a>
                                </li>
                                <li>
                                    <a href="alert.html">Alerts</a>
                                </li>
                                <li>
                                    <a href="progress-bar.html">Progress Bars</a>
                                </li>
                                <li>
                                    <a href="modal.html">Modals</a>
                                </li>
                                <li>
                                    <a href="switch.html">Switchs</a>
                                </li>
                                <li>
                                    <a href="grid.html">Grids</a>
                                </li>
                                <li>
                                    <a href="fontawesome.html">Fontawesome Icon</a>
                                </li>
                                <li>
                                    <a href="typo.html">Typography</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- END HEADER MOBILE-->

        <!-- MENU SIDEBAR-->
        <aside class="menu-sidebar d-none d-lg-block">
            <div class="logo">
                <a href="#">
                    <img src="Admin\images\icon\admin-logo-png-6.png" width="70" height="70" alt="Admin" />
                </a>
            </div>



            <div class="menu-sidebar2__content js-scrollbar12">
                <nav class="navbar-sidebar2">
                    <ul class="list-unstyled navbar__list">


                        <li class="has-sub">
                            <a class="js-arrow" href="adminpanel.aspx">
                                <i class="fas fa-tachometer-alt"></i>Dashboard</a>
                          
                        </li>



                           <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fa fa-user-md"></i> Doctor<span class="arrow">
                                        <i class="fas fa-angle-down"></i>
                                    </span></a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="doctorregister.aspx">Register</a>
                                </li>
                                  <li>
                                    <a href="viewregistereddoctors.aspx">Registered doctors</a>
                                </li>
                               
                                
                            
                            </ul>
                        </li>


                     
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fa fa-book"></i> Departments<span class="arrow">
                                        <i class="fas fa-angle-down"></i>
                                    </span></a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="viewdept.aspx">View</a>
                                </li>
                                <li>
                                    <a href="deptadd.aspx">Add</a>
                                </li>
                            
                            </ul>
                        </li>




                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fa fa-users"></i>Patients<span class="arrow">
                                        <i class="fas fa-angle-down"></i>
                                    </span></a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="listofusers.aspx">List of patients</a>
                                </li>
                                <li>
                                    <a href="listofbookings.aspx">Appointments</a>
                                </li>
                            
                            </ul>
                        </li>




                        <li class="has-sub">
                            <a class="js-arrow" href="send_message.aspx">
                                <i class="fa fa-comment"></i>Messages</a>
                          
                        </li>



                                           
                    </ul>
                </nav>
            </div>
        </aside>
        <!-- END MENU SIDEBAR-->

        <!-- PAGE CONTAINER-->
        <div class="page-container">
            <!-- HEADER DESKTOP-->
            <header class="header-desktop">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="header-wrap">
                            <form class="form-header" action="" method="POST">
                               
                            </form>
                            <div class="header-button">
                                <div class="noti-wrap">
                                    <div class="noti__item js-item-menu">
                                       
                                        
                                      
                                    </div>
                                    <div class="noti__item js-item-menu">
                                        <i class="zmdi zmdi-email"></i>  Feedbacks
                                      
                                        <div class="email-dropdown js-dropdown">
                                            <div class="email__title">
                                                <p>You have new messages</p>
                                            </div>
                                            <div class="email__item">
                                                <div class="image img-cir img-40">
                                                    <img src="Admin/images/icon/users.png" alt="Cynthia Harvey" />
                                                </div>
                                                <div class="content">
                                                    <a href="viewfeedback.aspx"><p>Patients</p></a>
                                                  
                                                </div>
                                            </div>
                                            <div class="email__item">
                                                <div class="image img-cir img-40">
                                                    <img src="Admin/images/icon/doctorlogo.png" alt="Cynthia Harvey" />
                                                </div>
                                                <div class="content">
                                                    <a href="viewfeeddoctor.aspx"><p>Doctors</p></a>
                                                   
                                                </div>
                                            </div>
                                            <div class="email__item">
                                                
                                                
                                            </div>
                                          
                                        </div>
                                    </div>
                                    <%--<div class="noti__item js-item-menu">
                                        <i class="zmdi zmdi-notifications"></i>
                                        <span class="quantity">3</span>
                                        <div class="notifi-dropdown js-dropdown">
                                            <div class="notifi__title">
                                                <p>You have 3 Notifications</p>
                                            </div>
                                            <div class="notifi__item">
                                                <div class="bg-c1 img-cir img-40">
                                                    <i class="zmdi zmdi-email-open"></i>
                                                </div>
                                                <div class="content">
                                                    <p>You got a email notification</p>
                                                    <span class="date">April 12, 2018 06:50</span>
                                                </div>
                                            </div>
                                            <div class="notifi__item">
                                                <div class="bg-c2 img-cir img-40">
                                                    <i class="zmdi zmdi-account-box"></i>
                                                </div>
                                                <div class="content">
                                                    <p>Your account has been blocked</p>
                                                    <span class="date">April 12, 2018 06:50</span>
                                                </div>
                                            </div>
                                            <div class="notifi__item">
                                                <div class="bg-c3 img-cir img-40">
                                                    <i class="zmdi zmdi-file-text"></i>
                                                </div>
                                                <div class="content">
                                                    <p>You got a new file</p>
                                                    <span class="date">April 12, 2018 06:50</span>
                                                </div>
                                            </div>
                                            <div class="notifi__footer">
                                                <a href="#">All notifications</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>--%>
                                    
                                <div class="account-wrap">
                                    <div class="account-item clearfix js-item-menu">
                                        <div class="image">
                                            <img src="Admin/images/icon/adminimg.png" alt="Roshan Shibi" />
                                        </div>
                                        <div class="content">
                                            <a class="js-acc-btn" href="#">Administrator</a>
                                        </div>
                                        <div class="account-dropdown js-dropdown">
                                            <div class="info clearfix">
                                                <div class="image">
                                                    <a href="#">
                                                        <img src="Admin/images/icon/adminimg.png" alt="Roshan Shibi" />
                                                    </a>
                                                </div>
                                                <div class="content">
                                                    <h5 class="name">
                                                        <a href="#">Administrator</a>
                                                    </h5>
                                                    <span class="email">admin@gmail.com</span>
                                                </div>
                                            </div>
                                            <div class="account-dropdown__body">
                                             
                                                
                                               
                                            </div>
                                            <div class="account-dropdown__footer">
                                                <a href="Patientlogin.aspx">
                                                    <i class="zmdi zmdi-power"></i>Logout</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- HEADER DESKTOP-->









            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="overview-wrap">
                                    <h2 class="title-1">overview</h2>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="row m-t-25">
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c1">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-account-o"></i>
                                            </div>
                                            <div class="text">
                                                <asp:Label ID="txtcount" runat="server"><h2>4368</h2></asp:Label>
                                                <span>Users</span>
                                            </div>
                                        </div>
                                        <div class="overview-chart">
                                            <canvas id="widgetChart1"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c2">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-account-o"></i>
                                            </div>
                                            <div class="text">
                                               <asp:Label ID="lbldoccount" runat="server"> <h2>3,688</h2></asp:Label>
                                                <span>Doctors</span>
                                            </div>
                                        </div>
                                        <div class="overview-chart">
                                            <canvas id="widgetChart2"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c3">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-calendar-note"></i>
                                            </div>
                                            <div class="text">
                                                <asp:Label ID="lblappcount" runat="server"><h2>1,086</h2></asp:Label>
                                                <span>Appointments</span>
                                            </div>
                                        </div>
                                        <div class="overview-chart">
                                            <canvas id="widgetChart3"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c1">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-file-text"></i>
                                            </div>
                                            <div class="text">
                                                <asp:Label ID="lbldeptcount" runat="server"><h2>4368</h2></asp:Label>
                                                <span>Departments</span>
                                            </div>
                                        </div>
                                        <div class="overview-chart">
                                            <canvas id="widgetChart4"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                          
                        </div>
                        
                       
                          
                 
                        <div class="row">
                            <div class="col-md-12">
                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END MAIN CONTENT-->
            <!-- END PAGE CONTAINER-->
        </div>

    </div>

    <!-- Jquery JS-->
    <script src="Admin/vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="Admin/vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="Admin/vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="Admin/vendor/slick/slick.min.js">
    </script>
    <script src="Admin/vendor/wow/wow.min.js"></script>
    <script src="Admin/vendor/animsition/animsition.min.js"></script>
    <script src="Admin/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="Admin/vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="Admin/vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="Admin/vendor/circle-progress/circle-progress.min.js"></script>
    <script src="Admin/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="Admin/vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="Admin/vendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="Admin/js/main.js"></script>

</body>

</html>
<!-- end document-->
