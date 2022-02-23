<%-- 
    Document   : index.jsp
    Created on : 10 Aug, 2021, 2:56:12 PM
    Author     : KAMLESH BIND
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- Favicon -->
        <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">

        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

         <!-- Site Metas -->
        <title>MMMUT::HOME</title>
        <meta name="keywords" content="MMMUT,MMMUT GORAKHPUR, best engineering college,kkb.mmmut@gmail,kamlesh developer,kamleshkumarbind"/>
        <meta name="description" content="MMMUT::HOME ">
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body id="home" data-spy="scroll" data-target="#navbar-wd" data-offset="98">

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
        <div class="ulockd-home-slider">
            <div class="container-fluid">
                <div class="row">
                    <div class="pogoSlider" id="js-main-slider">
                        <div class="pogoSlider-slide" style="background-image:url(images/slide_img.png);">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="slide_text white_fonts"><br>
                                            <h3><span class="text glower">Welcome</span><br><span class="txt">MADAN MOHAN MALVIYA UNIVERSITY OF TECHNOLOGY</span><strong></strong> </h3>
                                            <br><br><br><br><br><br><br><br>
                                            <a class="start_exchange_bt" href="register.jsp">Get Admission ></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="pogoSlider-slide" style="background-image:url(images/slide_img2.png);">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="slide_text white_fonts"><br> 
                                            <h3><span class="text3d" id="shade">MMMUT<br><br>GORAKHPUR</span><br><strong></strong> </h3>
                                            <br><br><br><br><br><br><br><br> 
                                            <a class="start_exchange_bt" href="contact.jsp">Contact ></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
                                <h2><span class="theme_color">Welcome To</span>  MMMUT</h2>     
                            </div>
                        </div>
                        <div class="full paddding_left_15">
                            <p> Madan Mohan Malaviya University of Technology, Gorakhpur has been established in year 2013 by the Government of Uttar Pradesh in the form of 
                                a non-affiliating, teaching and research University after reconstituting the Madan Mohan Malaviya Engineering College, 
                                Gorakhpur which was established in 1962.. </p>
                        </div>
                        <div class="full paddding_left_15">
                            <a class="main_bt" href="register.jsp">Enroll Now ></a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="full text_align_right_img">
                            <img src="images/welcome_mmmut.png" alt="#" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end section -->
        <!-- section -->
        <div class="section layout_padding">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="full">
                            <div class="heading_main text_align_center">
                                <h2><span class="theme_color">Our</span> Facilities</h2>    
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="full services_blog">
                            <img class="img-responsive" src="images/library.png" alt="#" />
                            <h4>Library</h4>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="full services_blog">
                            <img class="img-responsive" src="images/hostel.png" alt="#" />
                            <h4>Boys/Girls Hostel</h4>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="full services_blog">
                            <img class="img-responsive" src="images/lab.png" alt="#" />
                            <h4>Labs</h4>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="full services_blog">
                            <img class="img-responsive" src="images/game.png" alt="#" />
                            <h4>Game Facilities</h4>
                        </div>
                    </div>
                </div>
                <div class="row margin-top_30">
                    <div class="col-sm-12">
                        <div class="full">
                            <div class="center">
                                <a class="main_bt" href="gallery.jsp">Visit ></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end section -->
        <!-- section -->

        <div class="section white_fonts" style="background: #2a2a2a;">
            <div class="section layout_padding about_bg">
                <div class="container">
                    <div class="row">

                        <div class="col-md-6">
                            <div class="full text_align_right_img">
                                <img src="images/img2.png" alt="#" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="full paddding_left_15">
                                <div class="heading_main text_align_left">
                                    <h2><span class="theme_color">Apply for</span> Admission</h2> 
                                </div>
                            </div>
                            <div class="full paddding_left_15">
                                <p> The Institute insists on developing students into efficient technocrats in their selected pursuits by guiding them to build their insights, 
                                    abilities ways of right thinking. The aim of the Institute is to make our state more enrich and competitive in the field of Engineering and Technology.
                                A novel academic life of joy, happiness, and creative knowledge awaits the students at the  Madan Mohan Malaviya University of Technology, Gorakhpur.Â  An academic Institution is not merely a marvel of masonry,
                                concrete, and infrastructure but also an edifice evolved out of vision, values, enthusiasm and social responsibility. We excel, and make you excel at our institute.
                                Madan Mohan Malaviya University of TEchnology is a 'stepping-stone' towards a rewarding future. We invite you to take this step forward with us.</p>
                            </div>
                            <div class="full paddding_left_15">
                                <a class="main_bt" href="register.jsp">Enroll Now ! ></a>
                            </div>
                        </div>


                    </div>
                </div>
            </div> 
        </div>
        <!-- end section -->
        <!-- section -->
        <div class="section layout_padding about_bg">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="full paddding_left_15">
                            <div class="heading_main text_align_left">
                                <h2><span class="theme_color">Anti</span> Ragging</h2>    
                            </div>
                        </div>
                        <div class="full paddding_left_15">
                            <p>UGC is taking actions as per the UGC Regulations on curbing the menace of ragging in higher educational institutions, 2009. Details of the action taken against the complaints is also available at the website www.antiragging.in & www.amanmovement.org
                                The UGC has accorded top most priority to curtail the menace of ragging in Institution of higher education.<br> The Higher Education institutions have been
                                requested to organize debates etc. for ragging control. </p>
                        </div>
                        <div class="full paddding_left_15">
                            <a class="main_bt" href="register.jsp">Read More ></a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="full text_align_right_img">
                            <img src="images/img3.png" alt="#" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end section -->
        <!-- section -->
        <div class="section layout_padding padding_top_0">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="full">
                            <div class="heading_main text_align_center">
                                <h2><span class="theme_color">Branches </span> Offered</h2>    
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="full news_blog">
                            <img class="img-responsive" src="images/branch1.png" alt="#" />
                            <div class="overlay"><a class="main_bt transparent" href="#">View</a></div>
                            <div class="blog_details">
                                <h3>Computer Science & Engineering</h3>
                                <p>Seats : 60 <br> Total Student Admitted : 55</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="full news_blog">
                            <img class="img-responsive" src="images/branch2.png" alt="#" />
                            <div class="overlay"><a class="main_bt transparent" href="#">View</a></div>
                            <div class="blog_details">
                                <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Electronics Engineering &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </h3>
                                <p>Seats : 60 <br> Total Student Admitted : 58</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="full news_blog">
                            <img class="img-responsive" src="images/branch3.png" alt="#" />
                            <div class="overlay"><a class="main_bt transparent" href="#">View</a></div>
                            <div class="blog_details">
                                <h3>Instrumentation & Control Engineering</h3>
                                <p>Seats : 60 <br> Total Student Admitted : 35</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end section -->
        <!-- section -->
        <div class="section layout_padding padding_top_0">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="full">
                            <div class="heading_main text_align_center">
                                <h2><span class="theme_color"></span>Contact</h2>    
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end section -->
        <!-- contact_form -->
        <div id="contact_bcg" class="section contact_form parallax parallax-off">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-sm-12  ">
                        <div class="full">
                            <form class="contact_form_inner" action="generalcode/contactcode.jsp" method="post" >
                                <fieldset>
                                    <div class="field">
                                        <input type="text" name="name" placeholder="Your name" required=""/>
                                    </div>
                                    <div class="field">
                                        <input type="email" name="emailaddress" placeholder="Email" required=""/>
                                    </div>
                                    <div class="field">
                                        <input type="text" name="contactno" placeholder="Phone number" required=""/>
                                    </div>
                                    <div class="field">
                                        <textarea placeholder="Message" name="enquirytext" required=""></textarea>
                                    </div>
                                    <div class="field center">
                                        <button value="submit" style="margin-bottom: 100px;">SEND</button>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-6 col-sm-12 ">
                        <div class="full">
                            <div class="col-lg-10 col-sm-12 offset-lg-2"  >
                                <div class="container-fluid">
                                    <div class="row">
                                        <img src="images/bell.png" class="img-responsive" style="margin:0 auto;margin-top:-80px;height:100px;width:100px; "/>  
                                    </div>
                                    <div class="row">
                                        
                                        <marquee direction="up" height="480px" onmouseover="stop()" onmouseout="start()" scrollamount="5">
                    
                                        <%
                                            DbManager dm=new DbManager();
                                            ResultSet rs=dm.selectQuery("select * from noticeboard order by id desc");
                                            while(rs.next())
                                            {

                                            %>

                                            <span style="text-align: center;">
                                                <p style="color:#00c4c7; font-size: 20px;"><b><b><b><%=rs.getString("subject")%></b></b></b></p>
                                                <p style="color:white; font-size: 20px;"><%=rs.getString("message")%></p>
                                                <p align="right"><%=rs.getString("posteddate")%></p>
                                            </span>
                                            <hr style="display: block;width: 80%;margin-bottom: 0.5em;margin-top: 0.5em;margin-left: auto;margin-right: auto;border-style: inset;border-width:3px;background-color: #00c4c7;"><br>
                                             <% 
                                            }
                                            %>
                                    </marquee>
                                        
                                    </div>
                                
                                
                                </div>
                                
                            </div> 
                            
                            
                            
                            
                            
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
        <!-- end contact_form -->
        <!-- end section -->
        <!-- Start Footer -->
        <footer class="footer-box">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 white_fonts">
                        <div class="row">
                            <div class="col-sm-6 col-md-6 col-lg-3">
                                <div class="full">
                                    <img class="img-responsive" src="images/footer_logo.png" alt="UTTAR PRADESH BOARD OF TECHNICAL EDUCATION" />
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
                                            <form action="generalcode/subcriptioncode.jsp" method="post" >
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
                                    <script>
                                /* counter js */

                                (function($) {
                                    $.fn.countTo = function(options) {
                                        options = options || {};

                                        return $(this).each(function() {
                                            // set options for current element
                                            var settings = $.extend({}, $.fn.countTo.defaults, {
                                                from: $(this).data('from'),
                                                to: $(this).data('to'),
                                                speed: $(this).data('speed'),
                                                refreshInterval: $(this).data('refresh-interval'),
                                                decimals: $(this).data('decimals')
                                            }, options);

                                            // how many times to update the value, and how much to increment the value on each update
                                            var loops = Math.ceil(settings.speed / settings.refreshInterval),
                                                    increment = (settings.to - settings.from) / loops;

                                            // references & variables that will change with each update
                                            var self = this,
                                                    $self = $(this),
                                                    loopCount = 0,
                                                    value = settings.from,
                                                    data = $self.data('countTo') || {};

                                            $self.data('countTo', data);

                                            // if an existing interval can be found, clear it first
                                            if (data.interval) {
                                                clearInterval(data.interval);
                                            }
                                            data.interval = setInterval(updateTimer, settings.refreshInterval);

                                            // initialize the element with the starting value
                                            render(value);

                                            function updateTimer() {
                                                value += increment;
                                                loopCount++;

                                                render(value);

                                                if (typeof (settings.onUpdate) == 'function') {
                                                    settings.onUpdate.call(self, value);
                                                }

                                                if (loopCount >= loops) {
                                                    // remove the interval
                                                    $self.removeData('countTo');
                                                    clearInterval(data.interval);
                                                    value = settings.to;

                                                    if (typeof (settings.onComplete) == 'function') {
                                                        settings.onComplete.call(self, value);
                                                    }
                                                }
                                            }

                                            function render(value) {
                                                var formattedValue = settings.formatter.call(self, value, settings);
                                                $self.html(formattedValue);
                                            }
                                        });
                                    };

                                    $.fn.countTo.defaults = {
                                        from: 0, // the number the element should start at
                                        to: 0, // the number the element should end at
                                        speed: 1000, // how long it should take to count between the target numbers
                                        refreshInterval: 100, // how often the element should be updated
                                        decimals: 0, // the number of decimal places to show
                                        formatter: formatter, // handler for formatting the value before rendering
                                        onUpdate: null, // callback method for every time the element is updated
                                        onComplete: null       // callback method for when the element finishes updating
                                    };

                                    function formatter(value, settings) {
                                        return value.toFixed(settings.decimals);
                                    }
                                }(jQuery));

                                jQuery(function($) {
                                    // custom formatting example
                                    $('.count-number').data('countToOptions', {
                                        formatter: function(value, options) {
                                            return value.toFixed(options.decimals).replace(/\B(?=(?:\d{3})+(?!\d))/g, ',');
                                        }
                                    });

                                    // start all the timers
                                    $('.timer').each(count);

                                    function count(options) {
                                        var $this = $(this);
                                        options = $.extend({}, options || {}, $this.data('countToOptions') || {});
                                        $this.countTo(options);
                                    }
                                });
                                    </script>
                                    </body> 

                                    </html>
