<%-- 
    Document   : logincode
    Created on : 6 Aug, 2019, 3:53:27 PM
    Author     : Kamlesh Kumar Bind
    project    : E-Procurement
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%
    String userid=request.getParameter("userid");
    String password=request.getParameter("password");
    String query="select usertype from login where userid='"+userid+"'and password='"+password+"'";
    DbManager dm=new DbManager();
    ResultSet rs=dm.selectQuery(query);
    if(rs.next()==true)
    {
        String usertype=rs.getString("usertype");
        if(usertype.equals("student"))
        {
            session.setAttribute("studentid", userid);
            response.sendRedirect("../student_zone/studenthome.jsp");
            
        }
        if(usertype.equals("faculty"))
        {
            session.setAttribute("facultyid", userid);
            response.sendRedirect("../faculty_zone/facultyhome.jsp");
            
        }
        else if(usertype.equals("admin"))
        {
            session.setAttribute("adminid",userid);
            response.sendRedirect("../admin_zone/adminhome.jsp");
        }
    }
    else
    {
         out.print("<script>alert('Invalid User');window.location.href='../index.jsp';</script>");
    }
    
 %>
