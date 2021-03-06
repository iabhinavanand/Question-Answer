
<%@page import="com.answer.bean.AnswerBean"%>
<%@page import="com.answer.dao.AnswerDao"%>
<%@page import="java.text.DateFormat"%>
<%@page import="com.login.dao.LoginDao"%>
<%@page import="com.post.dao.PostDao"%>
<%@page import="java.util.List"%>
<%@page import="com.post.bean.QuestionBean"%>
<%@page import="com.login.util.ConnectionProvider"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.login.bean.UserLoginBean"%>

<%@page  errorPage="error.jsp"%>

<%
    UserLoginBean user = (UserLoginBean) session.getAttribute("current-user");
    System.out.println(user);
    if (user == null) {
        Map<String, String> msg = new HashMap();
        msg.put("message", "You are not logged in! Please Login to access the Home Page!");
        msg.put("type", "error");
        session.setAttribute("msg", msg);
        response.sendRedirect("Welcome to Technical Forum");
    }


%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">


        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.1.0/css/font-awesome.min.css"/>

        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/prism/1.15.0/themes/prism.css" rel="stylesheet" type="text/css"/>
        <link href="css/prism.css" rel="stylesheet" type="text/css"/>




        <!-- Latest compiled and minified JavaScript -->
        <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/react/15.1.0/react.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/react/15.1.0/react-dom.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js"></script>
        <script src="js/prism.js" type="text/javascript"></script>
        <link rel="stylesheet" href="//cdn.jsdelivr.net/gh/highlightjs/cdn-release@9.13.0/build/styles/default.min.css">
        <script src="//cdn.jsdelivr.net/gh/highlightjs/cdn-release@9.13.0/build/highlight.min.js"></script>

        <!--Embedding Google Fonts-->
        <link href="https://fonts.googleapis.com/css?family=Pacifico|Shrikhand|Righteous" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Chela+One|Wendy+One|Baloo+Tammudu|Cabin" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Ultra" rel="stylesheet">





        <!--Embedding Sweet Alert .js File-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.css" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.min.css" type="text/css"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.min.js"></script>


        <title><%=user.getUfirstname()%>&nbsp;<%=user.getUsurname()%> | Technical Forum</title>

        <style>
            html,
            body,
            header
            {

                margin:0px;
                padding:0px;
                background-color: #3feee6;
            }

            .navbar-brand{
                margin-left: 20px;
            }
            #navbarNavDropdown>.navbar-nav>li
            {
                margin-right: 18px;
            }
            #navbarNavDropdown>.navbar-nav>li>a{
                color:white;
                font-weight: 600;
                text-transform: uppercase;
                padding: 20px;
                margin-top: 12px;

            }
            #navbarNavDropdown>.navbar-nav>li>a:hover
            {
                color:black;
            }
            #nextbtn
            {

                background-color: #fff;
                padding: 8px 40px;
                font-weight: 600;
                color: #222;
                box-shadow: 0px 20px 20px 0px rgba(0, 0, 0, 0.1);
                border: 1px solid transparent;
                border-radius: 20px;
                margin-top: 30px;
                display: inline-block;
            }

            #nextbtn:hover {
                border: 1px solid #fff;
                background: transparent;
                color: #fff;
            }


        </style> 

        <!--
        <script type="text/javascript">
                  // (c) 2000-2014 ricocheting.com
                  dg = new Array();
                  dg[0] = new Image();
                  dg[0].src = "img/dg0.gif";
                  dg[1] = new Image();
                  dg[1].src = "img/dg1.gif";
                  dg[2] = new Image();
                  dg[2].src = "img/dg2.gif";
                  dg[3] = new Image();
                  dg[3].src = "img/dg3.gif";
                  dg[4] = new Image();
                  dg[4].src = "img/dg4.gif";
                  dg[5] = new Image();
                  dg[5].src = "img/dg5.gif";
                  dg[6] = new Image();
                  dg[6].src = "img/dg6.gif";
                  dg[7] = new Image();
                  dg[7].src = "img/dg7.gif";
                  dg[8] = new Image();
                  dg[8].src = "img/dg8.gif";
                  dg[9] = new Image();
                  dg[9].src = "img/dg9.gif";
                  dgam = new Image();
                  dgam.src = "img/dgam.gif";
                  dgpm = new Image();
                  dgpm.src = "img/dgpm.gif";
                  function dotime() {
                      var d = new Date();
                      var hr = d.getHours(), mn = d.getMinutes(), se = d.getSeconds();
                      // set AM or PM
                      document.ampm.src = ((hr < 12) ? dgam.src : dgpm.src);
                      // adjust from 24hr clock
                      if (hr == 0) {
                          hr = 12;
                      }
                      else if (hr > 12) {
                          hr -= 12;
                      }
      
                      document.hr1.src = getSrc(hr, 10);
                      document.hr2.src = getSrc(hr, 1);
                      document.mn1.src = getSrc(mn, 10);
                      document.mn2.src = getSrc(mn, 1);
                      document.se1.src = getSrc(se, 10);
                      document.se2.src = getSrc(se, 1);
                  }
      
                  function getSrc(digit, index) {
                      return dg[(Math.floor(digit / index) % 10)].src;
                  }
      
                  window.onload = function() {
                      dotime();
                      setInterval(dotime, 1000);
                  }
      
              </script>
        -->


        <script>
            function view() {
                document.getElementById('menu-messages').setAttribute('style', 'display:block');
            }
        </script>

        <script>
            $('.menu').collapse()
        </script>
        <script>
            $('.dropdown-toggle').dropdown()
        </script>




        <script>
            jQuery(document).ready(function() {
                // executes when HTML-Document is loaded and DOM is ready
                console.log("document is ready");


                jQuery('.btn[href^=#]').click(function(e) {
                    e.preventDefault();
                    var href = jQuery(this).attr('href');
                    jQuery(href).modal('toggle');
                });



            });

        </script>

        <script>
            $('.tab-link').on('click', function(event) {
                // Prevent url change
                event.preventDefault();

                // `this` is the clicked <a> tag
                $('[data-toggle="tab"][href="' + this.hash + '"]').trigger('click');
            })
        </script>

        <script>
            $(document).ready(function() {
                function onHashChange() {
                    var hash = window.location.hash;

                    if (hash) {
                        // using ES6 template string syntax
                        $(`[data - toggle = "tab"][href = "${hash}"]`).trigger('click');
                    }
                }

                window.addEventListener('hashchange', onHashChange, false);
                onHashChange();
            });
        </script>

        <script>
            $(".tab-link").click(function() {
                $('#nav-tab:nth-child(1) a').tab('show')
            });
        </script>

        <script type="text/javascript">
            $(document).ready(function() {
                $('.dropdown-toggle').dropdown();
            });
        </script> 

        <script type="text/javascript">
            $(document).ready(function() {
                // Show hide popover
                $(".dropdown").click(function() {
                    $(this).find(".dropdown-menu").slideToggle("fast");
                });
            });
            $(document).on("click", function(event) {
                var $trigger = $(".dropdown");
                if ($trigger !== event.target && !$trigger.has(event.target).length) {
                    $(".dropdown-menu").slideUp("fast");
                }
            });
        </script>


        <script>
            var interval = setInterval(getDateTime, 1000);

            function getDateTime()
            {
                var date = new Date();
                //$("#digital-clock-of-myguardian").html(date.toLocaleTimeString());
                var time = document.getElementById('digital-clock-of-myguardian');
                time.innerHTML = date.toLocaleTimeString();
            }
        </script>

        <!--Select List Function-->
        <script>
            function mySelectListFilterFunction(SeeOnlyYourQuestions)
            {
                loadAllQuestionByuser();
            }
        </script>
    </head>


    <body onload="loadAllQuestions()">


        <!--Main Navigation-->
        <header>

            <!--Navbar-->
            <nav class="navbar navbar-expand-lg fixed-top" style="margin:0px;padding:0px;background-color:#30d1c9;">
                <div class="container-fluid">

                    <!-- Navbar brand -->
                    <a class="navbar-brand" href="index.jsp"><span style="font-family: 'Righteous', regular; color:white;">MyGuardian</span></a>

                    <!-- Collapse button -->
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbar-collapse" aria-controls="basicExampleNav"
                            aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>



                    <!-- Collapsible content -->
                    <div class="collapse navbar-collapse justify-content-end" id="basicExampleNav">


                        <div class="search">
                            <input required="" class="search-input" name="search" type="search" placeholder="What is your question?" title="Please fill out this field." data-hj-whitelist="" aria-label="Search">
                            <div class="search-icon">
                                <i class="fa fa-search" title="Search" style="cursor:pointer;"></i>
                            </div>
                        </div>


                        <!-- Links -->
                        <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
                            <ul class="navbar-nav">


                                <li class="nav-item active">
                                    <a class="nav-link " href="home.jsp">Home <span class="sr-only">(current)</span></a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="#menu" title="What is your question?" data-toggle="collapse">
                                        Ask
                                    </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="blog.jsp" title="Blog Here">
                                        Blog
                                    </a>
                                </li>




                                <li class="nav-item">

                                    <a class="nav-link" href="#menu-messages" title="Comments and Messages" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="collapseExample">Messages</a>
                                </li>


                                <div class="collapse" id="menu-messages">

                                    <div class="content-box">
                                        <div class="card card-body">

                                            <div class="messages-header">
                                                <h2 class="headline">
                                                    Messages
                                                </h2>
                                            </div>




                                            <div class="messages-content">
                                                <div class="scrollable">
                                                    <ul class="scrollable-list">

                                                    </ul>
                                                    <div class="scrollable-empty">
                                                        No messages
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="content-box-button" style="float:center;text-align: center;">
                                                <a href="/messages" class="inbox-button" style="float:center;text-align:center;">
                                                    Inbox
                                                </a>
                                            </div>


                                        </div>
                                    </div>
                                </div>




                                <li class="nav-item">

                                    <a class="nav-link digital-clock" href="#" title="Discussion">
                                        Notifications
                                    </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" id="digital-clock-of-myguardian" href="#">Disabled</a>
                                </li>




                                <li class="nav-item dropdown">


                                    <!--Removing the dropdown toggle class removes arrow from Navbar OPTIONS LINK( the dropdown link)-->
                                    <a class="nav-link" href="#" title="<%= user.getUfirstname()%>&nbsp;<%= user.getUsurname()%>" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">

                                        <div>
                                            <svg class="image-icon-gray">
                                            <use xlink:href="#icon-profile">

                                            <svg viewBox="0 0 32 32" style="overflow: visible" id="icon-profile" xmlns="http://www.w3.org/2000/svg" width="100%" height="100%"><title>profile</title><path fill-rule="evenodd" d="M25.8 27.2c-.9.8-1.9 1.4-3 2-2 1.1-4.3 1.7-6.8 1.7s-4.8-.6-6.8-1.7c-1.1-.5-2.1-1.2-3-2v-.1c0-1.5.8-2.9 2.1-3.6l2.9-1.7c1.4 1.4 3.1 2.2 4.8 2.2 1.7 0 3.5-.8 4.8-2.2l2.9 1.7c1.3.7 2.1 2.1 2.1 3.6v.1zM10.4 13.5c0-3.1 2.5-5.6 5.6-5.6 3.1 0 5.6 2.5 5.6 5.6v2.8c0 3.1-2.5 6.3-5.6 6.3-3 0-5.5-3.2-5.6-6.3v-2.8zM16 0C7.2 0 0 7.2 0 16s7.2 16 16 16 16-7.2 16-16S24.8 0 16 0z">
                                            </svg>
                                            <title>Profile</title>

                                            </use>
                                            </svg>
                                        </div>



                                    </a>

                                    <div class="user-profile">
                                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                            <li class="menu-list-element">
                                                <a class="dropdown-item menu-list-link" href="#">View Profile</a>
                                            </li>
                                            <li class="dropdown-divider"></li>

                                            <li menu-list-element>
                                                <a class="dropdown-item menu-list-link" href="editprofile.jsp">Edit Profile</a>
                                            </li>
                                            <li class="dropdown-divider"></li>

                                            <li menu-list-element>
                                                <a class="dropdown-item menu-list-link" href="LogoutServlet">Logout</a>
                                            </li>

                                            <li class="dropdown-divider"></li>

                                            <li menu-list-element>
                                                <a class="dropdown-item menu-list-link" onclick="loadAllQuestionByuser()" href="">See Your Questions</a>
                                            </li>
                                        </ul>
                                        <!--<ul>
                                            <li class="menu-item menu-item-type-post_type menu-item-object-page current-menu-ancestor current-menu-parent current_page_parent current_page_ancestor menu-item-has-children menu-item-114">
                                                <i class="fa fa-chevron-circle-down">

                                                </i>

                                                <a href="#">
                                                    Profile
                                                </a>

                                                <ul class="sub-menu">
                                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2188">
                                                        <a href="#">Users</a>
                                                    </li>
                                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-12 current_page_item menu-item-2189 active ">
                                                        <a href="#">Questions Listing</a>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                        -->
                                    </div>

                                </li>




                        </div>


                    </div>

                    </li>
                    </ul>
                </div>
                </div>
                </div>
            </nav>
            <!--/Navbar-->
        </header>


        <%
            Map<String, String> p = (Map) session.getAttribute("msg");
            if (p != null) {

                String message = p.get("message");
                String type = p.get("type");
                String temp = "danger";
                if (type.equals("success")) {
                    temp = "success";
                }
        %>

        <div class="alert alert-<%= temp%> alert-dismissible mb-0">
            <button type="button" class="close" data-dismiss="alert">&times;</button>
            <strong><%= message%></strong> 
        </div>

        <%
                session.removeAttribute("msg");
            }

        %>


        <div class="container-fluid">


            <div class="row mt-4" style="padding-top:50px;">

                <!--Column with first 2 section grids!-->
                <div class="col-sm-2 pt-4 listoftopicsonleft disable-mobile left-sidebar">

                    <div class="subject-list">

                        <div class="subject-active">
                            <div class="subject-list-icon">

                                <i class="fa fa-globe"></i>

                            </div>

                            <div class="subject-list-name">
                                <div class="text-subject">
                                    All subjects
                                </div>

                            </div>

                        </div>

                        <div class="subject-list-other-than-active">
                            <div class="subject-list-icon">
                                <!--<svg class="subject-icon-small">
                                <use xlink:href="#icon-subject-mono-language"></use>
                            </svg>-->

                                <i class="fa fa-desktop"></i>

                                <div class="subject-list-name">
                                    <div class="text-subject">
                                        <a href="#nav-allposts" class="tab-link" data-toggle="tab">Technical</a>
                                    </div>

                                </div>

                            </div>
                        </div>

                        <div class="subject-list-other-than-active">
                            <div class="subject-list-icon">
                                <i class="fa fa-users"></i>

                                <div class="subject-list-name">
                                    <div class="text-subject">
                                        Non-Technical
                                    </div>

                                </div>

                            </div>
                        </div>

                    </div>

                    <div class="horizontal-separator">

                    </div>


                    <div class="copyright text-center">
                        ©2018  <br>
                        <a href="#">Terms &amp; Privacy</a>
                    </div>


                </div>



                <!--Column with 7 remaining section grids!-->
                <div class="col-sm-7 pt-4">

                    <div class="row select-category">
                        <div itemprop="mainEntityOfPage" class="col-md-6 col-xs-6 current-category">
                            <span itemprop="name">All Questions</span>
                        </div>
                        <div class="col-md-6 col-xs-6">
                            <div class="select-categories-wrapper">
                                <div class="outer-filter-wrapper">
                                    <div class="select-categories-filter">
                                        <span class="label-filter">Filter by</span>
                                        <div class="select-categories">
                                            <select name="cat" id="move_to_category" class="select-grey-bg chosen-select" onchange="mySelectListFilterFunction((this.value))">
                                                <option value="">Select Categories</option>
                                                <option class="level-0" value="Technology">Technology</option>
                                                <option class="level-0" value="Non-Technology">Non-Technology</option>
                                                <option class="level-0" value="SeeOnlyYourQuestions">
                                                    Others
                                                    <!--<a onclick="loadAllQuestionByUser()">Others</a>-->
                                                </option>
                                            </select>



                                        </div>
                                    </div>

                                    <div class="filter-by-select">
                                        <select class="filter-select-type select-grey-bg chosen-select" name="" id="">
                                            <option value="/?qtype=all">All</option>
                                            <option value="/?qtype=poll">Poll</option>
                                            <option value="/?qtype=normal">Normal</option>
                                        </select>


                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="mb-3"></div>

                    <div class="row select-category">
                        <div class="col-md-6 col-xs-6 pull-left">
                            <nav>
                                <div class="nav nav-pills nav-justified btn-group" id="tab" role="tablist group">

                                    <a class="nav-item nav-link active btn btn-large btn" id="nav-all-posts" data-toggle="tab" href="#nav-allposts" role="tab" aria-controls="nav-all-posts" aria-selected="false">All Posts</a>
                                    <a class="nav-item nav-link btn btn-large btn" id="nav-following-posts" data-toggle="tab" href="#nav-following" role="tab" aria-controls="nav-following-posts" aria-selected="false">Following</a>

                                    <a class="nav-item nav-link btn btn-large btn" id="nav-unanswered-posts" data-toggle="tab" href="#nav-unanswered" role="tab" aria-controls="nav-unanswered-posts" aria-selected="false" onclick="loadAllQuestionsByUser()">Unanswered</a>
                                    <!--  <ul class="dropdown-menu">
  
                                          <li><a class="dropdown-links" href="#ALL">All</a></li>
                                          <li class="dropdown-divider"></li>
                                          <li><a class="dropdown-links" href="#ANSWER_NEEDED">Unanswered</a></li>
                                          <li class="dropdown-divider"></li>
                                          <li><a class="dropdown-links" href="#CAN_ANSWER">Being Answered</a></li>
                                          <li class="dropdown-divider"></li>
                                          <li><a class="dropdown-links" href="#ANSWERED">Answered</a></li>
                                      </ul>-->
                                </div>

                            </nav>
                        </div>

                        <div class="col-md-6 col-xs-6 pull-right float-right text-right">
                            <div class="select-categories-wrapper">
                                <div class="outer-filter-wrapper">
                                    <div class="select-categories-filter">
                                        <span class="label-filter">Questions Per Page:</span>
                                        <div class="filter-by-Questionsperpage">
                                            <select class="filter-select-type select-grey-bg chosen-select" name="" id="">
                                                <option value="/?qtype=all">20</option>
                                                <option value="/?qtype=poll">15</option>
                                                <option value="/?qtype=normal">12</option>
                                                <option value="/?qtype=normal">10</option>
                                                <option value="/?qtype=normal">5</option>
                                            </select>


                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="tab-content" id="tabContent">
                        <div class="tab-pane fade show active" id="nav-allposts" role="tabpanel" aria-labelledby="all-posts-tab">
                            <p><strong>Posts</strong></p>

                            <div class="loader mx-auto mt-5" style=" display: compact" id="loader">

                            </div>
                            <div id="post-container">
                            </div>
                            <!--
                            <div id="loader">
                                <div class="dot"></div>
                                <div class="dot"></div>
                                <div class="dot"></div>
                                <div class="dot"></div>
                                <div class="dot"></div>
                                <div class="dot"></div>
                                <div class="dot"></div>
                                <div class="dot"></div>
                                <div class="lading"></div>
                            </div>
                            <!--<div class="row">
    
                            <!--Loader to load questions/posts
                            <div class="loader mx-auto mt-5" style="display: compact" id="loader">

                            </div>

                            <!--Div in which the questions/posts are filtered out-->
                            <!--
                            
                            <!--</div>-->
                        </div>
                        <div class="tab-pane fade" id="nav-following" role="tabpanel" aria-labelledby="following-posts-tab">
                            <p><strong>All Following Posts</strong></p>
                        </div>
                        <div class="tab-pane fade" id="nav-unanswered" role="tabpanel" aria-labelledby="unanswered-posts-tab">
                            <p><strong>All Unanswered Posts</strong></p>

                            <div id="postbyuser-container">
                            </div>
                        </div>
                    </div>
                </div>



                <!--Column with 2 remaining section grids!-->
                <div class="col-sm-3 pt-4 disable-mobile rightdiv-sidebar">



                    <div class="col-md-11 offset-1 content-layout mt-4 pb-4">


                        <div class="header-primary-onhome" style="font-size: 1.25rem;
                             line-height: 1.5rem;">
                            What do you need to know?
                        </div>

                        <div class="wrapper">
                            <a class="btn-to-ask-question" href="#add-question-modal" data-label="home ask question" rel="nofollow" data-toggle="modal" data-target="#add-question-modal">
                                Ask your question
                            </a>
                        </div>


                    </div>

                </div>
            </div>  
        </div>




        <!--<h2>Dynamic Tabs</h2>

        <ul class="nav nav-tabs" role="tablist" id="mytab">
            
            <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#home" role="tab">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#profile" role="tab">Link</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#" role="tab">Link</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#" role="tab">Disabled</a>
            </li>
        </ul>


               
        <div class="tab-content">
            <div class="tab-pane active" id="home" role="tabpanel" aria-labelledby="home-tab">

                <div class="card">
                    <div class="card-header">
        <%--                <strong><%= u.getUfirstname()%>&nbsp;<%= u.getUsurname()%></strong> has posted!
                    </div>
                    <div class="card-body">
                        <h5 class="card-title"><%= q.getHeading()%></h5>
                        <p class="card-text"><%= q.getContent()%></p>

                                    <%if (q.getCode() != null) 
                                    {
                                            if (q.getCode().equals("")) 
                                            {
                                            } else 
                                            {

                                    %>
                                    <pre><code class="language-<%= q.getCodeLanguage()%>"><%= q.getCode()%></code></pre>
                                        <%  }
                                            } %>
                            
                            
