<%-- 
    Document   : addtimetable
    Created on : 10 Aug, 2021, 8:01:03 PM
    Author     : KAMLESH BIND
--%>

 
<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.SmsSender"%>
<%@page import="mypack.DbManager"%>
<%
    String id = request.getParameter("id");
    String branch = request.getParameter("branch");
    String mondayone = request.getParameter("mondayone");
    String mondaytwo = request.getParameter("mondaytwo");
    String mondaythree = request.getParameter("mondaythree");
    String mondayfour = request.getParameter("mondayfour");
    String tuesdayone = request.getParameter("tuesdayone");
    String tuesdaytwo = request.getParameter("tuesdaytwo");
    String tuesdaythree = request.getParameter("tuesdaythree");
    String tuesdayfour = request.getParameter("tuesdayfour");
    String wednesdayone = request.getParameter("wednesdayone");
    String wednesdaytwo = request.getParameter("wednesdaytwo");
    String wednesdaythree = request.getParameter("wednesdaythree");
    String wednesdayfour = request.getParameter("wednesdayfour");
    String thrusdayone = request.getParameter("thrusdayone");
    String thrusdaytwo = request.getParameter("thrusdaytwo");
    String thrusdaythree = request.getParameter("thrusdaythree");
    String thrusdayfour = request.getParameter("thrusdayfour");
    String fridayone = request.getParameter("fridayone");
    String fridaytwo = request.getParameter("fridaytwo");
    String fridaythree = request.getParameter("fridaythree");
    String fridayfour = request.getParameter("fridayfour");
    String saturdayone = request.getParameter("saturdayone");
    String saturdaytwo = request.getParameter("saturdaytwo");
    String saturdaythree = request.getParameter("saturdaythree");
    String saturdayfour = request.getParameter("saturdayfour");
    String userposted=session.getAttribute("adminid").toString();
    DbManager dm=new DbManager();
    String query="select name from login where userid ='"+userposted+"'";
    ResultSet rs=dm.selectQuery(query);
    rs.next();
    String name=rs.getString("name");
    String addingdate = dm.getDate();
    String query1 = "insert into timetable(branch,mondayone,mondaytwo,mondaythree,mondayfour,tuesdayone,tuesdaytwo,tuesdaythree,tuesdayfour,wednesdayone,wednesdaytwo,wednesdaythree,wednesdayfour,thrusdayone,thrusdaytwo,thrusdaythree,thrusdayfour,fridayone,fridaytwo,fridaythree,fridayfour,saturdayone,saturdaytwo,saturdaythree,saturdayfour,updatedby,date) values( '" + branch + "','" + mondayone + "','" + mondaytwo + "','" + mondaythree + "','" + mondayfour + "','" + tuesdayone + "','" + tuesdaytwo + "','" + tuesdaythree + "','" + tuesdayfour + "','" + wednesdayone + "','" + wednesdaytwo + "','" + wednesdaythree + "','" + wednesdayfour + "','" + thrusdayone + "','" + thrusdaytwo + "','" + thrusdaythree + "','" + thrusdayfour + "','" + fridayone + "','" + fridaytwo + "','" + fridaythree + "','" + fridayfour + "','" + saturdayone + "','" + saturdaytwo + "','" + saturdaythree + "','" + saturdayfour + "','" + name + "','" + addingdate + "')";
     
    if (dm.nonQuery(query1) == true) {
          
            out.print("<script>alert('TIMETABLE IS UPLOADED!');window.location.href='../adminhome.jsp';</script>");
         
    } else {
        out.print("<script>alert('TIMETABLE IS NOT UPLOADED!');window.location.href='../adminhome.jsp';</script>");
    }
%>

