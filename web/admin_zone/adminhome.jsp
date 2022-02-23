<%-- 
    Document   : adminhome
    Created on : 10 Aug, 2021, 2:52:10 PM
    Author     : KAMLESH KUMAR BIND
--%>
<a href="adminhome.jsp"></a>

<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%
    if (session.getAttribute("adminid") == null || session.getAttribute("adminid") == "") {
        response.sendRedirect("../index.jsp");
    } else {

%>
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
        <title>SRGP::ADMIN: HOME</title>
        <meta name="keywords" content="SRGP,SRGP CHANDAULI, best polytechnic college, srgp chakiya chandauli,polytechnic in dhanapur, polytechnic in chakiya chandauli, polytechnic in chandauli,kamleshtech@gmail,kamlesh developer,kamleshkumarbind"/>
        <meta name="description" content=" SRGP::CHANDAULI : HOME ">
        <meta name="author" content="srgpchandauli.ac.in, getkamleshtech.in/"/>

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
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300">  <!-- Google web font "Open Sans" -->
        <link rel="stylesheet" href="css/bootstrap.min.css">                                  <!-- https://getbootstrap.com/ -->
        <link rel="stylesheet" href="fontawesome/css/fontawesome-all.min.css">                <!-- https://fontawesome.com/ -->
        <link rel="stylesheet" type="text/css" href="slick/slick.css"/>                       <!-- http://kenwheeler.github.io/slick/ -->
        <link rel="stylesheet" type="text/css" href="slick/slick-theme.css"/>
        <link rel="stylesheet" href="css/admin-style.css">   
        <script>document.documentElement.className = "js";
            var supportsCssVars = function() {
                var e, t = document.createElement("style");
                return t.innerHTML = "root: { --tmp-var: bold; }", document.head.appendChild(t), e = !!(window.CSS && window.CSS.supports && window.CSS.supports("font-weight", "var(--tmp-var)")), t.parentNode.removeChild(t), e
            };
            supportsCssVars() || alert("Please view this in a modern browser such as latest version of Chrome or Microsoft Edge.");</script>
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <script>
            function logout()
            {
                window.history.forward();
                window.setTimeout("window.location.href='../index.jsp'", 1000);
            }

        </script>

        <style>
            ::-webkit-file-upload-button {
                background:#353541;
                color:grey;
                padding: 1em;
                width: 100%;
                cursor: pointer;
            }

        </style>


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
                            <a class="navbar-brand" href="index.html"><img src="images/logo.png" alt="image"></a>
                        </div>
                        <div class="site_information">
                            <ul>
                                <li><a href="mailto:getkamleshtech@gmail.com"><img src="images/mail_icon.png" alt="#" />kkb.mmmut@gmail.com</a></li>
                                <li><a href="tel:getkamleshtech@gmail.com"><img src="images/phone_icon.png" alt="#" />+918112740805</a></li>
                                <li><a class="join_bt" href="logout.jsp" onclick="logout()">Logout</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>    
        </header> 
        <!-- End header -->
        <div id="tm-bg"></div>
        <div id="tm-wrap" >
            <div class="tm-main-content">
                <div class="container tm-site-header-container">
                    <div class="row topleft">
                        <div class="col-sm-12 col-md-4 col-lg-4 col-md-col-xl-4 mb-md-0 mb-sm-4 mb-4 tm-site-header-col">
                            <div class="tm-site-header ">
                                <h1 class="mb-4"><span class="theme_color">MMMUT</span>::ADMIN</h1>
                                <img src="img/underline.png" class="img-fluid mb-4">
                                <p class="rona">Welcome to the Admin Zone!! ,here you can manages all the things around you...!! GoodLuck ..</p>        
                            </div>                        
                        </div>
                        <div class="col-sm-12 col-md-8 col-lg-8 col-xl-8">
                            <div class="content">
                                <div class="grid">
                                    <div class="grid__item" id="home-link">
                                        <div class="product">
                                            <div class="tm-nav-link">
                                                <i class="fas fa-home fa-3x tm-nav-icon"></i>
                                                <span class="tm-nav-text">Events</span>
                                                <div class="product__bg"></div>        
                                            </div>                                    
                                            <div class="product__description"> 
                                                <div class="p-sm-4 p-2" >
                                                    <div class="row mb-3">
                                                        <div class="col-12">
                                                            <h2 class="tm-page-title">Events</h2>        
                                                        </div>
                                                    </div>
                                                    <div class="row mb-3">
                                                        <div class="col-12">
                                                            <h2 class="tm-page-title">Add Events / Schedules</h2>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-12">
                                                            <form action="admincode/events.jsp" method="post" class="contact-form">
                                                                <div class="row">
                                                                    <div class="form-group col-md-6 col-lg-6 col-xl-6">
                                                                        <input type="text" id="contact_name" name="title" class="form-control" placeholder="Title of Event"  required/>
                                                                    </div>
                                                                    <div class="form-group col-md-3 col-lg-3 col-xl-3 tm-col-email">
                                                                        <input type="date" id="contact_date" name="date" class="form-control" placeholder="Date of Event"  required/>
                                                                    </div>
                                                                    <div class="form-group col-md-3 col-lg-3 col-xl-3 tm-col-email">
                                                                        <input type="time" id="contact_time" name="time" class="form-control" placeholder="Time of Event"  required/>
                                                                    </div>
                                                                </div>  

                                                                <div class="form-group">
                                                                    <textarea id="contact_message" name="description" class="form-control" rows="2" placeholder="Description of Event" required></textarea>
                                                                </div>
                                                                <button type="submit" value="submit" class="btn btn-primary tm-btn-submit">Add Event</button>
                                                            </form>
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-12">


                                                            <table class="table table-responsive-md">
                                                                <thead class="thead-light">
                                                                    <tr>
                                                                        <th scope="col">Title</th>
                                                                        <th scope="col">Description</th>
                                                                        <th scope="col">Date&Time</th>
                                                                        <th scope="col">Posted By</th>
                                                                        <th scope="col">Delete</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <%                                                                         DbManager em = new DbManager();
                                                                        ResultSet es = em.selectQuery("select * from events");
                                                                        while (es.next()) {

                                                                    %>
                                                                    <tr>
                                                                        <th scope="row"><%=es.getString("title")%></th>
                                                                        <td><%=es.getString("description")%></td>
                                                                        <td><%=es.getString("date")%>/<%=es.getString("time")%></td>
                                                                        <td><%=es.getString("postedby")%></td>
                                                                        <td><a href="admincode/deleteevent.jsp?id=<%=es.getString("id")%>)"> Delete</a></td>
                                                                    </tr> 
                                                                    <%
                                                                        }
                                                                    %>
                                                                </tbody>
                                                            </table>


                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="grid__item" id="team-link">
                                        <div class="product">
                                            <div class="tm-nav-link">
                                                <i class="fas fa-user fa-3x tm-nav-icon"></i>
                                                <span class="tm-nav-text">Students</span>
                                                <div class="product__bg"></div>            
                                            </div>                                     
                                            <div class="product__description ">
                                                <div class="p-sm-4 p-2">
                                                    <div class="row mb-3">
                                                        <div class="col-12">
                                                            <h2 class="tm-page-title">Our Lists of Students </h2>        
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-12">
                                                            <form action="admincode/addstudent.jsp" method="post" class="contact-form">
                                                                <div class="row">
                                                                    <div class="form-group col-md-8 col-lg-8 col-xl-8">
                                                                        <input type="text" id="contact_name" name="studentid" class="form-control" placeholder="Add Enrollment Id"  required=""/>
                                                                    </div>
                                                                    <div class="form-group col-md-4 col-lg-4 col-xl-4 tm-col-email">
                                                                        <button type="submit" class="btn btn-primary tm-btn-submit" style="width:100%;">Submit</button>
                                                                    </div>
                                                                </div>                                                        

                                                            </form>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-12">


                                                            <table class="table table-responsive-md">
                                                                <thead class="thead-light">
                                                                    <tr>
                                                                        <th scope="col">Enrollment Id</th>
                                                                        <th scope="col">Name</th>
                                                                        <th scope="col">Mobile Number</th>
                                                                        <th scope="col">Delete Id</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <%
                                                                        DbManager dm = new DbManager();
                                                                        ResultSet rs = dm.selectQuery("select * from register");
                                                                        while (rs.next()) {

                                                                    %>

                                                                    <tr>
                                                                        <th scope="row"><%=rs.getString("enrollmentid")%></th>
                                                                        <td><%=rs.getString("firstname")%>&nbsp;<%=rs.getString("secondname")%></td>
                                                                        <td><%=rs.getString("mobilenumber")%></td>
                                                                        <td><a href="admincode/deletestudentid.jsp?enrollmentid=<%=rs.getString("enrollmentid")%>)"> Delete</a></td>
                                                                    </tr>
                                                                    <%
                                                                        }

                                                                    %>



                                                                </tbody>
                                                            </table>


                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="grid__item">
                                        <div class="product">
                                            <div class="tm-nav-link">
                                                <i class="fas fa-handshake fa-3x tm-nav-icon"></i>
                                                <span class="tm-nav-text">Faculty</span>
                                                <div class="product__bg"></div>             
                                            </div>                                                                 
                                            <div class="product__description">
                                                <div class="p-sm-4 p-2" >
                                                    <div class="row mb-3">
                                                        <div class="col-12">
                                                            <h2 class="tm-page-title">Faculty</h2>        
                                                        </div>
                                                    </div>
                                                    <div class="row mb-3">
                                                        <div class="col-12">
                                                            <h2 class="tm-page-title">Add Faculty / Our Professionals</h2>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-12">
                                                            <form action="admincode/addfaculty.jsp" method="post" class="contact-form">
                                                                <div class="row">
                                                                    <div class="form-group col-md-6 col-lg-6 col-xl-6">
                                                                        <input type="text" id="contact_name" name="facultyname" class="form-control" placeholder="Name"  required/>
                                                                    </div>
                                                                    <div class="form-group col-md-6 col-lg-6 col-xl-6 tm-col-email">
                                                                        <input type="email" id="contact_email" name="facultyemail" class="form-control" placeholder="Email/User Id"  required/>
                                                                    </div>
                                                                </div>   
                                                                <div class="row">
                                                                    <div class="form-group col-md-6 col-lg-6 col-xl-6">
                                                                        <input type="text" id="contact_name" name="facultysubject" class="form-control" placeholder="Core Subject"  required/>
                                                                    </div>
                                                                    <div class="form-group col-md-6 col-lg-6 col-xl-6 tm-col-email">
                                                                        <input type="text" id="contact_name" name="branchname" class="form-control" placeholder="Branch Name"  required/>
                                                                    </div>
                                                                </div> 
                                                                <div class="row">
                                                                    <div class="form-group col-md-6 col-lg-6 col-xl-6">
                                                                        <input type="text" id="contact_name" name="contactno" class="form-control" placeholder="Mobile Number"  required/>
                                                                    </div>
                                                                    <div class="form-group col-md-6 col-lg-6 col-xl-6 tm-col-email">
                                                                        <input type="text" id="contact_name" name="degree" class="form-control" placeholder="Highest Degree"  required/>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="form-group col-md-6 col-lg-6 col-xl-6">
                                                                        <input type="text" id="contact_name" name="password" class="form-control" placeholder="Password"  required/>
                                                                    </div>
                                                                    <div class="form-group col-md-6 col-lg-6 col-xl-6 tm-col-email">
                                                                        <input type="text" id="contact_name" name="password" class="form-control" placeholder="Confirm Password"  required/>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <textarea id="contact_message" name="address" class="form-control" rows="2" placeholder="Permanent Address" required></textarea>
                                                                </div>
                                                                <button type="submit" value="submit" class="btn btn-primary tm-btn-submit">Submit</button>
                                                            </form>
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-12">


                                                            <table class="table table-responsive-md">
                                                                <thead class="thead-light">
                                                                    <tr>
                                                                        <th scope="col">Faculty Name</th>
                                                                        <th scope="col">Email</th>
                                                                        <th scope="col">Mobile Number</th>
                                                                        <th scope="col">Delete</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <%                                                                         DbManager fm = new DbManager();
                                                                        ResultSet fs = fm.selectQuery("select * from faculty");
                                                                        while (fs.next()) {

                                                                    %>
                                                                    <tr>
                                                                        <th scope="row"><%=fs.getString("name")%></th>
                                                                        <td><%=fs.getString("email")%></td>
                                                                        <td><%=fs.getString("mobilenumber")%></td>
                                                                        <td><a href="admincode/deletefaculty.jsp?id=<%=fs.getString("email")%>)"> Delete</a></td>
                                                                    </tr> 
                                                                    <%
                                                                        }
                                                                    %>
                                                                </tbody>
                                                            </table>


                                                        </div>
                                                    </div>
                                                </div>
                                            </div>       
                                        </div>
                                    </div>

                                    <div class="grid__item">
                                        <div class="product">
                                            <div class="tm-nav-link">
                                                <i class="fas fa-comments fa-3x tm-nav-icon"></i>
                                                <span class="tm-nav-text">Notice</span>
                                                <div class="product__bg"></div>             
                                            </div>                                                              
                                            <div class="product__description">
                                                <div class="pt-sm-4 pb-sm-4 pl-sm-5 pr-sm-5 pt-2 pb-2 pl-3 pr-3">
                                                    <div class="row mb-3">
                                                        <div class="col-12">
                                                            <h2 class="tm-page-title">Notice Panel</h2>        
                                                        </div>
                                                    </div>
                                                    <div class="row mb-4">
                                                        <div class="col-12">
                                                            <p> Add notice to the Notice Board </p>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-12">
                                                            <form action="admincode/addnotice.jsp" method="post" class="contact-form">
                                                                <div class="row">
                                                                    <div class="form-group col-md-12 col-lg-12 col-xl-12">
                                                                        <input type="text" id="contact_name" name="title" class="form-control" placeholder="Title of the Notice"  required/>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="form-group col-md-12 col-lg-12 col-xl-12  ">
                                                                        <input type="text" id="contact_name" name="subject" class="form-control" placeholder="Regarding Subject"  required/>
                                                                    </div>
                                                                </div>                                                        
                                                                <div class="form-group">
                                                                    <textarea id="contact_message" name="message" class="form-control" rows="9" placeholder="Notice Message/Message" required></textarea>
                                                                </div>
                                                                <button type="submit" value="submit" class="btn btn-primary tm-btn-submit">Submit</button>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>                                            
                                            </div>
                                        </div>
                                    </div>

                                    <div class="grid__item" id="home-link">
                                        <div class="product">
                                            <div class="tm-nav-link">
                                                <i class="fas fa-book fa-3x tm-nav-icon"></i>
                                                <span class="tm-nav-text">E-Library</span>
                                                <div class="product__bg"></div>        
                                            </div>                                    
                                            <div class="product__description">
                                                <div class="row mb-3">
                                                    <div class="col-12">
                                                        <h2 class="tm-page-title">Add E-Books to E-Library</h2>        
                                                    </div>
                                                </div>                                        
                                                <div class="row">

                                                    <div class="form-group col-md-12 col-lg-12 col-xl-12">

                                                        <form action="../upload" method="post" class="contact-form" enctype="multipart/form-data">
                                                            <div class="row">
                                                                <div class="form-group col-md-12 col-lg-12 col-xl-12">
                                                                    <input type="text" id="contact_name" name="ebooktitle" class="form-control" placeholder="Subject Title"  required/>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="form-group col-md-12 col-lg-12 col-xl-12  ">
                                                                    <input type="text" id="contact_name" name="ebookdescription" class="form-control" placeholder="Description of Subject Title"  required/>
                                                                </div>
                                                            </div>                                                        
                                                            <div class="row">
                                                                <div class="form-group col-md-12 col-lg-12 col-xl-12  ">
                                                                    <input type="file" id="contact_name" name="ebookfile" class="form-control " placeholder="Upload the E-Book File"  required/>
                                                                </div>
                                                            </div> 
                                                            <button type="submit" value="submit" class="btn btn-primary tm-btn-submit">Upload E-Book</button>
                                                        </form>

                                                    </div>

                                                    <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
                                                        <div class="row">
                                                            <div class="col-12">


                                                                <table class="table table-responsive-md">
                                                                    <thead class="thead-light">
                                                                        <tr>
                                                                            <th scope="col">E-Book Title</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">File Uploaded</th>
                                                                            <th scope="col">Download</th>
                                                                            <th scope="col">Delete</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <%
                                                                            DbManager um = new DbManager();
                                                                            ResultSet us = um.selectQuery("select * from elibrary");
                                                                            while (us.next()) {

                                                                        %>
                                                                        <tr>
                                                                            <th scope="row"><%=us.getString("ebookname")%></th>
                                                                            <td><%=us.getString("ebookdescription")%></td>
                                                                            <td><%=us.getString("filename")%></td>
                                                                            <td><a target="blank" href="<%=request.getContextPath() + "/uploadfiles/" + us.getString("filename")%>">  Download </a></td>
                                                                            <td><a href="admincode/deleteebookcode.jsp?id=<%=us.getString("id")%>)"> Delete</a></td>
                                                                        </tr> 
                                                                        <%
                                                                            }
                                                                        %>
                                                                    </tbody>
                                                                </table>


                                                            </div>
                                                        </div>
                                                    </div>                                        
                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="grid__item" id="team-link">
                                        <div class="product">
                                            <div class="tm-nav-link">
                                                <i class="fas fa-table fa-3x tm-nav-icon"></i>
                                                <span class="tm-nav-text">Time Table</span>
                                                <div class="product__bg"></div>            
                                            </div>                                     
                                            <div class="product__description">
                                                <form action="admincode/addtimetable.jsp" method="post" class="contact-form"> 
                                                    <div class="p-sm-4 p-2">
                                                        <div class="row mb-3">
                                                            <div class="col-12">
                                                                <h2 class="tm-page-title">Generate Timetable</h2>        
                                                            </div>
                                                        </div>
                                                        <div class="row mb-12">
                                                            <div class="col-12">
                                                                <h2 class="tm-page-title"><b>CHOOSE BRANCH & YEAR</b></h2> 
                                                                <div class="row">
                                                                    <div class="form-group col-md-12 col-lg-12 col-xl-12"> 
                                                                        <select class="form-control" id="contact_name"   name="branch"  placeholder="Subject Title" required="" style="height:50px;" >  
                                                                            <option selected="" value="">Select Branch & Year</option>
                                                                            <option>Computer Science & Engineering (First Year)</option>
                                                                            <option>Computer Science & Engineering (Second Year)</option>
                                                                            <option>Computer Science & Engineering (Third Year)</option>  
                                                                            <option>Electronics Engineering(First Year) </option>
                                                                            <option>Electronics Engineering (Second Year)</option>
                                                                            <option>Electronics Engineering (Third Year)</option>
                                                                            <option>Instrumentation & Control Engineering (First Year)</option> 
                                                                            <option>Instrumentation & Control Engineering (Second Year)</option>
                                                                            <option>Instrumentation & Control Engineering  (Third Year)</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row tm-reverse-sm">
                                                            <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
                                                                <table class="table table-responsive table-bordered table-dark" caption="GENERATED TIMETABLE">
                                                                    <thead>
                                                                        <tr>
                                                                            <th scope="col">DAY \ TIME</th>
                                                                            <th scope="col">First Period</th>
                                                                            <th scope="col">Second Period</th>
                                                                            <th scope="col">LUNCH</th>
                                                                            <th scope="col">Third Period</th>
                                                                            <th scope="col">Fouth Period</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <tr>
                                                                            <th scope="row">MONDAY</th>
                                                                            <td><input type="text" name="mondayone" class="form-control" required="" style="padding:0px;background: #212529;" placeholder="FILL THIS!"/></td>
                                                                            <td><input type="text" name="mondaytwo" class="form-control" required="" style="padding:0px;background: #212529;" placeholder="FILL THIS!"/></td>
                                                                            <td><b>L</b></td>
                                                                            <td><input type="text" name="mondaythree" class="form-control" required="" style="padding:0px;background: #212529;" placeholder="FILL THIS!"/></td>
                                                                            <td><input type="text" name="mondayfour" class="form-control" required="" style="padding:0px;background: #212529;" placeholder="FILL THIS!"/></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th scope="row">TUESDAY</th>
                                                                            <td><input type="text"  name="tuesdayone" class="form-control" required="" style="padding:0px;background: #212529;" placeholder="FILL THIS!"/></td>
                                                                            <td><input type="text" name="tuesdaytwo" class="form-control" required="" style="padding:0px;background: #212529;" placeholder="FILL THIS!"/></td>
                                                                            <td><b>U</b></td>
                                                                            <td><input type="text" name="tuesdaythree" class="form-control" required="" style="padding:0px;background: #212529;" placeholder="FILL THIS!"/></td>
                                                                            <td><input type="text" name="tuesdayfour" class="form-control" required="" style="padding:0px;background: #212529;" placeholder="FILL THIS!"/></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th scope="row">WEDNESDAY</th>
                                                                            <td><input type="text" name="wednesdayone" class="form-control" required="" style="padding:0px;background: #212529;" placeholder="FILL THIS!"/></td>
                                                                            <td><input type="text" name="wednesdaytwo" class="form-control" required="" style="padding:0px;background: #212529;" placeholder="FILL THIS!"/></td>
                                                                            <td><b>--</b></td>
                                                                            <td><input type="text" name="wednesdaythree" class="form-control" required="" style="padding:0px;background: #212529;" placeholder="FILL THIS!"/></td>
                                                                            <td><input type="text" name="wednesdayfour" class="form-control" required="" style="padding:0px;background: #212529;" placeholder="FILL THIS!"/></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th scope="row">THRUSDAY</th>
                                                                            <td><input type="text" name="thrusdayone" class="form-control" required="" style="padding:0px;background: #212529;" placeholder="FILL THIS!"/></td>
                                                                            <td><input type="text" name="thrusdaytwo" class="form-control" required="" style="padding:0px;background: #212529;" placeholder="FILL THIS!"/></td>
                                                                            <td><b>N</b></td>
                                                                            <td><input type="text" name="thrusdaythree" class="form-control" required="" style="padding:0px;background: #212529;" placeholder="FILL THIS!"/></td>
                                                                            <td><input type="text" name="thrusdayfour" class="form-control" required="" style="padding:0px;background: #212529;" placeholder="FILL THIS!"/></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th scope="row">FRIDAY</th>
                                                                            <td><input type="text"  name="fridayone" class="form-control" required="" style="padding:0px;background: #212529;" placeholder="FILL THIS!"/></td>
                                                                            <td><input type="text" name="fridaytwo" class="form-control" required="" style="padding:0px;background: #212529;" placeholder="FILL THIS!"/></td>
                                                                            <td><b>C</b></td>
                                                                            <td><input type="text" name="fridaythree" class="form-control" required="" style="padding:0px;background: #212529;" placeholder="FILL THIS!"/></td>
                                                                            <td><input type="text" name="fridayfour" class="form-control" required="" style="padding:0px;background: #212529;" placeholder="FILL THIS!"/></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th scope="row">SATURDAY</th>
                                                                            <td><input type="text" name="saturdayone" class="form-control" required="" style="padding:0px;background: #212529;" placeholder="FILL THIS!"/></td>
                                                                            <td><input type="text" name="saturdaytwo" class="form-control" required="" style="padding:0px;background: #212529;" placeholder="FILL THIS!"/></td>
                                                                            <td><b>H</b></td>
                                                                            <td><input type="text"  name="saturdaythree"class="form-control" required="" style="padding:0px;background: #212529;" placeholder="FILL THIS!"/></td>
                                                                            <td><input type="text" name="saturdayfour" class="form-control" required="" style="padding:0px;background: #212529;" placeholder="FILL THIS!"/></td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>  

                                                            </div> 
                                                        </div>
                                                        <div class="row mb-12">
                                                            <div class="col-12">
                                                                <center> <button type="submit" value="submit" class="btn btn-primary tm-btn-submit" >Upload Timetable</button></center>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                                <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
                                                    <div class="row">
                                                        <div class="col-12">


                                                            <table class="table table-responsive-md">
                                                                <thead class="thead-light">
                                                                    <tr>
                                                                        <th scope="col">Id</th>
                                                                        <th scope="col">Branch</th>
                                                                        <th scope="col">Uploaded By</th>
                                                                        <th scope="col">Download</th>
                                                                        <th scope="col">Delete</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <%
                                                                        DbManager tm = new DbManager();
                                                                        ResultSet ts = tm.selectQuery("select * from timetable");
                                                                        while (ts.next()) {

                                                                    %>
                                                                    <tr>
                                                                        <th scope="row"><%=ts.getString("id")%></th>
                                                                        <td><%=ts.getString("branch")%></td>
                                                                        <td><%=ts.getString("updatedby")%></td>
                                                                        <td> <%= ts.getString("date")%>  </td>
                                                                        <td><a href="admincode/deletetimetable.jsp?id=<%=ts.getString("id")%>"> Delete</a></td>
                                                                    </tr> 
                                                                    <%
                                                                        }
                                                                    %>
                                                                </tbody>
                                                            </table>


                                                        </div>
                                                    </div>
                                                </div> 






                                            </div>
                                        </div>
                                    </div>	
                                    <div class="grid__item" id="team-link">
                                        <div class="product">
                                            <div class="tm-nav-link">
                                                <i class="fas fa-bed fa-3x tm-nav-icon"></i>
                                                <span class="tm-nav-text">Hostel</span>
                                                <div class="product__bg"></div>            
                                            </div>                                     
                                            <div class="product__description">
                                                <div class="p-sm-4 p-2" >
                                                    <div class="row mb-3">
                                                        <div class="col-12">
                                                            <h2 class="tm-page-title">HOSTEL MANAGEMENT PANEL</h2>        
                                                        </div>
                                                    </div>
                                                    <div class="row mb-3">
                                                        <div class="col-12">
                                                            <h2 class="tm-page-title" align="center">Add Student & Register & Update</h2>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-12">
                                                            <form action="admincode/addhostelstudents.jsp" method="post" class="contact-form">
                                                                <div class="row">
                                                                    <div class="form-group col-md-6 col-lg-6 col-xl-6">
                                                                        <input type="number" id="contact_name" name="roomnumber" class="form-control" placeholder="Enter Room Number*"  required=""/>
                                                                    </div>
                                                                    <div class="form-group col-md-6 col-lg-6 col-xl-6  "> 
                                                                        <select class="form-control" style="height:50px;text-align:center;"  name="studentone" required="" placeholder="Choose Student 1*" id="contact_name"> 
                                                                            <option selected="" value=""  >Enrollnment Id/(Name 1)</option>
                                                                            <%
                                                                                DbManager som = new DbManager();
                                                                                ResultSet sos = som.selectQuery("select * from register order by enrollmentid");
                                                                                while (sos.next()) {

                                                                            %>
                                                                            <option value="<%=sos.getString("enrollmentid")%>" > <%=sos.getString("enrollmentid")%> ( <%=sos.getString("firstname")%> )</option>
                                                                            <%
                                                                                }
                                                                            %>
                                                                        </select>
                                                                    </div>
                                                                </div>   
                                                                <div class="row">
                                                                    <div class="form-group col-md-6 col-lg-6 col-xl-6">
                                                                        <select class="form-control" style="height:50px;text-align:center;"  name="studenttwo" required="" placeholder="Choose Student 1*" id="contact_name"> 
                                                                            <option selected="" value=""  >Enrollnment Id/(Name 2)</option>
                                                                            <%
                                                                                DbManager stwm = new DbManager();
                                                                                ResultSet stws = stwm.selectQuery("select * from register order by enrollmentid");
                                                                                while (stws.next()) {

                                                                            %>
                                                                            <option value="<%=stws.getString("enrollmentid")%>" > <%=stws.getString("enrollmentid")%> ( <%=stws.getString("firstname")%> )</option>
                                                                            <%
                                                                                }
                                                                            %>
                                                                        </select>
                                                                    </div>
                                                                    <div class="form-group col-md-6 col-lg-6 col-xl-6  ">
                                                                        <select class="form-control" style="height:50px;text-align:center;"  name="studentthree" required="" placeholder="Choose Student 1*" id="contact_name"> 
                                                                            <option selected="" value=""  >Enrollnment Id/(Name 3)</option>
                                                                            <%
                                                                                DbManager sthm = new DbManager();
                                                                                ResultSet sths = sthm.selectQuery("select * from register order by enrollmentid");
                                                                                while (sths.next()) {

                                                                            %>
                                                                            <option value="<%=sths.getString("enrollmentid")%>" > <%=sths.getString("enrollmentid")%> ( <%=sths.getString("firstname")%> )</option>
                                                                            <%
                                                                                }
                                                                            %>
                                                                        </select>
                                                                    </div>
                                                                </div> 
                                                                <div class="row">
                                                                    <div class="form-group col-md-12 col-lg-12 col-xl-12">
                                                                        <select class="form-control" style="height:50px;text-align:center;"  name="studentfour" required="" placeholder="Choose Student 1*" id="contact_name"> 
                                                                            <option selected="" value=""  >Enrollnment Id/(Name 4)</option>
                                                                            <%
                                                                                DbManager sfm = new DbManager();
                                                                                ResultSet sfs = sfm.selectQuery("select * from register order by enrollmentid");
                                                                                while (sfs.next()) {

                                                                            %>
                                                                            <option value="<%=sfs.getString("enrollmentid")%>" > <%=sfs.getString("enrollmentid")%> ( <%=sfs.getString("firstname")%> )</option>
                                                                            <%
                                                                                }
                                                                            %>
                                                                        </select>
                                                                    </div>

                                                                </div> 

                                                                <center><button type="submit" value="submit" class="btn btn-primary tm-btn-submit">Add</button></center>
                                                            </form>
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-12">


                                                            <table class="table table-responsive-md">
                                                                <thead class="thead-light">
                                                                    <tr>
                                                                        <th scope="col">Room </th>
                                                                        <th scope="col">Student 1</th>
                                                                        <th scope="col">Student 2</th>
                                                                        <th scope="col">Student 3</th>
                                                                        <th scope="col">Student 4</th>
                                                                        <th scope="col">Delete</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <%
                                                                        DbManager hm = new DbManager();
                                                                        ResultSet hs = hm.selectQuery("select * from hostel order by roomnumber");
                                                                        while (hs.next()) {

                                                                    %>
                                                                    <tr>
                                                                        <th scope="row"><%=hs.getString("roomnumber")%></th>
                                                                        <td><%=hs.getString("studentone")%></td>
                                                                        <td><%=hs.getString("studenttwo")%></td>
                                                                        <td><%=hs.getString("studentthree")%></td>
                                                                        <td><%=hs.getString("studentfour")%></td>
                                                                        <td><a href="admincode/deletehostelroom.jsp?id=<%=hs.getString("id")%>)"> Delete</a></td>
                                                                    </tr> 
                                                                    <%
                                                                        }
                                                                    %>
                                                                </tbody>
                                                            </table>


                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="grid__item" id="team-link">
                                        <div class="product">
                                            <div class="tm-nav-link">
                                                <i class="fas fa-comment fa-3x tm-nav-icon"></i>
                                                <span class="tm-nav-text">Complaints</span>
                                                <div class="product__bg"></div>            
                                            </div>                                     
                                            <div class="product__description">
                                                <div class="p-sm-4 p-2">
                                                    <div class="row mb-3">
                                                        <div class="col-12">
                                                            <h2 class="tm-page-title">Overview of All Complaints</h2>        
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-12">


                                                            <table class="table table-responsive-md">
                                                                <thead class="thead-light">
                                                                    <tr>
                                                                        <th scope="col">Complaint Name</th>
                                                                        <th scope="col">Complain Text</th> 
                                                                        <th scope="col">Delete</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <%
                                                                        DbManager cm = new DbManager();
                                                                        ResultSet cs = cm.selectQuery("select * from complain");
                                                                        while (cs.next()) {

                                                                    %>
                                                                    <tr>
                                                                        <th scope="row"><%=cs.getString("name")%></th>
                                                                        <td><%=cs.getString("complaintext")%></td> 
                                                                        <td><a href="admincode/deletefaculty.jsp?id=<%=cs.getString("id")%>)"> Delete</a></td>
                                                                    </tr> 
                                                                    <%
                                                                        }
                                                                    %>
                                                                </tbody>
                                                            </table>


                                                        </div>
                                                    </div>
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                            
                                                    <div class="row mb-3">
                                                        <div class="col-12">
                                                            <h2 class="tm-page-title">Enquiry Texts Details</h2>        
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-12">


                                                            <table class="table table-responsive-md">
                                                                <thead class="thead-light">
                                                                    <tr>
                                                                        <th scope="col">Enquiries Name</th>
                                                                        <th scope="col">Enquiry Text</th> 
                                                                        <th scope="col">Delete</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <%
                                                                        DbManager eqm = new DbManager();
                                                                        ResultSet ceq = eqm.selectQuery("select * from enquiry");
                                                                        while (ceq.next()) {

                                                                    %>
                                                                    <tr>
                                                                        <th scope="row"><%=ceq.getString("name")%></th>
                                                                        <td><%=ceq.getString("enquirytext")%></td> 
                                                                        <td><a href="admincode/deleteenquiry.jsp?id=<%=ceq.getString("id")%>)"> Delete</a></td>
                                                                    </tr> 
                                                                    <%
                                                                        }
                                                                    %>
                                                                </tbody>
                                                            </table>


                                                        </div>
                                                    </div>
                                               
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                </div>
                                            </div>







                                        </div>
                                    </div>



                                </div> 
                            </div>                       
                        </div>
                    </div>                
                </div>

            </div> <!-- .tm-main-content -->  
        </div>


        <!-- End Footer -->

        <div class="footer_bottom">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <p class="crp"><b>© Copyrights to MMMUT,Gorakhpur &trade; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  :: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2021 design & developed by KAMLESH KUMAR BIND<b></p>
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
                                    <script src="js/jquery-3.2.1.slim.min.js"></script>         <!-- https://jquery.com/ -->    
                                    <script src="slick/slick.min.js"></script>                  <!-- http://kenwheeler.github.io/slick/ -->  
                                    <script src="js/anime.min.js"></script>                     <!-- http://animejs.com/ -->
                                    <script src="js/main.js"></script>  
                                    <script>

                                    function setupFooter() {
                                        var pageHeight = $('.tm-site-header-container').height() + $('footer').height() + 100;

                                        var main = $('.tm-main-content');

                                        if ($(window).height() < pageHeight) {
                                            main.addClass('tm-footer-relative');
                                        }
                                        else {
                                            main.removeClass('tm-footer-relative');
                                        }
                                    }

                                    /* DOM is ready
                                     ------------------------------------------------*/
                                    $(function() {

                                        setupFooter();

                                        $(window).resize(function() {
                                            setupFooter();
                                        });

                                        $('.tm-current-year').text(new Date().getFullYear());  // Update year in copyright           
                                    });

                                    </script>    
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

                                    <%    }

                                    %>