<%@page import="com.like.dao.LikeDao"%>
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
    int uid = Integer.parseInt(request.getParameter("uid"));

    Thread.sleep(1000);

    if (op.equals("allpost")) {

%>


<div class="row">
    <%        PostDao pdao = new PostDao(ConnectionProvider.getConnection());

        List<QuestionBean> qlist = pdao.getAllQuestion();
        for (QuestionBean q : qlist) {

            LoginDao udao = new LoginDao(ConnectionProvider.getConnection());
            UserLoginBean u = udao.getUserById(q.getUid());


    %>


    <div class="col-sm-12">
        <div class="card my-3">
            <div class="card-header" style="background-color: #FC4445">



                <div class="dp-hole">
                    <div class="dp-spaced-inside-hole">
                        <a href="img/Default_1.png">
                            <div class="image-icon">
                                <div class="image-icon-gray-32">
                                    <!--<i class="fa fa-user-circle-o icon"></i>-->

                                    <svg class="image-icon-gray">
                                        <use xlink:href="#icon-profile">

                                            <svg viewBox="0 0 32 32" style="overflow: visible" id="icon-profile" xmlns="http://www.w3.org/2000/svg" width="100%" height="100%"><title>profile</title><path fill-rule="evenodd" d="M25.8 27.2c-.9.8-1.9 1.4-3 2-2 1.1-4.3 1.7-6.8 1.7s-4.8-.6-6.8-1.7c-1.1-.5-2.1-1.2-3-2v-.1c0-1.5.8-2.9 2.1-3.6l2.9-1.7c1.4 1.4 3.1 2.2 4.8 2.2 1.7 0 3.5-.8 4.8-2.2l2.9 1.7c1.3.7 2.1 2.1 2.1 3.6v.1zM10.4 13.5c0-3.1 2.5-5.6 5.6-5.6 3.1 0 5.6 2.5 5.6 5.6v2.8c0 3.1-2.5 6.3-5.6 6.3-3 0-5.5-3.2-5.6-6.3v-2.8zM16 0C7.2 0 0 7.2 0 16s7.2 16 16 16 16-7.2 16-16S24.8 0 16 0z">
                                            </svg>
                                            <title>Profile</title>

                                        </use>
                                    </svg>

                                </div>
                            </div>
                        </a>
                    </div>
                </div>


                <div class="card-title float-left text-left">

                    <a href="#">
                        <span style="color:black; float:left; text-align: left;">
                            <strong><%= u.getUfirstname()%>&nbsp;<%= u.getUsurname()%></strong> has posted.
                        </span>
                    </a>

                    <div class="float-right text-right pull-right ml-auto px-3 text-white">
                        <span style="text-align: right; float:right;right:0;">
                            <%
                                java.util.Date d = new java.util.Date(q.getDatetime().getTime());
                            %>


                            <%= DateFormat.getDateTimeInstance().format(d)%>
                        </span>
                    </div>
                </div>
            </div>


            <div class="card-body" style="background-color: #EDF5E1">
                <div class="card-title"><%= q.getHeading()%></div>
                <p class="card-text"><%= q.getContent()%></p>


                <%if (q.getCode() != null) {
                        if (q.getCode().equals("")) {
                        } else {

                %>
                <pre><code class="language-<%=q.getCodeLanguage()%>"><%=q.getCode()%></code></pre>
                    <%  }
                        }
                    %>

                             </div>

                                <div class="card-footer" style="background-color:#FC4445">
                                    
                <%
                    LikeDao ldao = new LikeDao(ConnectionProvider.getConnection());
                    if (ldao.checkLiked(q.getQid(), uid)) {
                %>
                                    
                                    <a class="Answer pull-left mt-0" id="l1<%=q.getQid()%>" onclick="doUnLike('<%= q.getQid()%>')"><i class="fa fa-thumbs-up"></i>&nbsp;UnLike&nbsp;<span class="Answer badge" style="color:black;">5</span></a>
                                    
                <%} else {

                %>
                
                 <a class="Answer pull-left mt-0" id="l2<%=q.getQid()%>" onclick="doLike('<%= q.getQid()%>')"><i class="fa fa-thumbs-up"></i>&nbsp;Like&nbsp;<span class="Answer badge" style="color:black;">5</span></a>
                 
                <%                     }


                %>
                                    <a class="Answer pull-left mt-0">Share</a>
                                    
                                    <button type="button" class="Answer text-white pull-right"  onclick="openAnswerBox('<%=q.getQid()%>')" style="background-color:#C38D9E">Give Here</button>
                                    <button type="button" class="Answer text-white pull-right"  onclick="openAnswerModal('<%=q.getQid()%>', '<%=q.getContent()%>')" style="background-color:#C38D9E">Show Here</button>
                                    
                                </div>
                                
                            </div>
                            
                        </div>

    <%

        }
    %>
    
</div>
    
<%
} else {
    ;
%>
    
<div class="row">

    <%
        PostDao pdao = new PostDao(ConnectionProvider.getConnection());

        List<QuestionBean> qlist = pdao.getAllQuestionByUserId(uid);
        for (QuestionBean q : qlist) {

            LoginDao udao = new LoginDao(ConnectionProvider.getConnection());
            UserLoginBean u = udao.getUserById(q.getUid());


    %>
    
    
        <div class="col-sm-12">
        <div class="card my-3">
            <div class="card-header" style="background-color: #FC4445">



                <div class="dp-hole">
                    <div class="dp-spaced-inside-hole">
                        <a href="img/Default_1.png">
                            <div class="image-icon">
                                <div class="image-icon-gray-32">
                                    <!--<i class="fa fa-user-circle-o icon"></i>-->

                                    <svg class="image-icon-gray">
                                        <use xlink:href="#icon-profile">

                                            <svg viewBox="0 0 32 32" style="overflow: visible" id="icon-profile" xmlns="http://www.w3.org/2000/svg" width="100%" height="100%"><title>profile</title><path fill-rule="evenodd" d="M25.8 27.2c-.9.8-1.9 1.4-3 2-2 1.1-4.3 1.7-6.8 1.7s-4.8-.6-6.8-1.7c-1.1-.5-2.1-1.2-3-2v-.1c0-1.5.8-2.9 2.1-3.6l2.9-1.7c1.4 1.4 3.1 2.2 4.8 2.2 1.7 0 3.5-.8 4.8-2.2l2.9 1.7c1.3.7 2.1 2.1 2.1 3.6v.1zM10.4 13.5c0-3.1 2.5-5.6 5.6-5.6 3.1 0 5.6 2.5 5.6 5.6v2.8c0 3.1-2.5 6.3-5.6 6.3-3 0-5.5-3.2-5.6-6.3v-2.8zM16 0C7.2 0 0 7.2 0 16s7.2 16 16 16 16-7.2 16-16S24.8 0 16 0z">
                                            </svg>
                                            <title>Profile</title>

                                        </use>
                                    </svg>

                                </div>
                            </div>
                        </a>
                    </div>
                </div>


                <div class="card-title float-left text-left">

                    <a href="#">
                        <span style="color:black; float:left; text-align: left;">
                            <strong><%= u.getUfirstname()%>&nbsp;<%= u.getUsurname()%></strong> has posted.
                        </span>
                    </a>

                    <div class="float-right text-right pull-right ml-auto px-3 text-white">
                        <span style="text-align: right; float:right;right:0;">
                            <%
                                java.util.Date d = new java.util.Date(q.getDatetime().getTime());
                            %>


                            <%= DateFormat.getDateTimeInstance().format(d)%>
                        </span>
                    </div>
                </div>
            </div>


            <div class="card-body" style="background-color: #EDF5E1">
                <div class="card-title"><%= q.getHeading()%></div>
                <p class="card-text"><%= q.getContent()%></p>


                <%if (q.getCode() != null) {
                        if (q.getCode().equals("")) {
                        } else {

                %>
                <pre><code class="language-<%= q.getCodeLanguage()%>"><%= q.getCode()%></code></pre>
                    <%  }
                        }
                    %>

                             </div>

                                <div class="card-footer" style="background-color:#FC4445">
                                    
                                    <a class="Answer pull-left mt-0">Like</a>
                                    <a class="Answer pull-left mt-0">Share</a>
                                    
                                    <button type="button" class="Answer text-white pull-right"  onclick="openAnswerBox('<%=q.getQid()%>')" style="background-color:#C38D9E">Give Here</button>
                                    <button type="button" class="Answer text-white pull-right"  onclick="openAnswerModal('<%=q.getQid()%>', '<%=q.getContent()%>')" style="background-color:#C38D9E">Show Here</button>
                                    
                                </div>
                                
                            </div>
                            
                        </div>

    <%

        }
    %>
    
</div>
    
<%
    }


%>
