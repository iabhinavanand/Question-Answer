package com.login.controller;

import com.login.util.ConnectionProvider;
import com.login.dao.LoginDao;
import com.login.bean.UserLoginBean;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet 
{

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {

        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) 
        {

    
            String UserEmail = request.getParameter("email");
            String UserPassword = request.getParameter("password");

            LoginDao dao = new LoginDao(ConnectionProvider.getConnection());

            UserLoginBean user = dao.getUserByEmailAndPassword(UserEmail, UserPassword);

            HttpSession session = request.getSession();

            //Map used to print Message whether it was Success or Failure Login!
            Map<String, String> msg = new HashMap();

            if (user == null) 
            {

                msg.put("message", "Received invalid details! Try again with the valid details. Please!");

                msg.put("type", "error");

                session.setAttribute("msg", msg);

                response.sendRedirect("Welcome to Technical Forum");

            } 
            else 
            {

                session.setAttribute("current-user", user);

                response.sendRedirect("Home Page");

            }

        } 
        catch (Exception e) 
        {
         System.out.println("Error");   
            e.printStackTrace();
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
        processRequest(request, response);
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
