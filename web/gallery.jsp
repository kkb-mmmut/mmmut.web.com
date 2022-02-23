<%-- 
    Document   : gallery
    Created on : 10 Aug, 2021, 3:25:56 PM
    Author     : KAMLESH BIND
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- Favicon -->
        <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">

        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

        <!-- Site Metas -->
        <title>MMMUT::GALLERY</title>
        <meta name="keywords" content="MMMUT,MMMUT GORAKHPUR, best engineering college,kkb.mmmut@gmail,kamlesh developer,kamleshkumarbind"/>
        <meta name="description" content="MMMUT::GALLERY ">
        <meta name="author" content="MMMUT.AC.IN, ailcofficial.com/"/>

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

        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>

    <body id="inner_page" data-spy="scroll" data-target="#navbar-wd" data-offset="98">

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
                            <a class="navbar-brand" href="index.jsp"><img src="images/logo.png" alt="image"></a>
                        </div>
                        <div class="site_information">
                            <ul>
                                <li><a href="mailto:kkb.mmmut@gmail.com"><img src="images/mail_icon.png" alt="#" />kkb.mmmut@gmail.com</a></li>
                                <li><a href="tel:kkb.mmmut@gmail.com"><img src="images/phone_icon.png" alt="#" />+918112740805</a></li>
                                <li><a class="join_bt" href="#" onclick="document.getElementById('id01').style.display = 'block'">Login</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>
            <div class="header_bottom">
                <div class="container">
                    <div class="col-sm-12">
                        <div class="menu_orange_section" style="background: #00c4c7;">
                            <nav class="navbar header-nav navbar-expand-lg"> 
                                <div class="menu_section">
                                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-wd" aria-controls="navbar-wd" aria-expanded="false" aria-label="Toggle navigation">
                                        <span></span>
                                        <span></span>
                                        <span></span>
                                    </button>
                                    <div class="collapse navbar-collapse justify-content-end" id="navbar-wd">
                                        <ul class="navbar-nav">
                                            <li><a class="nav-link active" href="index.jsp">Home</a></li>
                                            <li><a class="nav-link" href="about.jsp">About</a></li>
                                            <li><a class="nav-link" href="academics.jsp">Academics</a></li>
                                            <li><a class="nav-link" href="faculty.jsp">Faculty</a></li>
                                            <li><a class="nav-link" href="register.jsp">Register</a></li>
                                            <li><a class="nav-link" href="contact.jsp">Contact</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </nav>
                            <div class="search-box">
                                <input type="text" class="search-txt" placeholder="Search">
                                <a class="search-btn">
                                    <img src="images/search_icon.png" alt="#" />
                                </a>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>

        </header>
     
    <!-- End header -->


    <!-- popup login page starts here -->


    <div id="id01" class="modal">

        <form id="log" action="generalcode/logincode.jsp" method="post" >
            <h1 id="ff-proof" class="ribbon"><span class="glow">login Panel</span>&nbsp;&nbsp;</h1>
            <div class="apple">
                <span class="close" onclick="document.getElementById('id01').style.display = 'none'">&times;</span> 

            </div>
            <fieldset id="inpts">
                <input id="username" name="userid"  type="text"  placeholder="User Id"/>
                <input id="password" name="password" type="text"  placeholder="Authorization Key"/>
            </fieldset>
            <fieldset id="acton">
                <input type="submit" id="submit" value="Authorize"/>
                <p class="option"><a href="#"><span class="forgot">Forgot password ??</span></a>&nbsp;&nbsp;|<a href="register.jsp"><span class="register"> Get Registered  </span></a></p>
            </fieldset>
        </form>
    </div>

    <script>
        // Get the modal
        var modal = document.getElementById('id01');

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>



    <!-- End of the popup login page -->


    <!-- Start Banner -->
    <div class="section inner_page_banner">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="banner_title">
                        <h3>Gallery</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Banner -->

    <!-- section -->
    <div class="section layout_padding">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="full">
                        <div class="heading_main text_align_center">
                            <h2><span class="theme_color">College</span> Album</h2>    
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="full services_blog">
                        <img class="img-responsive" src="images/gall1.png" alt="#" />
                        <h4>Fairwell Party</h4>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="full services_blog">
                        <img class="img-responsive" src="images/gall2.png" alt="#" />
                        <h4>Saraswati Puja</h4>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="full services_blog">
                        <img class="img-responsive" src="images/gall3.png" alt="#" />
                        <h4>Colleugues</h4>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="full services_blog">
                        <img class="img-responsive" src="images/gall4.png" alt="#" />
                        <h4>Tour Places</h4>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="full services_blog">
                        <img class="img-responsive" src="images/gall5.png" alt="#" />
                        <h4>Prize Distribution</h4>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="full services_blog">
                        <img class="img-responsive" src="images/gall6.png" alt="#" />
                        <h4>Photo Session</h4>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="full services_blog">
                        <img class="img-responsive" src="images/gall7.png" alt="#" />
                        <h4>Live Photo</h4>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="full services_blog">
                        <img class="img-responsive" src="images/gall8.png" alt="#" />
                        <h4>Final Year</h4>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="full services_blog">
                        <img class="img-responsive" src="images/gall9.png" alt="#" />
                        <h4>Yoga Day</h4>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="full services_blog">
                        <img class="img-responsive" src="images/gall10.png" alt="#" />
                        <h4>College Library</h4>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="full services_blog">
                        <img class="img-responsive" src="images/gall11.png" alt="#" />
                        <h4>Saraswati Vandana</h4>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="full services_blog">
                        <img class="img-responsive" src="images/gall12.png" alt="#" />
                        <h4>Boys Hostel</h4>
                    </div>
                </div>
            </div>
            <div class="row margin-top_30">
                <div class="col-sm-12">
                    <div class="full">
                        <div class="center">
                            <a class="main_bt" href="#">See More ></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end section -->

    <!-- Start Footer -->
    <footer class="footer-box">
        <div class="container">
            <div class="row">
                <div class="col-md-12 white_fonts">
                    <div class="row">
                        <div class="col-sm-6 col-md-6 col-lg-3">
                            <div class="full">
                                <img class="img-responsive" src="images/footer_logo.png" alt="#" />
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-6 col-lg-3">
                            <div class="full">
                                <h3>Quick Links</h3>
                            </div>
                            <div class="full">
                                <ul class="menu_footer">
                                    <li><a href="index.jsp">> Home</a></li>
                                    <li><a href="about.jsp">> About</a></li>
                                    <li><a href="academics.jsp">> Academics</a></li>
                                    <li><a href="faculty.jsp">> Faculty</a></li>
                                    <li><a href="gallery.jsp">> Gallery</a></li>
                                    <li><a href="contact.jsp">> Contact</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-6 col-lg-3">
                            <div class="full">
                                <div class="footer_blog full white_fonts">
                                    <h3>Newsletter</h3>
                                    <p>Madan Mohan Malviya University of Technology , Gorakhpur</p>
                                    <div class="newsletter_form">
                                        <form action="generalcode/subcriptioncode.jsp" method="post">
                                            <input type="email" placeholder="Your Email" name="emailaddress" required="">
                                            <button>Submit</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-6 col-lg-3">
                            <div class="full">
                                <div class="footer_blog full white_fonts">
                                    <h3>Contact us</h3>
                                    <ul class="full">
                                        <li><img src="images/i5.png"><span>Deoria Road, Singhariya, Kunraghat, Gorakhpur, Uttar Pradesh 273016,PCJM+H7</span></li>
                                        <li><img src="images/i6.png"><span>kkb.mmmut@gmail.com</span></li>
                                        <li><img src="images/i7.png"><span> +91-9450909056</span></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- End Footer -->

    <div class="footer_bottom">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <p class="crp"><b>© Copyrights to MMMUT-GORAKHPUR&trade; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  :: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2021 design & developed by KAMLESH KUMAR BIND<b></p>
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

                                </body>

                                </html>