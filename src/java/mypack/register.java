/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mypack;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author KAMLESH BINDRA
 */
@MultipartConfig
@WebServlet(name = "register", urlPatterns = {"/register"})
public class register extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet register</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet register at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         try
        {
             String firstname = request.getParameter("firstname");
            String secondname = request.getParameter("lastname");
            String fathername = request.getParameter("fathername");
            String mothername = request.getParameter("mothername");
            String dob = request.getParameter("dob");
            String regdate = request.getParameter("regdate");
            String gender = request.getParameter("gender");
            String aadharcard = request.getParameter("aadharcard");
            String mobilenumber = request.getParameter("mobilenumber");
            String altmobilenumber = request.getParameter("mobilenumber2");
            String emailaddress = request.getParameter("emailaddress");
            String enrollnmentid = request.getParameter("enrollnmentid");
            String branch = request.getParameter("branch");
            String collegename = request.getParameter("collegename");
            String tempaddress = request.getParameter("tempaddress");
            String permaaddress = request.getParameter("permaaddress");
            String password = request.getParameter("password");
            Part p=request.getPart("profilephoto");
            String profilephoto=p.getSubmittedFileName();
            InputStream is=p.getInputStream();
            DbManager dm=new DbManager();
            String registereddate = dm.getDate();
            String usertype = "student";
            String query1 = "insert into register values('" + firstname + "','" + secondname + "','" + fathername + "','" + mothername + "','" + dob + "','" + regdate + "','" + gender + "','" + aadharcard + "','" + mobilenumber + "','" + altmobilenumber + "','" + emailaddress + "','" + enrollnmentid + "','" + branch + "','" + collegename + "','" + tempaddress + "','" + permaaddress + "','" + password + "','" + usertype + "','" + profilephoto + "','" + registereddate + "')";
            String query2 = "insert into login(userid,password,usertype,name) values('" + enrollnmentid + "','" + password + "','" + usertype + "','" + firstname +" "+ secondname+ "')";
            String msg="";
            if(dm.nonQuery(query1)==true)
            {   
                if (dm.nonQuery(query2) == true) {
                File f=new File(request.getRealPath("/uploadprofilepic"),profilephoto);
                Files.copy(is, f.toPath());
                msg="Successful...!"; 
                }
            }
            else
            {
                msg="Unsuccessful...!";
            }
            response.sendRedirect("index.jsp?status="+msg);
        }
        catch(Exception ex)
        {
           response.sendRedirect("index.jsp?status="+ex);
             
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