<a href="#" class="btn btn-primary">Like</a>
<a href="#" class="btn btn-primary">Share</a>
    <a href="#" class="btn btn-primary">Answer</a>
  </div>
  <div class="card-footer text-muted">
                                    <%
                                        java.util.Date d = new java.util.Date(q.getDatetime().getTime());


                                    %>


                                    <%= DateFormat.getDateTimeInstance().format(d)%>
  </div>
</div>

  
                        </div>
  
                            <div class="tab-pane" id="profile" role="tabpanel" aria-labelledby="profile-tab"><strong><%= u.getUfirstname()%>&nbsp;<%= u.getUsurname()%></strong> has posted!</div>
 
                            <div class="tab-pane" id="contact" role="tabpanel" aria-labelledby="contact-tab">This is the contact tab!</div>
</div>
                            
                            <%

                                }
                            %>

                </div>
                            
                            <div class="col-sm-2"></div>

            </div>
        </div>

    -->        

    <%
    Map<String, String> p = (Map) session.getAttribute("msg");
    if (p != null)
    {

        String message = p.get("message");
        String type = p.get("type");
        String temp = "danger";
        if (type.equals("success")) {
        temp = "success";
    }
    %>

    <div class="alert alert-<%= temp%> alert-dismissible mb-0">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <strong><%= message%></strong> 
    </div>

    <%
    session.removeAttribute("msg");
}
else 
{
}

