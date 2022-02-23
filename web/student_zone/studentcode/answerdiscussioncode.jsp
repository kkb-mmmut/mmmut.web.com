<%-- 
    Document   : answerdiscussion
    Created on : 30 Aug, 2020, 4:19:37 PM
    Author     : KAMLESH BINDRA
--%>
<%@page import="java.sql.ResultSet"%> 
<%@page import="mypack.DbManager"%>
<%
    String qid=request.getParameter("qid");
    String answertext=request.getParameter("answertext");
    String answeredby=session.getAttribute("studentid").toString();
    String student=session.getAttribute("studentid").toString();
    DbManager dm=new DbManager();
    String query1="select name from login where userid ='"+student+"'";
    ResultSet rs=dm.selectQuery(query1);
    rs.next();
    String studentname=rs.getString("name");
    String posteddate=dm.getDate();
    String query="insert into answerdiscussion(answer,answeredby,name,qid,posteddate) values('"+answertext+"','"+answeredby+"','"+studentname+"','"+qid+"','"+posteddate+"')";
    if(dm.nonQuery(query)==true)
    {
        out.print("<script>alert('Answer is posted!');window.location.href='../studenthome.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Answer is not posted!');window.location.href='../studenthome.jsp';</script>");
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
%>
