<%-- 
    Document   : addmarkscode
    Created on : 10 Aug, 2021, 8:01:03 PM
    Author     : KAMLESH BIND
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%
    String code=request.getParameter("code");
    String enrollmentid=request.getParameter("enrollmentid");
    String subjectname=request.getParameter("subjectname");
    String max=request.getParameter("max");
    String min=request.getParameter("min"); 
    String obtained=request.getParameter("obtained"); 
    String userposted=session.getAttribute("facultyid").toString();
    DbManager dm=new DbManager();
    String query="select name from login where userid ='"+userposted+"'";
    ResultSet rs=dm.selectQuery(query);
    rs.next();
    String name=rs.getString("name");
    String posteddate=dm.getDate(); 
    query="insert into result(enrollmentid,subjectcode,subjectname,maximummarks,minimummarks,obtainedmarks,givenby,date)values('"+enrollmentid+"','"+code+"','"+subjectname+"','"+max+"','"+min+"','"+obtained+"','"+name+"','"+posteddate+"')";  
    if(dm.nonQuery(query)==true)
    {
        out.print("<script>alert('Number is successfully logged & live now!!');window.location.href='../facultyhome.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Sorry, number is not added!');window.location.href='../facultyhome.jsp';</script>");
    }
%>