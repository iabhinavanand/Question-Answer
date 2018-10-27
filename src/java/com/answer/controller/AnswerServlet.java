package com.answer.controller;

import com.answer.bean.AnswerBean;
import com.answer.dao.AnswerDao;
import com.login.bean.UserLoginBean;
import com.login.util.ConnectionProvider;
import com.post.bean.QuestionBean;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AnswerServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            String op = request.getParameter("op");
            if (op.equals("addanswer")) 
            {
              //String heading = request.getParameter("heading");
              //String content = request.getParameter("content");
              //String code = request.getParameter("code");
              //String lang = request.getParameter("lang");
                
              String contentofanswer= request.getParameter("data");
              int postsId = Integer.parseInt(request.getParameter("postId"));
               
//                String content = request.getParameter("data");
  //              int postId = Integer.parseInt(request.getParameter("postId"));
                HttpSession s = request.getSession();
                
                UserLoginBean user = (UserLoginBean) s.getAttribute("current-user");
                
                
                
              //  AnswerBean answer = new AnswerBean(contentofanswer,postsId,user.getUid());
               // QuestionBean question = new QuestionBean(heading, content, code, lang);
  //              AnswerDao pdao = new AnswerDao(ConnectionProvider.getConnection());

//                Map<String, String> msg = new HashMap();
                
              /*  if (pdao.PostAnswer(answer,question, user.getUid())) 
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
        } catch (Exception e) {
            e.printStackTrace();
        }*/
                try {
                    Connection con = ConnectionProvider.getConnection();
                    PreparedStatement ob = con.prepareStatement("insert into answersrecords(ans_content,p_id,u_id) values(?,?,?)");
                    ob.setString(1,contentofanswer);
                    ob.setInt(2, postsId);
                    ob.setInt(3, user.getUid());
                    ob.executeUpdate();
                    out.print("Success!");
                } catch (SQLException e)
                {
                    e.printStackTrace();
                    out.print("Error!");
                }
                
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
