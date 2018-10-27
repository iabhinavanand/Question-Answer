
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.List"%>
<%@page import="com.login.bean.UserLoginBean"%>
<%@page import="com.login.dao.LoginDao"%>
<%@page import="com.login.util.ConnectionProvider"%>
<%@page import="com.post.dao.PostDao"%>
<%@page import="com.post.bean.QuestionBean"%>
<%
    String op = request.getParameter("op");
    int uid = Integer.parseInt(request.getParameter("uid"));

    Thread.sleep(2000);

    if (op.equals("allpost")) {

%>



<div class="row">


    <%        PostDao pdao = new PostDao(ConnectionProvider.getConnection());

        List<QuestionBean> qlist = pdao.getAllQuestion();
        for (QuestionBean q : qlist) {

            LoginDao udao = new LoginDao(ConnectionProvider.getConnection());
            UserLoginBean u = udao.getUserById(q.getUid());


    %>


    <div class=" col-sm-8 ">
        <div class="card my-3  ">
            <div class="card-header bg-info text-white">
                <div class="card-title"><strong><%= u.getUfirstname()%>&nbsp;<%= u.getUsurname()%></strong> has posted

                    <div class="float-right">
                        <%
                            java.util.Date d = new java.util.Date(q.getDatetime().getTime());


                        %>


                        <%= DateFormat.getDateTimeInstance().format(d)%>
                    </div>
                </div>
            </div>

            <div class="card-body">
                <div class="card-title"><%= q.getHeading()%></div>
                <p class="card-text"><%= q.getContent()%></p>


                <%if (q.getCode() != null) {
                        if (q.getCode().equals("")) {
                        } else {

                %>
                <pre><code class="language-<%= q.getCodeLanguage()%>"><%= q.getCode()%></code></pre>
                    <%
                            }
                        }
                    %>
                            
                            
                            
                        </div>

                 
            <%
                }


            %>

