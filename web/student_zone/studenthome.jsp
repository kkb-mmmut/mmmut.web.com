<%-- 
    Document   : studenthome
    Created on : 27 Aug, 2020, 2:49:29 PM
    Author     : KAMLESH BINDRA
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%
    if (session.getAttribute("studentid") == null || session.getAttribute("studentid") == "") {
        response.sendRedirect("../index.jsp");
    } else {

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>

            .fourth-content textarea {
                margin-bottom: 20px;
                padding-left: 15px;
                width: 100%;
                max-width: 100%;
                max-height: 180px;
                height: 140px;
                display: inline-block;
                line-height: 40px;
                font-size: 13px;
                color: #aaa;
                background-color: #f4f4f4;
                border: none;
                outline: none!important;
                border-radius: 0;
                box-shadow: none;
            }

            .fourth-content textarea:focus {
                outline: none!important;
                box-shadow: none;
            }

            .fourth-content button {
                display: inline-block;
                background-color: #00c4c7;
                color: #343434;
                font-size: 13px;
                padding: 12px 18px;
                border-radius: 3px;
                text-decoration: none;
                outline: none;
                margin-bottom: 0px;
            }

            .fourth-content button:hover {
                background-color: transparent;
                border: 1px solid #00c4c7;
                -moz-transition: all 0.2s linear;
                -o-transition: all 0.2s linear;
                -webkit-transition: all 0.2s linear;

            }
            .fourth-content table {

                margin-top:20px;
            }
    
 
@media print {
	 
	.printme  {
		display: block;
	}
        .print-disable {
            visibility: hidden;
        }
}
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- Favicon -->
        <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">

        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

        <!-- Site Metas -->
        <title>MMMUT:STUDENT : HOME</title>
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
                            <a class="navbar-brand" href="index.html"><img src="images/logo.png" alt="image"></a>
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
                        <li class="selected"><a href="#0"><div class="image-icon"><img src="images/student-icon.png"></div><h6>Welcome</h6></a></li>
                        <li><a href="#0"><div class="image-icon"><img src="images/progress-icon.png"></div><h6>Progress</h6></a></li>
                        <li><a href="#0"><div class="image-icon"><img src="images/notes-icon.png"></div><h6>E-Notes</h6></a></li>
                        <li><a href="#0"><div class="image-icon"><img src="images/hwcw-icon.png"></div><h6>Discussion</h6></a></li>
                        <li><a href="#0"><div class="image-icon"><img src="images/compaints-icon.png"></div><h6>Complaints</h6></a></li>
                    </ul>
                </nav> 
            </div> <!-- .cd-slider-nav -->

            <ul class="cd-hero-slider">

                <li class="selected">
                    <div class="heading">
                        <%                            String student = session.getAttribute("studentid").toString();
                            DbManager ssm = new DbManager();
                            String query = "select name from login where userid ='" + student + "'";
                            ResultSet sss = ssm.selectQuery(query);
                            sss.next();
                        %>
                        <h1><% out.println("Welcome " + sss.getString("name"));%></h1>
                        <span>Welcome to Madam Mohan Malviya University of Technology</span>
                    </div>
                    <div class="cd-full-width first-slide">


                        <div class="cd-half-width fivth-slide">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="content fivth-content" id="print">

                                            <div class="col-md-12" style="text-align: center;">

                                                <h2>It's all about U</h2>

                                            </div>

                                            <div class="row">
                                                <div class="col-md-9">
                                                    <table class="table table-striped table-responsive-md">
                                                        <%
                                                            String stu = session.getAttribute("studentid").toString();
                                                            DbManager sssm = new DbManager();
                                                            String query1 = "select * from register where enrollmentid ='" + stu + "'";
                                                            ResultSet ssss = sssm.selectQuery(query1);
                                                            ssss.next();
                                                        %>
                                                        <tbody>
                                                            <tr>
                                                                <th scope="row">NAME</th>
                                                                <td><%=ssss.getString("firstname")%>&nbsp;<%=ssss.getString("secondname")%></td>
                                                                <th scope="row">D-O-B</th>
                                                                <td><%=ssss.getString("dob")%></td> 
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">FATHER NAME</th>
                                                                <td><%=ssss.getString("fathername")%></td>
                                                                <th scope="row">MOTHER NAME</th>
                                                                <td><%=ssss.getString("mothername")%></td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">AADHAR</th>
                                                                <td><%=ssss.getString("aadharcard")%></td>
                                                                <th scope="row">MOBILE NUMBER</th>
                                                                <td><%=ssss.getString("mobilenumber")%></td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">E-MAIL</th>
                                                                <td><%=ssss.getString("emailaddress")%></td>
                                                                <th scope="row">ENROLLMENT ID</th>
                                                                <td><%=ssss.getString("enrollmentid")%></td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">BRANCH</th>
                                                                <td colspan="3"><%=ssss.getString("branch")%></td> 
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">COLLEGE NAME</th>
                                                                <td colspan="3"><%=ssss.getString("collegename")%> </td>  
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">HOME ADDRESS</th>
                                                                <td colspan="3"> <%=ssss.getString("permaaddress")%></td>  
                                                            </tr>
                                                        </tbody>
                                                    </table> 
                                                </div>
                                                <div class="col-md-3"> 
                                                    <img class="img-responsive" src="<%=request.getContextPath() + "/uploadprofilepic/" + ssss.getString("profilephoto")%>" height="250px" width="200px" alt="img not found"  >

                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12" style='text-align:center;'>
                                                    <div class="primary-button" >
                                                        <a href="#" onclick="printdocs()">Print Profile</a>
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

                <script type="text/javascript">

                    function printdocs() {
                        var divContents = document.getElementById("print").innerHTML;
                        var a = window.open('', '', 'height=800, width=600');
                        a.document.write('<html>');
                        a.document.write('<body > <img> <h1> <br>');
                        a.document.write(divContents);
                        a.document.write('</body></html>');
                        a.document.close();
                        a.print();
                        document.body.innerHTML = oldPage;
                    }

                    function printrep() {
                        var divContents = document.getElementById("printreport").innerHTML;
                        var a = window.open('', '', 'height=800, width=600');
                        a.document.write('<html>');
                        a.document.write('<body > <img> <h1> <br>');
                        a.document.write(divContents);
                        a.document.write('</body></html>');
                        a.document.close();
                        a.print();
                        document.body.innerHTML = oldPage;
                    }

                </script>



                <li>
                    <div class="heading">
                        <h1>YOUR PROGRESS</h1>
                        <span>IF DOUBT WRITE A COMPLAINT</span> 
                    </div>
                    <div class="cd-half-width fourth-slide ">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="content fourth-content"> 
                                        <div class="row printme" id="printreport">


                                            <div class="col-12">

                                                <div class="col-md-12" style="text-align: center;">
                                                    <h2>Progress Report</h2>
                                                    <hr style="display: block;width: 30%;margin-bottom: 0.5em;margin-top: 0.5em;margin-left: auto;margin-right: auto;border-style: inset;border-width:3px;background-color: #00c4c7;">
                                                </div>

                                                <div class="row">
                                                    <div class="col-md-1 " style="text-align: center;">
                                                        <img   src="images/srgplogoresult.png" alt="Image not available" style="margin-left: 50px; "> 
                                                    </div>
                                                    <div class="col-md-11" style="text-align: center;">
                                                        <h2>Madan Mohan Malviya University of Technology</h2>
                                                        <h5>Gorakhpur</h5> 
                                                    </div> </div>


                                                <div class="row">
                                                    <div class="col-md-9">
                                                        <table class="table table-responsive-md">

                                                            <tbody>
                                                                <tr>
                                                                    <th scope="row">NAME</th>
                                                                    <td><%=ssss.getString("firstname")%>&nbsp;<%=ssss.getString("secondname")%></td>
                                                                    <th scope="row">D-O-B</th>
                                                                    <td><%=ssss.getString("dob")%></td> 
                                                                </tr>
                                                                <tr>
                                                                    <th scope="row">FATHER NAME</th>
                                                                    <td><%=ssss.getString("fathername")%></td>
                                                                    <th scope="row">Enrollment Id</th>
                                                                    <td><%=ssss.getString("enrollmentid")%></td>
                                                                </tr>


                                                                <tr>
                                                                    <th scope="row">BRANCH</th>
                                                                    <td colspan="3"><%=ssss.getString("branch")%></td> 
                                                                </tr>
                                                                <tr>
                                                                    <th scope="row">COLLEGE NAME</th>
                                                                    <td colspan="3"><%=ssss.getString("collegename")%> </td>  
                                                                </tr>

                                                            </tbody>
                                                        </table> 
                                                    </div>
                                                    <div class="col-md-3">
                                                        <table class="table table-striped table-responsive-md">

                                                            <tbody>
                                                                <tr ><img class="img-responsive" src="<%=request.getContextPath() + "/uploadprofilepic/" + ssss.getString("profilephoto")%>" height="200px" width="180px" alt="img not found" style="margin-top:20px;"  ></tr>
                                                            </tbody>
                                                        </table>

                                                    </div>   

                                                    <table class="table table-responsive-md">
                                                        <thead class="thead-light">

                                                            <tr>
                                                                <th scope="col">CODE</th>
                                                                <th scope="col">SUBJECT NAME / OTHERS</th>
                                                                <th scope="col">MAXIMUM MARKS</th> 
                                                                <th scope="col">MINIMUM MARKS</th>
                                                                <th scope="col">OBTAINED MARKS </th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <%
                                                            String reu = session.getAttribute("studentid").toString();
                                                            DbManager resm = new DbManager();
                                                            String queryres = "select * from result where enrollmentid ='" + reu + "'";
                                                            ResultSet ress = resm.selectQuery(queryres);
                                                             
                                                            while (ress.next()) {
                                                        %>
                                                            <tr>
                                                                <td><%=ress.getString("subjectcode")%></td>
                                                                <td><%=ress.getString("subjectname")%></td>
                                                                <td><%=ress.getString("maximummarks")%></td> 
                                                                <td><%=ress.getString("minimummarks")%></td>
                                                                 <td><%=ress.getString("obtainedmarks")%></td>
                                                            </tr>
                                                            <%
                                                            }
                                                            %>
                                                        </tbody>
                                                    </table>      
                                                </div>
                                            </div></div>
                                            <div class="row">
                                                <div class="col-md-12" style='text-align:center;'>
                                                    <div class="primary-button" >
                                                        <a href="#" onclick="printrep()">Print Report</a>
                                                    </div>

                                                </div>
                                            </div><br><br>
                                            <div class="row print-disable">
                                                <div class="col-md-12" style="text-align: center;">
                                                     
                                                    <a class="btn btn-link btn-block text-left collapsed"  data-toggle="collapse" data-target="#timetable" aria-expanded="false" aria-controls="collapseThree" >
                                                       <h2 style="text-align:center; "> SHOW TIMETABLE</h2>
                                                    </a>
                                                </div>
                                                <hr style="display: block;width: 30%;margin-bottom: 0.5em;margin-top: 0.5em;margin-left: auto;margin-right: auto;border-style: inset;border-width:3px;background-color: #00c4c7;">
                                                <div class="col-12 collapse" id="timetable" aria-labelledby="headingThree" data-parent="#accordionExample">
                                                    <%
                                                        DbManager vtm = new DbManager();
                                                        ResultSet vts = vtm.selectQuery("select * from timetable");
                                                        while (vts.next()) {

                                                    %>
                                                    <div class="col-md-12" style="text-align: center;">
                                                        <h2><%=vts.getString("branch")%></h2>
                                                    </div>
                                                    <table class="table table-responsive-md">
                                                        <thead class="thead-light">

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
                                                                <td><%=vts.getString("mondayone")%></td>
                                                                <td><%=vts.getString("mondaytwo")%></td>
                                                                <td> <b>L</b></td>
                                                                <td><%=vts.getString("mondaythree")%></td>
                                                                <td><%=vts.getString("mondayfour")%></td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">TUESDAY</th>
                                                                <td><%=vts.getString("tuesdayone")%></td>
                                                                <td><%=vts.getString("tuesdaytwo")%></td>
                                                                <td><b>U</b></td>
                                                                <td><%=vts.getString("tuesdaythree")%></td>
                                                                <td><%=vts.getString("tuesdayfour")%></td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">WEDNESDAY</th>
                                                                <td><%=vts.getString("wednesdayone")%></td>
                                                                <td><%=vts.getString("wednesdaytwo")%></td>
                                                                <td><b>--</b></td>
                                                                <td><%=vts.getString("wednesdaythree")%></td>
                                                                <td><%=vts.getString("wednesdayfour")%></td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">THRUSDAY</th>
                                                                <td><%=vts.getString("thrusdayone")%></td>
                                                                <td><%=vts.getString("thrusdaytwo")%></td>
                                                                <td><b>N</b></td>
                                                                <td><%=vts.getString("thrusdaythree")%></td>
                                                                <td><%=vts.getString("thrusdayfour")%></td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">FRIDAY</th>
                                                                <td><%=vts.getString("fridayone")%></td>
                                                                <td><%=vts.getString("fridaytwo")%></td>
                                                                <td> <b>C</b></td>
                                                                <td><%=vts.getString("fridaythree")%></td>
                                                                <td><%=vts.getString("fridayfour")%></td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">SATURDAY</th>
                                                                <td><%=vts.getString("saturdayone")%></td>
                                                                <td><%=vts.getString("saturdaytwo")%></td>
                                                                <td><b>H</b></td>
                                                                <td><%=vts.getString("saturdaythree")%></td>
                                                                <td><%=vts.getString("saturdayfour")%></td>
                                                            </tr>
                                                        </tbody>
                                                    </table> <hr style="display: block;margin-bottom: 0.5em;margin-top: 0.5em;margin-left: auto;margin-right: auto;border-style: inset;border-width:3px;background-color: #00c4c7;">
                                                    <%
                                                        }
                                                    %>

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
                        <h1>E-Notes</h1>
                        <span>WE PROVIDE THE BEST NOTES TO STUDY AND TO IMPROVE YOUR STUDY</span> 
                    </div>
                    <div class="cd-half-width third-slide">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="content third-content">

                                        <div class="row">
                                            <%
                                                DbManager um = new DbManager();
                                                ResultSet us = um.selectQuery("select * from elibrary");
                                                while (us.next()) {

                                            %>
                                            <div class="col-md-4 col-sm-6 col-xs-12">

                                                <div class="card text-center border-info " style="min-height:200px;margin-top:20px;" >
                                                    <div class="card-body">
                                                        <h5 class="card-title"><%=us.getString("ebookname")%></h5>
                                                        <p class="card-text"><%=us.getString("ebookdescription")%></p>
                                                        <a class="btn btn-info" target="blank" href="<%=request.getContextPath() + "/uploadfiles/" + us.getString("filename")%>">View/Download</a>
                                                    </div>
                                                </div> 
                                            </div>
                                            <%
                                                }
                                            %>

                                        </div>

                                    </div>                  
                                </div>
                            </div>
                            </li>

                            <li>
                                <div class="heading">
                                    <h1>DISCUSSION BOARD</h1>
                                    <span>DO YOU WANT TO POST YOU CONFUSION ?? WE PROVIDE YOU A DISCUSSION BOARD TO GET YOU RESULT EASILY !!</span> 
                                </div>
                                <div class="cd-half-width fourth-slide ">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="content fourth-content">
                                                    <div class="row">
                                                        <div class="col-md-12 fas">
                                                            <form id="contact" action="studentcode/discussioncode.jsp" method="post">
                                                                <div class="col-md-12">
                                                                    <fieldset>
                                                                        <textarea name="discussionquestion" rows="3" class="form-control" id="discussion" placeholder="Add you qusetion , disscuss accross wide range of students." required=""></textarea>
                                                                    </fieldset>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <fieldset>
                                                                        <button type="submit" id="form-submit" class="btn">Post Question</button>
                                                                    </fieldset>
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
                                                                        <th scope="col">Questions</th>
                                                                        <th scope="col">Posted Date</th>
                                                                        <th scope="col">View Answers</th>
                                                                        <th scope="col">Post Answer</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <%
                                                                        DbManager dm = new DbManager();
                                                                        ResultSet rs = dm.selectQuery("select * from discussion");
                                                                        while (rs.next()) {


                                                                    %>
                                                                    <tr>
                                                                        <th scope="row"><%=rs.getString("enrollmentid")%></th>
                                                                        <td><%=rs.getString("questiontext")%></td>
                                                                        <td><%=rs.getString("posteddate")%></td>
                                                                        <td><a href="viewanswer.jsp?qid=<%=rs.getString("qid")%>">View</a></td>
                                                                        <td><a href="postanswer.jsp?qid=<%=rs.getString("qid")%>">Post</a></td>
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
                                    <span>You'll be responded within 48 hrs</span> 
                                </div>
                                <div class="cd-half-width fivth-slide">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="content fivth-content">
                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <div class="left-info">
                                                                <p>Complaint Box is always active 24*7 , you can register a complaint related to any thing you want & don't hesitate we are always with you !! 
                                                                    <br><br>
                                                                    <em>Good Luck! Write if you have any Issues..<br>to MMMUT, Gorakhpur.</em>
                                                                </p>
                                                                <ul class="social-icons">
                                                                    <i><a href="#"><i class="fa fa-facebook"></i></a></i>
                                                                    <i><a href="#"><i class="fa fa-twitter"></i></a></i>
                                                                    <i><a href="#"><i class="fa fa-linkedin"></i></a></i>
                                                                    <i><a href="#"><i class="fa fa-rss"></i></a></i>
                                                                    <i><a href="#"><i class="fa fa-behance"></i></a></i>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-8">
                                                            <div class="#">
                                                                <form id="contact" action="studentcode/complaincode.jsp" method="post">

                                                                    <div class="col-md-12">
                                                                        <fieldset>
                                                                            <input name="subject" type="text" class="form-control" id="name" placeholder="Subject of Complaint" required="">
                                                                        </fieldset>
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                        <fieldset>
                                                                            <input name="mobilenumber" type="number" class="form-control" id="name" placeholder="Contact Number" required="">
                                                                        </fieldset>
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                        <fieldset>
                                                                            <textarea name="complaintext" rows="6" class="form-control" id="message" placeholder="Complaint Details" required=""></textarea>
                                                                        </fieldset>
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                        <fieldset>
                                                                            <button type="submit" id="form-submit" class="btn">Submit Complain</button>
                                                                        </fieldset>
                                                                    </div>
                                                                </form>
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


                                                        <%
                                                            }

                                                        %>