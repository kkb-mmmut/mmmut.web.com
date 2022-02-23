<%-- 
    Document   : addfaculty
    Created on : 10 Aug, 2021, 8:01:03 PM
    Author     : KAMLESH BIND
--%>
 
<%@page import="mypack.SmsSender"%>
<%@page import="mypack.DbManager"%>
<%
    String fname=request.getParameter("facultyname"); 
    String femail=request.getParameter("facultyemail");
    String fsubject=request.getParameter("facultysubject");
    String fbranch=request.getParameter("branchname");
    String fcontact=request.getParameter("contactno");
    String fdegree=request.getParameter("degree");
    String fpassword=request.getParameter("password");
    String faddress=request.getParameter("address");
    String usertype = "faculty"; 
    DbManager dm=new DbManager();
    String addingdate=dm.getDate();
    String query1="insert into faculty(name,email,coresubject,branch,mobilenumber,degree,password,address,usertype,addingdate) values( '"+fname+"','"+femail+"','"+fsubject+"','"+fbranch+"','"+fcontact+"','"+fdegree+"','"+fpassword+"','"+faddress+"','"+usertype+"','"+addingdate+"')";
    String query2 = "insert into login(userid,password,usertype,name) values('" + femail + "','" + fpassword + "','" + usertype + "','" + fname + "')";
    if (dm.nonQuery(query1) == true) {
        if (dm.nonQuery(query2) == true) {
            SmsSender ss=new SmsSender();
            ss.sendSms(fcontact,"You are registered Successfully .Now you can login.....!!" );
            out.print("<script>alert('Faculty registration is done!');window.location.href='../adminhome.jsp';</script>");
        }
    } else {
        out.print("<script>alert('Faculty registration is failed ! ');window.location.href='../adminhome.jsp';</script>");
    }
 %>
    
