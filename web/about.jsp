<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Page</title>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0,shrink-to-fit=no">

        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>

        <!--Embedding Google Fonts-->
        <link href="https://fonts.googleapis.com/css?family=Pacifico|Shrikhand" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Chela+One|Wendy+One" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Ultra" rel="stylesheet">





        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!--Embedding Google Fonts-->
        <link href="https://fonts.googleapis.com/css?family=Pacifico|Amaranth|Shrikhand|Righteous|Raleway|PT Sans|Josefin+Sans|Sacramento" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Chela+One|Wendy+One" rel="stylesheet">
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
        </script>

        <script>
            $(document).ready(function() {
                $('.dropdown-toggle').dropdown();
            });
        </script>




    </head>


    <body>

        <!--Main Navigation-->
        <header>

            <!--Navbar-->
            <nav class="navbar navbar-expand-lg fixed-top" style="margin:0px;padding:0px;background-color:#30d1c9;">
                <div class="container-fluid">

                    <!-- Navbar brand -->
                    <a class="navbar-brand" href="index.jsp"><span style="font-family: 'Righteous', regular; color:white;">HelpDesk</span></a>

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
                                    <a class="nav-link" href="index.jsp">
                                        Home <span class="sr-only">(current)</span></a>
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
                                    <!-- Button to Open the Modal -->
                                    <button type="button" class="nav-link " data-toggle="modal" data-target="#LoginModal" id="nextbtnForLogin">
                                        Login
                                    </button>


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




    <main>
        <div class="container" id="main">
            <div class="row">
                <div class="col-md-3 mb-4" style="float:left;" id="leftdiv">

                    <nav class="page-options">
                        <ul>
                            <li><a href="about.jsp" class="active">About</a></li>

                            <li><a href="advertise.jsp">Advertise</a></li>

                            <li><a href="contact.jsp">Contact</a></li>
                            <li><a href="support.jsp">Support</a></li>
                        </ul>
                    </nav>

                </div>

                <div class="col-md-1"></div>

                <div class="col-md-8 mt-3" style="float:right;" id="rightdiv">

                    <div class="aboutinsidediv">
                        <h2 style="font-family: 'Josefin Sans', sans-serif">What is HelpDesk?</h2>
                        <p>
                            <a href="index.jsp">HelpDesk.com</a> is a rousing online coterie of question and answer which is only aiming to metamorphose the certain way in which questions are answered online. In both the cases, whether you stand in need of to know the answer to a burning question, or you're rupturing with intelligent and well informed, lots of answers and experiences you just can't make yourself wait to share, HelpDesk.com will provide you with the answers you are looking for. It will give you absolutely FREE, 24/7 opportunity to approach to a whole sphere of information, and to millions of knowledgeable boon companions without cost or payment.

                        </p>

                        <br/>
                        <br/>

                        <h2 style="font-family: 'Josefin Sans', sans-serif">Our Mission</h2>
                        <p>
                            We think it likely that <span style="font-family: 'Sacramento', cursive;font-size: 26px;">listening to everyone, and learning from everyone because no one knows everything, but everyone knows something. All knowledge resides in networks.</span> Hence, we focus and make sure to provide you with an factual answers for each query of yours and its successful implementation.. We also make our coterie's members personal experiences to give you several responses to your all questions.

                        </p>

                        <br/>
                        <br/>

                        <h2 style="font-family: 'Josefin Sans', sans-serif">Our Vision</h2>
                        <p>
                            To provide you with the answers dealing with all or virtually closely all aspects of something available on the Internet. It might be that you are sometimes looking for a factual answer or specifically at the other times for another person's experiences to assist you, for that reason consequently; we provide you with both.

                        </p>
                    </div>
                </div>
            </div>
        </div>
    </main>




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
                        <i class="fa fa-envelope mr-3"></i> helpdesksupport@gmail.com
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
            © 2018 <a href="#">HelpDesk</a> | Copyright:
            All Rights Reserved. 
        </div>
        <!--/.Copyright-->

    </footer>
    <!--/Footer-->


    <!-- The Sign Up Modal -->
    <div class="modal" id="myModal">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->

                <div class="col-md-12 modal-header text-center">
                    <center><h4 class="modal-title">Sign Up for free!</h4></center>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body">
                    <div class="myform form">
                        <form action="<%=request.getContextPath()%>/RegisterServletForSignUp" method="post" name="signup" onsubmit="return validateForm()">

                            <div class="form-row col-md-12">
                                <div class="col">
                                    <label for="inputFirstName4">First Name</label>
                                    <input type="text" class="form-control" id="inputFirstName4" name="firstname" required placeholder="First name">
                                </div>
                                <div class="col">
                                    <label for="inputSurname4">Surname</label>
                                    <input type="text" class="form-control" id="inputSurname4" name="secondname" required placeholder="Surname">
                                </div>
                            </div>


                            <div class="form-group col-md-12">
                                <label for="inputEmail4">Email</label>
                                <input type="email" class="form-control" id="inputEmail4" placeholder="Email" name="email" required>
                            </div>


                            <div class="form-group col-md-12">
                                <label for="inputPassword4">Password</label>
                                <input type="password" class="form-control" id="inputPassword4" placeholder="Password" name="password" required>
                            </div>


                            <div class="form-group col-md-12">
                                <label for="inputMobilePhoneNumber">Mobile Phone Number</label>
                                <input type="tel" class="form-control" id="inputMobilePhoneNumber" required name="usermobilephonenumber" placeholder="Mobile Phone Number">
                            </div>

                            <div class="form-row col-md-12">
                                <div class="col">
                                    <label for="inputMonth">Month</label>
                                    <select id="inputMonth" class="form-control" name="userbirthmonth">
                                        <option selected>Birth Month...</option>
                                        <option>January</option>
                                        <option>February</option>
                                        <option>March</option>
                                        <option>April</option>
                                        <option>May</option>
                                        <option>June</option>
                                        <option>July</option>
                                        <option>August</option>
                                        <option>September</option>
                                        <option>October</option>
                                        <option>November</option>
                                        <option>December</option>

                                    </select>
                                </div>

                                <div class="col">
                                    <label for="inputDay">Day</label>
                                    <input type="text" class="form-control" id="inputDay" placeholder="Day" name="userbirthday" required>
                                </div>

                                <div class="col">
                                    <label for="inputYear">Year</label>
                                    <input type="text" class="form-control" id="inputYear" placeholder="Year" name="userbirthyear" required>
                                </div>
                            </div>

                            <div class="form-group col-md-12">
                                <label for="inputGender">Gender(Optional)</label>
                                <select id="inputGender" class="form-control" name="usergender">
                                    <option selected>Gender...</option>
                                    <option>Female</option>
                                    <option>Male</option>

                                </select>

                            </div>

                            <div class="form-group">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="gridCheck">
                                    <label class="form-check-label" for="gridCheck">
                                        By clicking "Continue", you agree to the <a href="#">Terms (Updated)</a> and <a href="#">Privacy Policy (Updated)</a>!
                                    </label>
                                </div>

                            </div>


                            <div class="col-md-12 text-center mb-3">

                                <button type="submit" class=" btn btn-block mybtn btn-primary tx-tfm">Get Started For Free</button>

                            </div>
                            <div class="col-md-12 ">
                                <div class="form-group">
                                    <p class="text-center"><a href="#" id="signin">Already have an account?</a></p>
                                </div>
                            </div>
                        </form>
                    </div>



                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>

                </div>
            </div>
        </div>

    </div>




    <!-- The Login Modal -->

    <div class="modal" id="LoginModal">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Login here!</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>

                </div>

                <!-- Modal body -->
                <div class="modal-body">
                    <div class="myform form">

                        <form action="LoginServlet" method="post" name="login">

                            <div class="form-group col-md-12">
                                <label for="inputEmail4">Email</label>
                                <input type="email" class="form-control" id="inputEmail4" aria-describedby="emailHelp" placeholder="Email" name="email" required>
                            </div>


                            <div class="form-group col-md-12">
                                <label for="inputPassword4">Password</label>
                                <input type="password" class="form-control" id="inputPassword4" placeholder="Password" name="password" required>
                            </div>


                            <div class="form-group">
                                <p class="text-center">By signing up you accept our <a href="#">Terms Of Use</a></p>
                            </div>

                            <div class="col-md-12 text-center ">
                                <button type="submit" class=" btn btn-block mybtn btn-primary tx-tfm">Login</button>
                            </div>

                            <div class="col-md-12 ">
                                <div class="login-or">
                                    <hr class="hr-or">
                                    <span class="span-or">or</span>
                                </div>
                            </div>
                            <div class="col-md-12 mb-3">
                                <p class="text-center">
                                    <a href="javascript:void();" class="google btn mybtn"><i class="fa fa-google-plus">
                                        </i> Signup using Google
                                    </a>
                                </p>
                            </div>
                            <div class="form-group">
                                <p class="text-center">Don't have account? <a href="#" id="signup">Sign up here</a></p>
                            </div>
                        </form>
                    </div>
                </div>



                <!-- Modal footer -->
                <div class="modal-footer">
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

    </script>

</body>
</html>
