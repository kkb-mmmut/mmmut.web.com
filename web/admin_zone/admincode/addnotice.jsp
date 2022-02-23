 

<%-- 
    Document   : add notice
    Created on : 10 Aug, 2021, 8:01:03 PM
    Author     : KAMLESH BIND
--%>
 
<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%
    String title=request.getParameter("title");
    String subject=request.getParameter("subject");
    String messagetext=request.getParameter("message");
    String userposted=session.getAttribute("adminid").toString();
    DbManager dm=new DbManager();
    String query="select name from login where userid ='"+userposted+"'";
    ResultSet rs=dm.selectQuery(query);
    rs.next();
    String name=rs.getString("name");
    String posteddate=dm.getDate();

    query="insert into noticeboard(title,subject,message,postedby,posteddate) values('"+title+"','"+subject+"','"+messagetext+"','"+name+"','"+posteddate+"')";  
    if(dm.nonQuery(query)==true)
    {
        out.print("<script>alert('Notice is successfully logged!');window.location.href='../adminhome.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Notice is not logged!');window.location.href='../adminhome.jsp';</script>");
    }
%>
 