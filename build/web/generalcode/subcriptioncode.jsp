<%-- 
    Document   : subcriptioncode.jsp
    Created on : 27 Aug, 2020, 2:01:44 PM
    Author     : KAMLESH BINDRA
--%>
<%@page import="mypack.SmsSender"%>
<%@page import="mypack.DbManager"%>
<%
     
    String emailaddress=request.getParameter("emailaddress");
 
    DbManager dm=new DbManager();
    String subcription_date=dm.getDate();
    String query="insert into subcription(emailaddress,subcription_date) values('"+emailaddress+"','"+subcription_date+"')";
    if(dm.nonQuery(query)==true)
    {
        SmsSender ss=new SmsSender();
        ss.sendSms( emailaddress,"Thanks for Subscription.You will get updates!!");
        out.print("<script>alert('Subcription is successfull !!');window.location.href='../index.jsp';</script>");
    }
    else
    {
         out.print("<script>alert('Please try again later!!!');window.location.href='../index.jsp';</script>");
    }
 %>
    