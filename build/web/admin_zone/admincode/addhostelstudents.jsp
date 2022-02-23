<%-- 
    Document   : addhostelstudents
    Created on : 10 Aug, 2021, 8:01:03 PM
    Author     : KAMLESH BIND
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%
    String roomnumber=request.getParameter("roomnumber");
    String studentone=request.getParameter("studentone");
    String studenttwo=request.getParameter("studenttwo");
    String studentthree=request.getParameter("studentthree");
    String studentfour=request.getParameter("studentfour"); 
    DbManager dm=new DbManager(); 
    String addeddate=dm.getDate();

    String query="insert into hostel(roomnumber,studentone,studenttwo,studentthree,studentfour,date) values('"+roomnumber+"','"+studentone+"','"+studenttwo+"','"+studentthree+"','"+studentfour+"','"+addeddate+"')";  
    if(dm.nonQuery(query)==true)
    {
        out.print("<script>alert('Room number is alloted succesfully! ');window.location.href='../adminhome.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Room allocation failed !');window.location.href='../adminhome.jsp';</script>");
    }
%>
 