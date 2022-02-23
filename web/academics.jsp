<%-- 
    Document   : academics
    Created on : 10 Aug, 2021, 3:22:07 PM
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
        <title>MMMUT::ACADEMICS</title>
        <meta name="keywords" content="MMMUT,MMMUT GORAKHPUR, best engineering college,kkb.mmmut@gmail,kamlesh developer,kamleshkumarbind"/>
        <meta name="description" content="MMMUT::ACADEMICS ">
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
                            <h3>Academics</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Banner -->

        <!-- section -->
        <div class="section layout_padding about_bg">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="full paddding_left_15">
                            <div class="heading_main text_align_left">
                                <h2><span class="theme_color">Explore & </span> Study</h2>    
                            </div>
                        </div>
                        <div class="full paddding_left_15">
                            <p> Academic integrity
                                Accountability with transparency, respect and tolerance for views of all stake holders.
                                Concern for social responsibilities and attention to all national/international issues needing technological intervention.
                                Recognition of creativity and intellectual excellence.
                                Spirit of learning, exploration, innovation and enterprise.
                                All round understanding and knowledge of human sciences.
                            </p></div>
                        <div class="full paddding_left_15">
                            <a class="main_bt" href="#">Read more ></a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="full text_align_right_img">
                            <img src="images/aboutclg.png" alt="#" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end section -->

        <!-- Feature section Starts here -->
        <div class="section white_fonts" style="background: #2a2a2a;">
            <div class="section layout_padding about_bg">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="full">
                                <div class="heading_main text_align_center">
                                    <h2><span class="theme_color">Feature </span> Lists</h2>  
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="full text_align_center">
                                <div class="item-inner"> 
                                    <i class="fa fa-paper-plane-o fa-4x icon-round-border" ></i> <br><br>
                                    <h2 class="item-title">QUALITY EDUCATION</h2><br>
                                    <div class="item-desc"> 
                                        The Institute insists on developing students into efficient technocrats in their selected pursuits by guiding them to build their insights, abilities ways of right thinking. 
                                    </div><br> 
                                    <a class="start_feature_bt" href="contact.jsp">Ask Expert ></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="full text_align_center"> 
                                <i class="fa fa-magic fa-4x icon-round-border" ></i> <br><br>
                                <h2 class="item-title">SYSTEMATIC APPROACH</h2><br>
                                <div class="item-desc">
                                    The Institute insists on developing students into efficient technocrats in their selected pursuits by guiding them to build their insights, abilities ways of right thinking. 
                                </div><br>
                                <a class="start_feature_bt" href="contact.jsp">Ask Expert ></a>
                            </div>
                        </div>

                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="full text_align_center">
                                <i class="fa fa-bolt fa-4x icon-round-border" ></i> <br><br>
                                <h2 class="item-title">ONE TO OWN STUDY</h2><br>
                                <div class="item-desc">
                                    The Institute insists on developing students into efficient technocrats in their selected pursuits by guiding them to build their insights, abilities ways of right thinking.
                                </div><br>
                                <a class="start_feature_bt" href="contact.jsp">Ask Expert ></a>
                            </div> 
                        </div> 
                    </div>
                </div>
            </div>
        </div>

        <!-- FEATURES SECTION END-->




        <!-- Start get to know  section -->

        <div class="section layout_padding">

            <div class="container">
                <div class="row">

                    <div class="col-md-12">
                        <div class="full">
                            <div class="heading_main text_align_center">
                                <h2><span class="theme_color">Get To </span>Know</h2>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-12 col-lg-3">
                        <div class="grey-box-icon">
                            <div class="icon-box-top grey-box-icon-pos">
                                <img src="images/online.png" class="img-responsive rounded-circle" height="100px" width="100px"  alt="" />
                            </div><!--icon box top -->
                            <h4>Online Courses</h4>
                            <p>A online E-Book is the soul of an academic institution..The E-Library operates on an open access system.</p>
                            <p><a href="register.jsp"><em>Read More →</em></a></p>
                        </div><!--grey box -->
                    </div><!--/span3-->
                    <div class="col-md-6 col-sm-12 col-lg-3">
                        <div class="grey-box-icon">
                            <div class="icon-box-top grey-box-icon-pos">
                                <img src="images/noticeboard.png"  class="img-responsive rounded-circle" height="100px" width="100px" alt="" />
                            </div><!--icon box top -->
                            <h4>Notice Board</h4>
                            <p> The students have free in- hand facilities for books and journals through the use of computerized catalog.</p>
                            <p><a href="register.jsp"><em>Read More →</em></a></p>
                        </div><!--grey box -->
                    </div><!--/span3-->
                    <div class="col-md-6 col-sm-12 col-lg-3">
                        <div class="grey-box-icon">
                            <div class="icon-box-top grey-box-icon-pos">
                                <img src="images/update.png" class="img-responsive rounded-circle" height="100px" width="100px"  alt="" />
                            </div><!--icon box top -->
                            <h4>Latest Updates</h4>
                            <p>Subscribe or Register to the website to get connect with the one of the best gonvernment college !!Get in soon..</p>
                            <p><a href="register.jsp"><em>Read More →</em></a></p>
                        </div><!--grey box -->
                    </div><!--/span3-->
                    <div class="col-md-6 col-sm-12 col-lg-3">
                        <div class="grey-box-icon">
                            <div class="icon-box-top grey-box-icon-pos">
                                <img src="images/placement.png" class="img-responsive rounded-circle" height="100px" width="100px"   alt="" />
                            </div><!--icon box top -->
                            <h4>Placements</h4>
                            <p>The most brilliant student got their job in higher companies such as INFOSYS, WIPRO , GOOGLE   .</p>
                            <p><a href="register.jsp"><em>Read More →</em></a></p>
                        </div><!--grey box -->
                    </div><!--/span3-->
                </div>
            </div>

        </div>
        <!-- end of the get to know  section -->


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
