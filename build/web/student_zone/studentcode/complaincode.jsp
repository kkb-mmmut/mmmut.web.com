 

<%-- 
    Document   : userhome
    Created on : 6 Aug, 2019, 5:11:02 PM
    Author     : Kamlesh Kumar Bind
    Project Page name: complaint java code
    Project Name:E-Procurement
--%>
 
<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%
    String subject=request.getParameter("subject");
    String mobilenumber=request.getParameter("mobilenumber");
    String complaintext=request.getParameter("complaintext");
    String student=session.getAttribute("studentid").toString();
    String complaintid=session.getAttribute("studentid").toString();
    DbManager dm=new DbManager();
    String query="select name from login where userid ='"+student+"'";
    ResultSet rs=dm.selectQuery(query);
    rs.next();
    String name=rs.getString("name");
    String complaindate=dm.getDate();
 
    query="insert into complain(name,complainid,mobilenumber,subject,complaintext,complaindate) values('"+name+"','"+complaintid+"','"+mobilenumber+"','"+subject+"','"+complaintext+"','"+complaindate+"')";  
    if(dm.nonQuery(query)==true)
    {
        out.print("<script>alert('Compain is logged!');window.location.href='../studenthome.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Compain is not logged!');window.location.href='../studenthome.jsp';</script>");
    }
%>
 