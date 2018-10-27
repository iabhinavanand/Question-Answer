<%@page import="com.login.bean.UserLoginBean"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

    UserLoginBean user = (UserLoginBean) session.getAttribute("current-user");
    if (user != null) {
        response.sendRedirect("home.jsp");
    }
%>

<!DOCTYPE html>

<html>
    <head>
        <title>Index.jsp</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0,shrink-to-fit=no">

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
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
        <script src="js/prism.js" type="text/javascript"></script>

        <!--Embedding Google Fonts-->
        <link href="https://fonts.googleapis.com/css?family=Pacifico|Shrikhand" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Chela+One|Wendy+One" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Ultra" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Acme|Baloo+Tammudu|Bree+Serif|Kanit|Satisfy|Prosto One" rel="stylesheet">






        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>



        <!--Embedding Google Fonts-->
        <link href="https://fonts.googleapis.com/css?family=Pacifico|Shrikhand|Righteous" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Chela+One|Wendy+One|Merriweather" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Ultra" rel="stylesheet">


        <style>
            html,
            body,
            header,
            main {

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

            #nextbtnForLogin
            {

                background-color: #fff;
                padding: 8px 40px;
                font-weight: 600;
                color: #222;
                box-shadow: 0px 20px 20px 0px rgba(0, 0, 0, 0.1);
                border: 1px solid transparent;
                border-radius: 20px;
                margin-top: 19px;
                display: inline-block;
            }

            #nextbtnForLogin:hover {
                border: 1px solid #fff;
                background: transparent;
                color: #fff;
            }




            .myform{
                position: relative;
                display: -ms-flexbox;
                display: flex;
                padding: 1rem;
                -ms-flex-direction: column;
                flex-direction: column;
                width: 100%;
                pointer-events: auto;
                background-color: #fff;
                background-clip: padding-box;
                border: 1px solid rgba(0,0,0,.2);
                border-radius: 1.1rem;
                outline: 0;
                max-width: 500px;
            }


            .mybtn{
                border-radius:50px;
            }

            .login-or {
                position: relative;
                color: #aaa;
                margin-top: 10px;
                margin-bottom: 10px;
                padding-top: 10px;
                padding-bottom: 10px;
            }
            .span-or {
                display: block;
                position: absolute;
                left: 50%;
                top: -2px;
                margin-left: -25px;
                background-color: #fff;
                width: 50px;
                text-align: center;
            }
            .hr-or {
                height: 1px;
                margin-top: 0px !important;
                margin-bottom: 0px !important;
            }
            .google {
                color:#666;
                width:100%;
                height:40px;
                text-align:center;
                outline:none;
                border: 1px solid lightgrey;
            }
            form .error {
                color: #ff0000;
            }
            .mybtn{
                border-radius:50px;
            }

            .login-or {
                position: relative;
                color: #aaa;
                margin-top: 10px;
                margin-bottom: 10px;
                padding-top: 10px;
                padding-bottom: 10px;
            }
            .span-or {
                display: block;
                position: absolute;
                left: 50%;
                top: -2px;
                margin-left: -25px;
                background-color: #fff;
                width: 50px;
                text-align: center;
            }
            .hr-or {
                height: 1px;
                margin-top: 0px !important;
                margin-bottom: 0px !important;
            }
            .google {
                color:#666;
                width:100%;
                height:40px;
                text-align:center;
                outline:none;
                border: 1px solid lightgrey;
            }
            form .error {
                color: #ff0000;
            }
            #second{display:none;}
        </style>

        <script>
            $(function() {
                $('#myModal').modal({
                    show: true,
                    backdrop: 'static'
                });
                //now on button click
                $('#myModal').modal('show');
            });
            $(function() {
                $('#LoginModal').modal({
                    show: true,
                    backdrop: 'static'
                });
                //now on button click
                $('#LoginModal').modal('show');
            });
            $(function() {
                $('#ForgetPasswordModal').modal({
                    show: true,
                    backdrop: 'static'
                });
                //now on button click
                $('#ForgetPasswordModal').modal('show');
            });
        </script>



        <script>
            $(document).ready(function() {
                $('.dropdown-toggle').dropdown();
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


    </head>



    <body onload="loadAllQuestionsonIndex()">


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
                            <input required="" class="search-input" name="search" type="search" placeholder="What is your question?" data-hj-whitelist="" aria-label="Search">
                            <div class="search-icon">
                                <i class="fa fa-search"></i>
                            </div>
                        </div>


                        <!-- Links -->
                        <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
                            <ul class="navbar-nav">



                                <li class="nav-item active">
                                    <a class="nav-link " href="home.jsp">Home <span class="sr-only">(current)</span></a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="#">
                                        Ask
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Questions</a>
                                </li>



                                <li class="nav-item dropdown">

                                    <!--Removing the dropdown toggle class removes arrow from Navbar OPTIONS LINK( the dropdown link)-->
                                    <a class="nav-link" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Others
                                    </a>
                                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <li><a class="dropdown-item" href="#">Discover</a></li>
                                        <li class="dropdown-divider"></li>
                                        <li><a class="dropdown-item" href="about.jsp">About</a></li>
                                        <li class="dropdown-divider"></li>
                                        <li><a class="dropdown-item" href="#">Contact Us</a></li>
                                    </ul>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link  digital-clock" id="digital-clock-of-myguardian" href="#">Disabled</a>
                                </li>

                                <li class="nav-item">
                                    <!-- Button to Open the Modal -->
                                    <form action="loginpage.jsp" >
                                        <button type="submit" class="nav-link" id="nextbtnForLogin">Login</button>
                                    </form> 

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




        <!--Main layout-->
    <main>
        <div class="container"  id="main" style="display:block;">

            <div class="row">
                <div class="col-md-12">

                    <!--First column-->
                    <div class="col-md-6 mb-2" id="FirstColumn" style="float:left;">
                        <h1 id="slogan heading"><span style=" font-family: 'Righteous', regular;
                                                      ">MyGuardian</span></h1>
                        <p id="slogan-paragraph">This question and answer platform is designed to help people, so that they can ask, learn, and share, to make themselves grow.</p>



                        <div style="float:left;vertical-align: baseline;
                             background: transparent;">
                            <div class="float-left pull-left mr-2">
                                <button type="button" class="text-uppercase header-btn" id="nextbtn" onclick="location.href = 'SuccessfulRegistration.jsp';">Ask Question</button>

                            </div>

                            <div class="float-right pull-right">
                                <!-- Button to Open the Modal -->
                                <form action="signuppage.jsp">
                                    <button type="submit" id="nextbtn">
                                        Sign Up
                                    </button>
                                </form>
                            </div>

                        </div>
                    </div>
                    <!--First column-->




                    <!--Second column-->
                    <div class="col-md-6 mb-2" id="Main Image" style="float:right;">
                        <img src="img/Child Holding Book.jpg" width="542" height="324"/>

                    </div>



                </div>
            </div>

        </div>


    </main>
    <!--/Main-->



    <!--Div for spacing -->
    <div class="container mb-5">
        <div class="row">
            <div class="col-md-12"></div>
        </div>
    </div>



    <div class="container">
        <div class="row">

            <div class="col-md-8 content-box-container">

                <div class="col-md-12 content-layout">


                    <div class="header-primary">
                        What do you need to know?
                    </div>

                    <div class="wrapper">
                        <a class="btn-to-ask-question" href="#" data-label="home ask question" rel="nofollow">
                            Ask your question
                        </a>
                    </div>

                    <br/>

                    <div id="post-container">


                    </div>

                </div>
            </div>



            <div class="col-md-4">

                <div class="col-md-12 content-category-layout">
                    <h1 class="heading-for-categories-in-helpdesksubjects">MyGuardian's Subjects</h1>

                    <ul class="helpdesksubjects">
                        <li class="listofhelpdesksubjects">

                            <div class="pull-left-helpdesksubject">
                                <!-- <a href="#"><img src="img/Technical.jpg" alt="Technical"/></a> -->
                            </div>

                            <div class="content-pull-right">
                                <p class="title"><a href="#">Technical</a></p>
                            </div>
                        </li>

                        <div class="horizontal-separator"></div>



                        <li class="listofhelpdesksubjects">

                            <div class="pull-left">
                            </div>

                            <div class="content-pull-right">
                                <p class="title"><a href="#">Non-Technical</a></p>
                            </div>
                        </li>
                    </ul>

                </div>



                <!--<div class="sg-box__hole"><div class="sg-content-box"><div class="sg-content-box__content sg-content-box__content--spaced-bottom sg-content-box__content--with-centered-text"><h3 class="sg-header-primary sg-header-primary--xsmall">
                                  What do you need to know?
                              </h3></div><div class="sg-content-box__actions sg-content-box__actions--with-centered-elements"><a class="sg-button-primary sg-button-primary--alt sg-button-primary--full-width" href="/question/add?entry=1611">
                                  Ask your question
                              </a>
                              </div>
                      </div>
                  </div>
                -->

                <div class="col-md-12 content-layout mt-4 pb-4">


                    <div class="header-primary" style="font-size: 1.25rem;
                         line-height: 1.5rem;">
                        What do you need to know?
                    </div>

                    <div class="wrapper">
                        <a class="btn-to-ask-question" href="#" data-label="home ask question" rel="nofollow">
                            Ask your question
                        </a>
                    </div>
                </div>




            </div>

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



<!--Forget Password Modal

if we put
style="display:block;
and modal fade-in class 
the modal will be appearing itself on screen load"-->
<div class="modal" id="ForgetPasswordModal">
    <div class="modal-dialog">
        <div class="modal-content">

            <div class="modal-header">
                <h4 class="modal-title">Password &amp; Username Lookup!</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <div class="modal-body">
                <div class="container-fluid">
                    <form class="form-horizontal ng-pristine ng-valid ng-valid-email ng-submitted" method="POST" ng-submit="resetPassword(knownInfo)">
                        <div class="panel-body">
                            <fieldset>
                                <div class="form-group">
                                    <label>Forgot Password</label>
                                    <input class="form-control input-lg ng-pristine ng-untouched ng-valid ng-valid-email" placeholder="Email" name="email" type="email" ng-model="knownInfo.email" title="Enter the email address that you used to register, and we'll send you a password reset.">
                                </div>
                                <div class="form-group">
                                    <input class="btn btn-lg btn-primary btn-block" value="Send Password Reset Link" type="submit">
                                </div>
                            </fieldset>
                        </div>
                    </form>
                    <form class="form-horizontal ng-pristine ng-valid ng-valid-email" method="POST" ng-submit="forgotUsername(emailAddress)">
                        <div class="panel-body">
                            <fieldset>
                                <div class="form-group">
                                    <label>Forgot Username</label>
                                    <input class="form-control input-lg ng-pristine ng-untouched ng-valid ng-valid-email" placeholder="Email" name="email" type="email" ng-model="emailAddress" title="Enter the email address that you used to register, and we'll send a username reminder.">
                                </div>
                                <div class="form-group">
                                    <input class="btn btn-lg btn-primary btn-block" value="Send Username Reminder" type="submit">
                                </div>
                            </fieldset>
                        </div>
                    </form>
                    <div class="row">
                        <div class="col-sm-6">
                            <a href="" class="small" id="tologin" data-dismiss="modal" data-toggle="modal" role="button" data-target="#LoginModal">Return to Login..</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer text-right">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>



<script>

    $("#signup").click(function() {
        $("#LoginModal").fadeOut("fast", function() {
            $("#myModal").fadeIn("fast");
        });
    });
    $("#signin").click(function() {
        $("#myModal").fadeOut("fast", function() {
            $("#LoginModal").fadeIn("fast");
        });
    });
    $("#tologin").click(function() {
        $("#ForgetPasswordModal").fadeOut("fast", function() {
            $("#LoginModal").fadeIn("fast");
        });
    });
    $("#ForgetPassword").click(function() {
        $("#LoginModal").fadeOut("fast", function() {
            $("#ForgetPasswordModal").fadeIn("fast");
        });
    });
    $(function() {
        $("form[name='login']").validate({
            rules: {
                email: {
                    required: true,
                    email: true
                },
                password: {
                    required: true,
                }
            },
            messages: {
                email: "Please enter a valid Email address!",
                password: {
                    required: "Please Enter a Password!",
                }

            },
            submitHandler: function(form) {
                form.submit();
            }
        });
    });
    $(function() {

        $("form[name='signup']").validate({
            rules: {
                firstname: "required",
                secondname: "required",
                email: {
                    required: true,
                    email: true
                },
                password: {
                    required: true,
                    minlength: 8
                }
            },
            messages: {
                firstname: "Please enter your Firstname!",
                secondname: "Please enter your Lastname!",
                password: {
                    required: "Please provide a Password!",
                    minlength: "Your Password must be at least 8 characters long!"
                },
            },
            submitHandler: function(form) {
                form.submit();
            }
        });
    });</script>

<script>
    // Function to validate email.
    function validateForm() {

        // Get the value of email that the client is trying to submit
        var x = document.forms["signup"]["email"].value;
        // Check if the value is null or empty
        if (x == null || x == "")
        {
            alert("Email must be filled out");
            return false;
        }

        // Check if the email format is valid
        if (!validateEmail(x))
        {
            //             swal("Email not valid. Please enter a valid email address!");
            alert("Email not valid. Please enter a valid email address!");
            return false;
        }

        return true;
    }

    // Returns true if email format is valid else returns false
    function validateEmail(email)
    {

        // Email Match Regex
        var regex = /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/;
        /*
         ^ -> assert position at start of the string
         \w+ -> match any word character [a-zA-Z0-9_] one or infinite number of 
         times (no spaces)
         @ -> matches the character @ literally
         [a-zA-Z_] -> match a SINGLE character present in the list below (no spaces)
         +? -> matches the previous one and unlimited times, 
         as few times as possible, expanding as needed (no spaces)
         a-z -> SINGLE character in the range between a and z (case sensitive)
         A-Z -> SINGLE character in the range between A and Z (case sensitive)
         _ -> the literal character _
         \. -> matches the character . literally
         [a-zA-Z] -> match a SINGLE character present in the list
         {2,3} -> Between 2 and 3 times, as many times as possible, giving back 
         as needed [greedy]
         a-z -> a SINGLE character in the range between a and z (case sensitive)
         A-Z -> a SINGLE character in the range between A and Z (case sensitive)
         $ -> assert position at end of the string
         */

        // Test if regex matches with the email id
        return regex.test(email);
    }

</script>

<script type="text/javascript">
    function checkMailStatus() {
        //alert("came");
        var email = $("#inputEmail4").val(); // value in field email
        $.ajax({
            type: 'post',
            url: 'checkMail', // put your real file name 
            data: {email: email},
            success: function(msg) {
                alert("Email already exists!"); // your message will come here.     
            }
        });
    }

</script>

<script>
    function loadAllQuestionsonIndex()
    {

        $("#loader").show();
        $.ajax({
            url: "post_load_on_index.jsp",
            type: 'POST',
            data: {op: "allpost"},
            success: function(data, textStatus, jqXHR)
            {
                $("#post-container").html(data);
                $("#loader").hide();
            }
        });
    }
</script>
</body>
</html>

