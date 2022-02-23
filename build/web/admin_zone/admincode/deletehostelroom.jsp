<%-- 
    Document   : deletehostelroom
    Created on : 10 Aug, 2021, 8:01:03 PM
    Author     : KAMLESH BIND
--%>
 

<%@page import="mypack.DbManager"%>
<% 
    String roomid=request.getParameter("id");
    DbManager dm=new DbManager();
    String query="delete from hostel where roomnumber='"+roomid+"'";
    if(dm.nonQuery(query)==true)
    {
        out.print("<script>alert('Room is deleted! Successfully...');window.location.href='../adminhome.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Room is not deleted!');window.location.href='../adminhome.jsp';</script>");
    }
%>