%>--%>

        <%            UserLoginBean user2 = (UserLoginBean) session.getAttribute("current-user");
            if (user2 != null) {
        %>

        <!--Profile update modal-->

        <div class="modal fade" id="profile-update-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header bg-primary text-white">
                        <h5 class="modal-title" id="exampleModalLabel"><%= user2.getUfirstname()%>&nbsp;<%= user2.getUsurname()%></h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true" class="text-white">&times;</span>
                        </button>
                    </div>


                    <form action="ProfileUpdateServlet" method="post" enctype="multipart/form-data">


                        <div class="modal-body">
                            <div class="container">
                                <img src="img/<%= user2.getUprofilepic()%>" class="img-thumbnail circle img-fluid mx-auto d-block" style="width:200px;height: 200px;border-radius: 50%; ">

                                <div class="row">
                                    <div class="col-sm-12">
                                        <table class="table table-bordered table-hover mt-3 ">

                                            <tr><td>Property </td><td>Details</td></tr>

                                            <tr><td>First Name : </td><td>   <input  type="text" name="usersfirstname" value="<%= user2.getUfirstname()%>" class="form-control "  /> </td></tr>
                                            <tr><td>Last Name : </td><td>   <input  type="text" name="userssecondname" value="<%= user2.getUsurname()%>" class="form-control "  /> </td></tr>
                                            <tr><td>Email : </td><td>   <input disabled type="email" name="usersemail" value="<%= user2.getEmail()%>" class="form-control "  /> </td></tr>
                                            <tr><td>Password : </td><td>   <input  type="text" name="userspassword" value="<%= user2.getPassword()%>" class="form-control "  /> </td></tr>
                                            <tr><td>Mobile Number : </td><td>   <textarea name="usersmobilephonenumber" class="form-control"><%= user2.getUmobilephonenumber()%></textarea> </td></tr>
                                            <tr><td>Birth Month : </td><td>   <textarea name="usersbirthmonth" class="form-control"><%= user2.getUbirthmonth()%></textarea> </td></tr>
                                            <tr><td>Birth Date : </td><td>   <textarea name="usersbirthday" class="form-control"><%= user2.getUbirthday()%></textarea> </td></tr>
                                            <tr><td>Birth Year : </td><td>   <textarea name="usersbirthyear" class="form-control"><%= user2.getUbirthyear()%></textarea> </td></tr>
                                            <tr><td>Gender : </td><td>   <textarea name="usersgender" class="form-control"><%= user2.getUgender()%></textarea> </td></tr>
                                            <tr><td>Select new profile pic : </td><td><input type="file" name="file"  </td></tr>

                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="modal-footer">
                            <button class="btn btn-outline-danger" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-outline-success">Save</button>
                        </div>


                    </form>            




                </div>
            </div>
        </div>



        <!--Answer Modal-->

        <div class="modal fade" id="answers-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">


                    <div class="modal-header bg-primary text-white">
                        <h5 class="modal-title" id="modal-title">Answers</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true" class="text-white">&times;</span>
                        </button>
                    </div>


                    <div class="modal-body">
                        <div class="container-fluid" id="answer-container">

                            <div class="row">

                                <%
                                    PostDao p1dao = new PostDao(ConnectionProvider.getConnection());
                                    AnswerDao adao = new AnswerDao(ConnectionProvider.getConnection());

                                    List<QuestionBean> q1list = p1dao.getAllQuestion();
                                    for (QuestionBean q : q1list) {

                                        List<AnswerBean> alist = adao.getAnswerByPostId(q.getQid());
                                        for (AnswerBean a : alist) {

                                            LoginDao udao = new LoginDao(ConnectionProvider.getConnection());
                                            UserLoginBean u = udao.getUserById(a.getAuid());


                                %>


                                <div class="col-sm-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <strong><i><%= u.getUfirstname()%>&nbsp;<%=u.getUsurname()%></i> has answered at <b><%=a.getAtimeofpost()%></b></strong>
                                        </div>
                                        <div class="card-body">
                                            <blockquote class="blockquote mb-0">
                                                <p><%=a.getAanswercontent()%></p>
                                                <footer class="blockquote-footer">Someone famous in <cite title="Source Title">Source Title</cite></footer>
                                            </blockquote>
                                        </div>
                                    </div>
                                </div>

                                <%

                                        }
                                    }
                                %>


                            </div>
                        </div>
                    </div>
                    <div class="modal-footer bg-primary">
                        <button type="button" class="btn btn-outline-light" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>





        <% }%>



        <!-- Post Question Modal -->


        <div class="modal fade bd-example-modal-lg" id="add-question-modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered">


                <div class="modal-content">
                    <form action="PostOperation" method="post" id="postquestion">
                        <input type="hidden" value="add" name="operation"/>

                        <div class="modal-header">
                            <h5 class="modal-title" id="ModalLongTitle">Ask a question</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>

                        <div class="modal-body">
                            <div class="content-box">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-sm-12">

                                            <div class="form-group">
                                                <input type="text" name="heading"  class="form-control textarea-for-giving-otherthanquestion" placeholder="Enter the question heading" />
                                            </div>
                                            <div class="form-group">

                                                <textarea class="form-control textarea-for-giving-question" name="content" required placeholder="Write your question here (Keep it simple and clear to get the best answer)"></textarea>
                                            </div>

                                            <div class="form-group">

                                                <textarea class="form-control textarea-for-giving-otherthanquestion" name="code"  placeholder="Enter your your code if any"></textarea>
                                            </div>
                                            <div class="form-group">
                                                <select name="lang" class="form-control textarea-for-giving-otherthanquestion">
                                                    <option value="none"><strong>--Select code language--</strong></option>
                                                    <option value="java">Java</option>
                                                    <option value="python">Python</option>
                                                    <option value="c">C</option>
                                                </select>
                                            </div>

                                        </div>
                                    </div>
                                </div>



                                <div class="tools ml-3">

                                    <div class="tools-container">
                                        <label aria-label="symbols" role="button" class="btn icon-as-button" title="Symbols">
                                            <div class="icon-as-button-hole">
                                                <div class="icon-div">
                                                    <i class="fa fa-cog" aria-hidden="true"></i>
                                                </div>
                                            </div>
                                        </label>
                                    </div>



                                    <div class="tools-container">


                                        <label aria-label="Add attachments" role="button" class="btn icon-as-button" title="Attachment">
                                            <div class="icon-div">
                                                <i class="fa fa-paperclip" aria-hidden="true">

                                                </i>
                                            </div>
                                            <input type="file" accept=".xlsx, .xls, image/*, .doc, .docx, .ppt, .pptx, .txt, .pdf" multiple="" style="display: none;"/>
                                        </label>

                                    </div>

                                </div>




                            </div>

                        </div>


                        <div class="modal-footer mb-5 ml-3">

                            <div class="wrapper-on-home-page">

                                <a class="btn-to-ask-question pull-left float-left" onclick="document.getElementById('postquestion').submit();" style="float:left;align:left;">
                                    Ask your question
                                </a>

                            </div>

                            <!--<button type="button" class="btn btn-secondary float-right" data-dismiss="modal">Close</button>-->
                            <!--<button type="submit" class="btn btn-secondary float-left">Save</button>-->
                        </div>

                    </form>


                </div>

            </div>
        </div>





        <!-- Social buttons -->
        <div class="primary-color">
            <div class="container">
                <!--Grid row-->
                <div class="row py-4 d-flex align-items-center">

                    <!--Grid column-->
                    <div class="col-md-6 col-lg-5 text-center text-md-left mb-4 mb-md-0">
                        <h6 class="mb-0 white-text">Get connected with us on social networks!</h6>
                    </div>
                    <!--Grid column-->

                    <!--Grid column-->

                    <div class="col-md-6 col-lg-7 text-center text-md-right iconbar">
                        <!--Facebook-->
                        <!-- <a class="fb-ic ml-0">
                             <i class="fa fa-facebook white-text mr-4"> </i>
                         </a> -->
                        <!--Twitter-->
                        <!-- <a class="tw-ic">
                             <i class="fa fa-twitter white-text mr-4"> </i>
                         </a>
                        <!--Google +-->
                        <!-- <a class="gplus-ic">
                             <i class="fa fa-google-plus white-text mr-4"> </i>
                         </a>
                        <!--Linkedin-->
                        <!--<a class="li-ic">
                            <i class="fa fa-linkedin white-text mr-4"> </i>
                        </a>
                        <!--Instagram-->
                        <!-- <a class="ins-ic">
                             <i class="fa fa-instagram white-text mr-lg-4"> </i>
                         </a> -->


                        <ul class="social-network social-circle">
                            <li><a href="#" class="icoFacebook" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#" class="icoTwitter" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#" class="icoGoogle" title="Google +"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="#" class="icoLinkedin" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
                        </ul>		


                    </div>
                    <!--Grid column-->

                </div>
                <!--Grid row-->
            </div>
        </div>
        <!-- Social buttons -->


        <!--Footer-->
        <footer class="page-footer font-small black pt-4 mt-4 mb-0">

            <!--Footer Links-->
            <div class="container mt-5 mb-4 text-center text-md-left">
                <div class="row mt-3">

                    <!--First column-->
                    <div class="col-md-3 col-lg-4 col-xl-3 mb-4">
                        <h6 class="text-uppercase font-weight-bold">
                            <strong>Company</strong>
                        </h6>
                        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                        <p>
                            <a href="about.jsp">About</a>
                        </p>
                        <p>
                            <a href="#!">Advertise</a>
                        </p>
                        <p>
                            <a href="#!">Contact</a>
                        </p>
                        <p>
                            <a href="#!">Support</a>
                        </p>
                    </div>
                    <!--/.First column-->

                    <!--Second column-->
                    <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                        <h6 class="text-uppercase font-weight-bold">
                            <strong>Questions</strong>
                        </h6>
                        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                        <p>
                            <a href="#!">Ask Question</a>
                        </p>
                        <p>
                            <a href="#!">Topics</a>
                        </p>
                        <p>
                            <a href="#!">Discover</a>
                        </p>

                    </div>
                    <!--/.Second column-->

                    <!--Third column-->
                    <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                        <h6 class="text-uppercase font-weight-bold">
                            <strong>Other Links</strong>
                        </h6>
                        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                        <p>
                            <a href="#!">Terms Of Use</a>
                        </p>
                        <p>
                            <a href="#!">Privacy Policy</a>
                        </p>
                        <p>
                            <a href="#!">Cookie Policy</a>
                        </p>
                        <p>
                            <a href="#!">Help</a>
                        </p>
                    </div>
                    <!--/.Third column-->

                    <!--Fourth column-->
                    <div class="col-md-4 col-lg-3 col-xl-3">
                        <h6 class="text-uppercase font-weight-bold">
                            <strong>Contact</strong>
                        </h6>
                        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                        <p>
                            <i class="fa fa-home mr-3"></i> Lucknow, Uttar Pradesh, India</p>
                        <p>


                        <p>
                            <i class="fa fa-envelope mr-3"></i> myguardiansupport@gmail.com
                        </p>




                        <p>
                            <i class="fa fa-phone mr-3"></i> + 91 94 51 525 495</p>
                        <p>
                            <i class="fa fa-phone mr-3"></i> + 91 63 93 999 818</p>
                    </div>
                    <!--/.Fourth column-->

                </div>
            </div>
            <!--/.Footer Links-->

            <!--Copyright-->
            <div class="footer-copyright py-3 text-center">
                © 2018 <a href="#">MyGuardian</a> | Copyright:
                All Rights Reserved. 
            </div>
            <!--/.Copyright-->

        </footer>
        <!--/Footer-->


        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular.min.js"></script>

        <!--
                <script>
                                                function getDateTime()
                                                {
                                                var date = new Date();
                                                        $("#clock-digital").html(date.toLocaleTimeString());
                                                }
        
                                        //===========================================
                                        setInterval(getDateTime, 1000);
                                        })
            </script>
        -->

        <script>
                                    function openAnswerModal(qid, content)
                                    {

                                        $("#answers-modal").modal('show');
                                        $("#modal-title").text(content);
                                    }

                                    function openAnswerBox(p_id)
                                    {
                                        swal({
                                            title: "Give your answer",
                                            text: "your answer must be a single paragraph",
                                            type: "input",
                                            showCancelButton: true,
                                            closeOnConfirm: false,
                                            animation: "slide-from-top",
                                            inputPlaceholder: "write your answer here",
                                            showLoaderOnConfirm: true
                                        },
                                        function(inputValue) {
                                            if (inputValue === false)
                                                return false;
                                            if (inputValue === "") {
                                                swal.showInputError("You need to write something!");
                                                return false
                                            }

                                            setTimeout(function()
                                            {

                                                $.ajax(
                                                        {
                                                            url: "AnswerServlet",
                                                            type: 'POST',
                                                            data: {postId: p_id, data: inputValue, op: 'addanswer'},
                                                            success: function(data, textStatus, jqXHR)
                                                            {


                                                                swal("Good job!", "done", "success")
                                                            }


                                                            ,
                                                            error: function(jqXHR, textStatus, errorThrown)
                                                            {
                                                                swal("Error!!", "try again", "error");
                                                            }
                                                        }
                                                );
                                            }
                                            ,
                                                    1000);
                                        }
                                        );
                                    }

                                    function loadAllQuestions()
                                    {

                                        $("#loader").show();
                                        $.ajax({
                                            url: "post_load_on_home_by_user.jsp",
                                            type: 'POST',
                                            data: {uid:<%= user.getUid()%>, op: "allpost"},
                                            success: function(data, textStatus, jqXHR) {
                                                $("#post-container").html(data);
                                                $("#loader").hide();
                                            }
                                        });
                                    }



                                    function loadAllQuestionByUser()
                                    {
                                        $("#loader").show();
                                        $.ajax({
                                            url: "post_load_on_home_by_user.jsp",
                                            type: 'POST',
                                            data: {uid:<%= user.getUid()%>, op: "all"},
                                            success: function(data, textStatus, jqXHR) {
                                                $("#post-container").html(data);
                                                $("#loader").hide();
                                            }
                                        });
                                    }


                                    function doLike(pid)
                                    {
//                alert(pid);

                                        $.ajax({
                                            url: "LikeServlet",
                                            type: 'POST',
                                            data: {postId: pid, likeOp: 'dolike'},
                                            success: function(data, textStatus, jqXHR) {
//                                            alert("Success");
//                                              alert(data);
                                                var button = "#l2" + pid;
                                                $(button).text("Unlike");



                                            },
                                            error: function(jqXHR, textStatus, errorThrown) {
                                                alert("Error");
                                            }
                                        });

                                    }
                                    
                                    
                                    
                                     function doUnLike(pid)
                                    {
//                alert(pid);

                                        $.ajax({
                                            url: "LikeServlet",
                                            type: 'POST',
                                            data: {postId: pid, likeOp: 'dounlike'},
                                            success: function(data, textStatus, jqXHR) {
//                                            alert("Success");
//                                              alert(data);
                                                var button = "#l1" + pid;
                                                $(button).text("Like");



                                            },
                                            error: function(jqXHR, textStatus, errorThrown) {
                                                alert("Error");
                                            }
                                        });

                                    }

        </script>

    </body>
</html>
