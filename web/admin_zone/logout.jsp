<%-- 
    Document   : logout
    Created on : 10 Aug, 2021, 8:01:03 PM
    Author     : KAMLESH BIND
--%>
<%
    
    session.invalidate();
    
    
 %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<!-- Basic -->

<head>
         <script>
            function logout()
            {
                window.history.forward();
                window.setTimeout("window.location.href='../index.jsp'",1000);
            }
            
        </script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Favicon -->
    <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <!-- Site Metas -->
    <title>MMMUT::ADMIN: LOGOUT</title>
    <meta name="keywords"
        content="SRGP,SRGP CHANDAULI, best polytechnic college, srgp chakiya chandauli,polytechnic in dhanapur, polytechnic in chakiya chandauli, polytechnic in chandauli,kamleshtech@gmail,kamlesh developer,kamleshkumarbind" />
    <meta name="description" content=" SRGP::CHANDAULI : HOME ">
    <meta name="author" content="srgpchandauli.ac.in, getkamleshtech.in/" />

    <!-- Site Icons -->
    <link rel="shortcut icon" href="#" type="image/x-icon" />
    <link rel="apple-touch-icon" href="#" />
    <link href="https://fonts.googleapis.com/css2?family=Bungee+Inline&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Orbitron&display=swap" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- Pogo Slider CSS -->
    <link rel="stylesheet" href="css/pogo-slider.min.css" />
    <!-- Site CSS -->
    <link rel="stylesheet" href="css/style.css" />
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css" />
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css" />
    <link rel="stylesheet" href="style.css" />

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->


<style>
// google font subsetting, see Heydon Pickering's: http://www.sitepoint.com/joy-of-subsets-web-fonts/
@import url('//fonts.googleapis.com/css?family=Pacifico&text=Pure');
@import url('//fonts.googleapis.com/css?family=Roboto:700&text=css');
@import url('//fonts.googleapis.com/css?family=Kaushan+Script&text=!');

body { 
  min-height: 450px;
  height: 100vh;
  margin: 0;
  background: radial-gradient(circle, darken(dodgerblue, 10%), #1f4f96, #1b2949, #aaa);
}

.stage {
  height: 400px;
  width: 100%;
  margin: auto;
  position: absolute;
  top: 0; right: 0; bottom: 0; left: 0;
  perspective:  9999px;
  transform-style: preserve-3d;
}

.layer {
  width: 100%;
  height: 100%;
  position: absolute;
  transform-style: preserve-3d;
  animation: ಠ_ಠ 5s infinite alternate ease-in-out -7.5s;
  animation-fill-mode: forwards;
  transform: rotateY(40deg) rotateX(33deg) translateZ(0);
}

.layer:after {
  font: 8vw 'Pacifico', 'Kaushan Script', Futura, 'Roboto', 'Trebuchet MS', Helvetica, sans-serif;
  content: 'Session Expire  \a    Logging out!';
  white-space: pre;
  text-align: center;
  height: 100%;
  width: 100%;
  position: absolute;
  top: 50px; 
  color: darken(#fff, 4%);
  letter-spacing: -2px;
  text-shadow: 4px 0 10px hsla(0, 0%, 0%, .13);
}
 

.layer:last-child:after {
  -webkit-text-stroke: 17px hsla(0, 0%, 0%, .1);
}

.layer:first-child:after{
  color: #fff;
  text-shadow: none;
}

@keyframes ಠ_ಠ {
  100% { transform: rotateY(-40deg) rotateX(-43deg); }
}


</style>
 

</head>

<body id="inner_page" data-spy="scroll" data-target="#navbar-wd" data-offset="98" onload="logout()" >

    <!-- LOADER -->
    <div id="preloader">
        <div class="loader">
            <img src="images/loader.gif" alt="#" />
        </div>
    </div>
    <!-- end loader -->
    <!-- END LOADER -->

    <!-- Start header -->
    <header class="top-header">
        <div class="header_top">

            <div class="container">
                <div class="row">
                    <div class="logo_section">
                        <a class="navbar-brand" href="index.html"><img src="images/logo.png" alt="image"></a>
                    </div>
                    <div class="site_information">
                        <ul>
                            <li><a href="mailto:getkamleshtech@gmail.com"><img src="images/mail_icon.png"
                                        alt="#" />kamleshtech@gmail.com</a></li>
                            <li><a href="tel:getkamleshtech@gmail.com"><img src="images/phone_icon.png"
                                        alt="#" />+918112740805</a></li>
                            <li><a class="join_bt hover-btn-new log orange" href="#"  href="#" data-toggle="modal" data-target="#login"
                                     onclick="openlogin()">Login In</a></li>
                        </ul>
                    </div>
                </div>
            </div>

        </div> 
    </header>
    <!-- End header -->
  
	
	<div class="constainer" style="min-height:570px;margin:0 auto;">
	
	 				<div class="stage">
				  <div class="layer"></div>
				  <div class="layer"></div>
				  <div class="layer"></div>
				  <div class="layer"></div>
				  <div class="layer"></div>
				  <div class="layer"></div>
				  <div class="layer"></div>
				  <div class="layer"></div>
				  <div class="layer"></div>
				  <div class="layer"></div>
				  <div class="layer"></div>
				  <div class="layer"></div>
				  <div class="layer"></div>
				  <div class="layer"></div>
				  <div class="layer"></div>
				  <div class="layer"></div>
				  <div class="layer"></div>
				  <div class="layer"></div>
				  <div class="layer"></div>
				  <div class="layer"></div>
				</div>
 
	</div>
 
    <!-- Start Footer -->
     

    <div class="footer_bottom">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <p class="crp"><b>© Copyrights to SRGP-CHANDAULI&trade; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ::
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2020 design & developed by KAMLESH KUMAR BIND<b></p>
                </div>
            </div>
        </div>
    </div>

    <a href="#" id="scroll-to-top" class="hvr-radial-out"><i class="fa fa-angle-up"></i></a>
    

    <!-- ALL JS FILES -->
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/jquery.pogo-slider.min.js"></script>
    <script src="js/slider-index.js"></script>
    <script src="js/smoothscroll.js"></script>
    <script src="js/form-validator.min.js"></script>
    <script src="js/contact-form-script.js"></script>
    <script src="js/isotope.min.js"></script>
    <script src="js/images-loded.min.js"></script>
    <script src="js/custom.js"></script>


    <!-- end of registration_form -->
    <!-- Jquery JS-->
    <script src="reg_material/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="reg_material/select2/select2.min.js"></script>
    <script src="reg_material/datepicker/moment.min.js"></script>
    <script src="reg_material/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="reg_material/js/global.js"></script>

</body>

</html>