<%-- 
    Document   : enquirycode
    Created on : 5 Aug, 2019, 2:31:49 PM
    Author     : Kamlesh Bind
    Page       : contact recieve from  page
--%>
<%@page import="mypack.SmsSender"%>
<%@page import="mypack.DbManager"%>
<%
    String name=request.getParameter("name"); 
    String contactno=request.getParameter("contactno");
    String emailaddress=request.getParameter("emailaddress");
    String enquirytext=request.getParameter("enquirytext");
    DbManager dm=new DbManager();
    String enquirydate=dm.getDate();
    String query="insert into enquiry(name,contactno,emailaddress,enquirytext,enquirydate) values('"+name+"','"+contactno+"','"+emailaddress+"','"+enquirytext+"','"+enquirydate+"')";
    if(dm.nonQuery(query)==true)
    {
        SmsSender ss=new SmsSender();
        ss.sendSms(contactno,"Thanks for enquiry.We will contact you soon!!" );
        out.print("<script>alert('Enquiry is saved! Successfully..');window.location.href='../index.jsp';</script>");
    }
    else
    {
         out.print("<script>alert('Enquiry is not saved!');window.location.href='../index.jsp';</script>");
    }
 %>
    
