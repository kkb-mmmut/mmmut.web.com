<%-- 
    Document   : enquirycode
    Created on : 10 Aug, 2021, 8:01:03 PM
    Author     : KAMLESH BIND
--%>
<%@page import="mypack.SmsSender"%>
<%@page import="mypack.DbManager"%>
<%
    String enrollmentid=request.getParameter("studentid"); 
     
    DbManager dm=new DbManager();
    String addingdate=dm.getDate();
    String query="insert into enrollid(enrollmentid,addingdate) values( '"+enrollmentid+"','"+addingdate+"')";
    if(dm.nonQuery(query)==true)
    {
         
        out.print("<script>alert('Enrollnment Id is adding! Successfully..');window.location.href='../adminhome.jsp';</script>");
    }
    else
    {
         out.print("<script>alert('Enrollnment Id is not saved!');window.location.href='../adminhome.jsp';</script>");
    }
 %>
    
