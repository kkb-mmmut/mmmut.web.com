<%-- 
    Document   : events
    Created on : 10 Aug, 2021, 8:01:03 PM
    Author     : KAMLESH BIND
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%
    String title=request.getParameter("title");
    String date=request.getParameter("date");
    String time=request.getParameter("time");
    String description=request.getParameter("description"); 
    String userposted=session.getAttribute("facultyid").toString();
    DbManager dm=new DbManager();
    String query="select name from login where userid ='"+userposted+"'";
    ResultSet rs=dm.selectQuery(query);
    rs.next();
    String name=rs.getString("name");
    String posteddate=dm.getDate(); 
    query="insert into events(title,date,time,description,postedby,posteddate)values('"+title+"','"+date+"','"+time+"','"+description+"','"+name+"','"+posteddate+"')";  
    if(dm.nonQuery(query)==true)
    {
        out.print("<script>alert('Event is successfully logged & live now!!');window.location.href='../facultyhome.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Sorry, Event is not added!');window.location.href='../facultyhome.jsp';</script>");
    }
%>
 