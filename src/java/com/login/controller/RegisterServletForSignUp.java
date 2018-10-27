package com.login.controller;

import com.login.bean.UserLoginBean;
import com.login.dao.LoginDao;
import com.login.util.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class RegisterServletForSignUp extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UserLoginBean user = new UserLoginBean();
        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            int UserId = user.getUid();
            String UserFirstName = request.getParameter("firstname");
            String UserSurName = request.getParameter("secondname");
            String UserEmail = request.getParameter("email");
            String UserPassword = request.getParameter("password");
            String Usermobilephonenumber = request.getParameter("usermobilephonenumber");
            String Userbirthmonth = request.getParameter("userbirthmonth");
            String Userbirthday = request.getParameter("userbirthday");
            String Userbirthyear = request.getParameter("userbirthyear");
            String Usergender = request.getParameter("usergender");
            String Userprofilepic = request.getParameter("userprofilepic");

            LoginDao userdao = new LoginDao(ConnectionProvider.getConnection());

            boolean f;
            f = userdao.insertUser(new UserLoginBean(UserId, UserFirstName, UserSurName, UserEmail, UserPassword, Usermobilephonenumber, Userbirthmonth, Userbirthday, Userbirthyear, Usergender, Userprofilepic));

            Map<String, String> msg = new HashMap();

            HttpSession session = request.getSession();

            if (f) {

                msg.put("message", "You are successfully registered!");

                msg.put("type", "success");

                session.setAttribute("msg", msg);

                response.sendRedirect("Welcome to Technical Forum");

            } else {

                msg.put("message", "Something went wrong! Try again!");

                msg.put("type", "error");

                session.setAttribute("msg", msg);

                response.sendRedirect("Welcome to Technical Forum");

            }

        } catch (Exception e) {

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
