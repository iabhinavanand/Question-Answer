<%@page import="java.text.DateFormat"%>
<%@page import="java.util.List"%>
<%@page import="com.login.bean.UserLoginBean"%>
<%@page import="com.login.dao.LoginDao"%>
<%@page import="com.login.util.ConnectionProvider"%>
<%@page import="com.answer.dao.AnswerDao"%>
<%@page import="com.post.dao.PostDao"%>
<%@page import="com.post.bean.QuestionBean"%>
<%
    String op = request.getParameter("op");

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

    <!--
        <div class="col-md-12">
            <div class="card my-3">
                <div class="card-header bg-info text-white">
                    <div class="card-title"><strong>HelpDesk</strong> has posted
    
                        <div class="float-right">
    <%--   <%
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
                    <%  }
                        }%>
                            
                            
                            
                        </div>

                        <div class="card-footer bg-info text-white">
                            
               
                            
                                    <button class="btn btn-outline-light text-white" style="float:right;">Answer</button>
                                    
                        </div>
                    </div> --%>
    -->






















    <div class="container-fluid">

        <div class="media">


            <div class="sg-avatar">
                <a class="pull-left" href="img/Default.png">

                    <div class="sg-avatar__image sg-avatar__image--icon"><svg class="sg-icon sg-icon--x32 sg-icon--gray"><use xlink:href="#icon-profile"></use></svg></div>
                    <!--<img class="media-object" src="img/Default.png">-->
                </a>
            </div>


            <div class="media-body">

                <h4 class="media-heading"><%= q.getHeading()%></h4>
                <p class="text-right" style="font-family: 'proxima-nova','Helvetica Neue',Helvetica,Arial,sans-serif !important; color:#585858;"><strong><%= u.getUfirstname()%>&nbsp;<%= u.getUsurname()%></strong></p>
                <p class="media-heading-content"><%= q.getContent()%></p>
                <ul class="list" style="float:right;">


                    <%
                        java.util.Date d = new java.util.Date(q.getDatetime().getTime());


                    %>


                    <li><span class="date-comment-ratings-share"><i class="fa fa-calendar"></i>&nbsp;<%= DateFormat.getDateTimeInstance().format(d)%></span></li> 
                    <li><span class="date-comment-ratings-share">&nbsp;|&nbsp;</span></li>
                    <li><span class="date-comment-ratings-share"><i class="fa fa-comment"></i> 2 comments</span></li>
                    <li><span class="date-comment-ratings-share">&nbsp;|&nbsp;</span></li>

                    <li>
                        <span class="fa fa-star date-comment-ratings-share"></span>
                        <span class="fa fa-star date-comment-ratings-share"></span>
                        <span class="fa fa-star date-comment-ratings-share"></span>
                        <span class="fa fa-star date-comment-ratings-share"></span>
                        <span class="fa fa-star-half-o date-comment-ratings-share"></span>
                        <span class="fa fa-star-o date-comment-ratings-share"></span>
                    </li>
                    <li><span class="date-comment-ratings-share">&nbsp;|&nbsp;</span></li>

                    <li style="float:right;">

                        <!-- Use Font Awesome http://fortawesome.github.io/Font-Awesome/ -->
                        <span><i class="fa fa-facebook-square date-comment-ratings-share"></i></span>
                        <span><i class="fa fa-twitter-square date-comment-ratings-share"></i></span>
                        <span><i class="fa fa-google-plus-square date-comment-ratings-share"></i></span>
                    </li>
                </ul>
            </div>
        </div>


















        <div class="horizontal-separator"></div>
    </div>

    <%                            }
    %>


    <!--  </div>-->


    <%
        }
    %>
