<%-- 
    Document   : deletecomplain
    Created on : 10 Aug, 2021, 8:01:03 PM
    Author     : KAMLESH BIND
--%>
 
<%@page import="mypack.DbManager"%>
<% 
    String id=request.getParameter("id");
    DbManager dm=new DbManager();
    String query="delete from complain where id='"+id+"'";
    if(dm.nonQuery(query)==true)
    {
        out.print("<script>alert('Complaint is deleted!');window.location.href='../facultyhome.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Complain is not deleted!');window.location.href='../facultyhome.jsp';</script>");
    }
%>
