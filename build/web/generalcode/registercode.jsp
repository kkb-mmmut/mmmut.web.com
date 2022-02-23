<%--
    Document:regcode.
    Auther:Kamlesh Kumar Bind
    Created on : 3 Aug, 2019, 3:44:35 PM
    Project name:Sant Ravidas Government Polytechnic college management
--%>


<%@page import="mypack.DbManager"%>
<%

    String firstname = request.getParameter("firstname");
    String secondname = request.getParameter("lastname");
    String fathername = request.getParameter("fathername");
    String mothername = request.getParameter("mothername");
    String dob = request.getParameter("dob");
    String regdate = request.getParameter("regdate");
    String gender = request.getParameter("gender");
    String aadharcard = request.getParameter("aadharcard");
    String mobilenumber = request.getParameter("mobilenumber");
    String altmobilenumber = request.getParameter("mobilenumber2");
    String emailaddress = request.getParameter("emailaddress");
    String enrollnmentid = request.getParameter("enrollnmentid");
    String branch = request.getParameter("branch");
    String collegename = request.getParameter("collegename");
    String tempaddress = request.getParameter("tempaddress");
    String permaaddress = request.getParameter("permaaddress");
    String password = request.getParameter("password");
    DbManager dm = new DbManager();
    String registereddate = dm.getDate();
    String usertype = "student";
    String query1 = "insert into register values('" + firstname + "','" + secondname + "','" + fathername + "','" + mothername + "','" + dob + "','" + regdate + "','" + gender + "','" + aadharcard + "','" + mobilenumber + "','" + altmobilenumber + "','" + emailaddress + "','" + enrollnmentid + "','" + branch + "','" + collegename + "','" + tempaddress + "','" + permaaddress + "','" + password + "','" + usertype + "','" + registereddate + "')";
    String query2 = "insert into login(userid,password,usertype,name) values('" + enrollnmentid + "','" + password + "','" + usertype + "','" + firstname +" "+ secondname+ "')";
    if (dm.nonQuery(query1) == true) {
        if (dm.nonQuery(query2) == true) {
            out.print("<script>alert('Registration is done!');window.location.href='../index.jsp';</script>");
        }
    } else {
        out.print("<script>alert('Registration is not done!');window.location.href='../index.jsp';</script>");
    }
%> 
