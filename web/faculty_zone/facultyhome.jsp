<%-- 
    Document   : facultyhome
    Created on : 10 Aug, 2021, 8:01:03 PM
    Author     : KAMLESH BIND
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%
    if (session.getAttribute("facultyid") == null || session.getAttribute("facultyid") == "") {
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
        <title>MMMUT::FACULTY</title>
        <meta name="keywords" content="MMMUT,MMMUT GORAKHPUR, best engineering college,kkb.mmmut@gmail,kamlesh developer,kamleshkumarbind"/>
        <meta name="description" content="MMMUT::FACULTY ">
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

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/fontAwesome.css">
        <link rel="stylesheet" href="css/student-style.css">

        <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900" rel="stylesheet">

        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>

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
                                <li><a class="join_bt" href="logout.jsp" onclick="logout()">Logout</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>

        </header>
        <!-- End header -->


        <div class="overlay"></div>
        <section class="top-part">
            <video controls autoplay loop>
                <source src="videos/video.mp4" type="video/mp4">
                <source src="videos/video.ogg" type="video/ogg">
                Your browser does not support the video tag.
            </video>
        </section>

        <section class="cd-hero">

            <div class="cd-slider-nav">
                <nav>
                    <span class="cd-marker item-1"></span>
                    <ul>
                        <li class="selected"><a href="#0"><div class="image-icon"><img src="images/faculty-icon.png"></div><h6>Welcome</h6></a></li>
                        <li><a href="#0"><div class="image-icon"><img src="images/student-icon.png"></div><h6>Students</h6></a></li>
                        <li><a href="#0"><div class="image-icon"><img src="images/notes-icon.png"></div><h6>Add E-Notes</h6></a></li>
                        <li><a href="#0"><div class="image-icon"><img src="images/hwcw-icon.png"></div><h6>Upload Marks</h6></a></li>
                        <li><a href="#0"><div class="image-icon"><img src="images/compaints-icon.png"></div><h6>Complaints</h6></a></li>
                    </ul>
                </nav> 
            </div> <!-- .cd-slider-nav -->

            <ul class="cd-hero-slider">

                <li class="selected">
                    <div class="heading">
                        <%                             String faculty = session.getAttribute("facultyid").toString();
                            DbManager ffm = new DbManager();
                            String query = "select name from login where userid ='" + faculty + "'";
                            ResultSet ffs = ffm.selectQuery(query);
                            ffs.next();
                        %>
                        <h1><% out.println("Welcome " + ffs.getString("name"));%></h1>
                        <span>Welcome to MADAN MOHAN MALVIYA UNIVERSITY OF TECHNOLOGY</span>
                    </div>
                    <div class="cd-full-width first-slide">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="content first-content">
                                        <div class="product__description">

                                            <div class="row mb-3">
                                                <div class="col-12">
                                                    <h2 class="tm-page-title"><b>Profile Info</b></h2>        
                                                </div>
                                            </div>


                                            <div class="col-md-12">
                                                <table class="table table-striped table-responsive-md">
                                                    <%
                                                        String fac = session.getAttribute("facultyid").toString();
                                                        DbManager sssm = new DbManager();
                                                        String query1 = "select * from faculty where email ='" + fac + "'";
                                                        ResultSet ssss = sssm.selectQuery(query1);
                                                        ssss.next();
                                                    %>
                                                    <tbody>
                                                        <tr>
                                                            <th scope="row">NAME</th>
                                                            <td><%=ssss.getString("name")%> </td>
                                                            <th scope="row">CORE SUBJECT</th>
                                                            <td><%=ssss.getString("coresubject")%></td> 
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">CONTACT NO.</th>
                                                            <td><%=ssss.getString("mobilenumber")%></td>
                                                            <th scope="row">E-Mail</th>
                                                            <td><%=ssss.getString("email")%></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">DEGREE</th>
                                                            <td><%=ssss.getString("degree")%></td>
                                                            <th scope="row">ADDRESS</th>
                                                            <td><%=ssss.getString("address")%></td>
                                                        </tr> 
                                                        <tr>
                                                            <th scope="row">BRANCH</th>
                                                            <td colspan="3"><%=ssss.getString("branch")%></td> 
                                                        </tr>

                                                    </tbody>
                                                </table> 
                                            </div> 
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
                                                        <form action="facultycode/events.jsp" method="post" class="contact-form">
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
                                                            <button type="submit" value="submit" class="btn btn-primary tm-btn-submit" style="margin-bottom: 20px;">Add Event</button>
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
                                                                <%
                                                                    DbManager em = new DbManager();
                                                                    ResultSet es = em.selectQuery("select * from events order by id DESC");
                                                                    while (es.next()) {

                                                                %>
                                                                <tr>
                                                                    <th scope="row"><%=es.getString("title")%></th>
                                                                    <td><%=es.getString("description")%></td>
                                                                    <td><%=es.getString("date")%>/<%=es.getString("time")%></td>
                                                                    <td><%=es.getString("postedby")%></td>
                                                                    <td><a href="facultycode/deleteevent.jsp?id=<%=es.getString("id")%>)"> Delete</a></td>
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
                </li>

                <li>
                    <div class="heading">
                        <h1>STUDENTS</h1>
                        <span>HERE YOU CAN MANAGE ALL THE STUDENTS </span> 
                    </div>
                    <div class="cd-half-width second-slide">   
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="content second-content">
                                        <div class="row">
                                            <div class="col-12">
                                                <h2 class="tm-page-title">Students Details</h2>        
                                            </div>
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
                                                        <%   DbManager dm = new DbManager();
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
                </li>

                <li>
                    <div class="heading">
                        <h1>E-Notes</h1>
                        <span>PROVIDE THE BEST NOTES TO STUDY AND TO IMPROVE YOUR STUDY</span> 
                    </div>
                    <div class="cd-half-width third-slide">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="content third-content">
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
                                                                    <%                                                                         DbManager um = new DbManager();
                                                                        ResultSet us = um.selectQuery("select * from elibrary");
                                                                        while (us.next()) {

                                                                    %>
                                                                    <tr>
                                                                        <th scope="row"><%=us.getString("ebookname")%></th>
                                                                        <td><%=us.getString("ebookdescription")%></td>
                                                                        <td><%=us.getString("filename")%></td>
                                                                        <td><a target="blank" href="<%=request.getContextPath() + "/uploadfiles/" + us.getString("filename")%>">  Download </a></td>
                                                                        <td><a href="facultycode/deleteebookcode.jsp?id=<%=us.getString("id")%>)"> Delete</a></td>
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
                </li>

                <li>
                    <div class="heading">
                        <h1>ADD REPORTS</h1>
                        <span>UPLOAD MARKS TO BE GIVEN TO THE STUDENTS !!</span> 
                    </div>
                    <div class="cd-half-width fourth-slide">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="content fourth-content">
                                        <div class="row">
                                            <div class="col-12">
                                                <form action="facultycode/addmarkscode.jsp" method="post" class="contact-form">
                                                    <div class="row">
                                                        <div class="form-group col-md-3 col-lg-3 col-xl-3">
                                                            <input type="text" id="contact_name" name="code" class="form-control" placeholder="SUBJECT CODE"  required/>
                                                        </div>
                                                        <div class="form-group col-md-5 col-lg-5 col-xl-5 "> 
                                                            <select class="form-control" style="height:38px;text-align:center;" name="enrollmentid" required="" > 
                                                                <option selected="" value="">Enrollnment Id/User Id</option>
                                                                <%
                                                                    DbManager qm = new DbManager();
                                                                    ResultSet qs = qm.selectQuery("select * from enrollid");
                                                                    while (qs.next()) {

                                                                %>
                                                                <option value="<%=qs.getString("enrollmentid")%>" > <%=qs.getString("enrollmentid")%> </option>
                                                                <%
                                                                    }
                                                                %>
                                                            </select>
                                                        </div>
                                                        <div class="form-group col-md-4 col-lg-4 col-xl-4 ">
                                                            <input type="text" id="contact_time" name="subjectname" class="form-control" placeholder="SUBJECT NAME/ ACTIVITY"  required/>
                                                        </div>
                                                    </div> 
                                                    <div class="row">
                                                        <div class="form-group col-md-4 col-lg-4 col-xl-4">
                                                            <input type="number" id="contact_name" name="max" class="form-control" placeholder="MAXIMUM MARKS"  required/>
                                                        </div>
                                                        <div class="form-group col-md-4 col-lg-3 col-xl-4 ">
                                                            <input type="number" id="contact_date" name="min" class="form-control" placeholder="MINIMUM MARKS"  required/>
                                                        </div>
                                                        <div class="form-group col-md-4 col-lg-4 col-xl-4 ">
                                                            <input type="number" id="contact_time" name="obtained" class="form-control" placeholder="OBTAINED MARKS"  required/>
                                                        </div>
                                                    </div>
                                                    <button type="submit" value="submit" class="btn btn-primary tm-btn-submit" style="margin-bottom: 20px;">Add Number</button>
                                                </form>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-12">
                                                <table class="table table-responsive-md">
                                                    <thead class="thead-light">
                                                        <tr>
                                                            <th scope="col">CODE</th> 
                                                            <th scope="col">ENROLLMENT ID</th>
                                                            <th scope="col">SUBJECT</th>
                                                            <th scope="col">MAX</th>
                                                            <th scope="col">MIN</th>
                                                            <th scope="col">OBTAINED</th>
                                                            <th scope="col">GIVEN BY</th>
                                                            <th scope="col">DELETE</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <%
                                                            DbManager resdm = new DbManager();
                                                            ResultSet ress = resdm.selectQuery("select * from result");
                                                            while (ress.next()) {


                                                        %>
                                                        <tr>
                                                            <th scope="row"><%=ress.getString("subjectcode")%></th>
                                                            <td><%=ress.getString("enrollmentid")%></td>
                                                            <td><%=ress.getString("subjectname")%></td>
                                                            <td> <%=ress.getString("maximummarks")%> </td>
                                                            <td> <%=ress.getString("minimummarks")%> </td>
                                                            <td> <%=ress.getString("obtainedmarks")%> </td>
                                                            <td> <%=ress.getString("givenby")%> </td>
                                                            <td><a href="facultycode/deletemarkscode.jsp?id=<%=ress.getString("id")%>"> Delete</a></td>
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
                </li>

                <li>
                    <div class="heading">
                        <h1>Complaints</h1>
                        <span>All the complaints from students shown here!!</span> 
                    </div>
                    <div class="cd-half-width fivth-slide">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="content fivth-content">
                                        <div class="row">

                                            <div class="product__description">

                                                <div class="col-12">
                                                    <h2 class="tm-page-title" align="center">Overview of All Complaints</h2>        

                                                </div>

                                                <div class="col-12">


                                                    <table class="table table-responsive-md">
                                                        <thead class="thead-light">
                                                            <tr>
                                                                <th scope="col">Complaint By</th>
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
                                                                <td><a href="facultycode/deletecomplain.jsp?id=<%=cs.getString("id")%>)"> Delete</a></td>
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

                </li>
            </ul> <!-- .cd-hero-slider -->
        </section> <!-- .cd-hero -->




        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

        <script src="js/vendor/bootstrap.min.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>

        <!-- End Footer -->

        <div class="footer_bottom">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <p class="crp"><b>© Copyrights to MMMUT, Gorakhpur&trade; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  :: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2021 design & developed by KAMLESH KUMAR BIND<b></p>
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

                                    <%    }

                                    %>