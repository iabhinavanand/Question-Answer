package com.post.controller;

import com.post.bean.QuestionBean;
import com.login.bean.UserLoginBean;
import com.login.util.ConnectionProvider;
import com.post.dao.PostDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class PostOperation extends HttpServlet 
{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) 

        {
         String operation = request.getParameter("operation");
            if (operation.equals("add")) 
            {
                String heading = request.getParameter("heading");
                String content = request.getParameter("content");
                String code = request.getParameter("code");
                String lang = request.getParameter("lang");
                HttpSession s = request.getSession();
                UserLoginBean user = (UserLoginBean) s.getAttribute("current-user");
                QuestionBean question = new QuestionBean(heading, content, code, lang);
                PostDao pdao = new PostDao(ConnectionProvider.getConnection());
                
                Map<String, String> msg = new HashMap();
                
                if (pdao.insertQuestion(question, user.getUid())) 
                {
                    msg.put("message", "Successfully Saved");
                    msg.put("type", "success");
                    s.setAttribute("msg", msg);

                    s.setAttribute("current-user", user);
                    response.sendRedirect("home.jsp");
                }
                else 
                {
                    msg.put("message", "Something went wrong try again!");
                    msg.put("type", "error");
                    s.setAttribute("msg", msg);
                    response.sendRedirect("home.jsp");

                }

            } 
            else if (operation.equals("like")) 
            {

            }

        } 
        catch (Exception e) 
        {
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
