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
        <link href="css/stylesforsignupandlogin.css" rel="stylesheet" type="text/css"/>




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

        <!--Embedding Google Fonts-->
        <link href="https://fonts.googleapis.com/css?family=Pacifico|Shrikhand|Righteous" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Chela+One|Wendy+One|Baloo+Tammudu|Cabin" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Ultra" rel="stylesheet">





        <!--Embedding Sweet Alert .js File-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.css" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.min.css" type="text/css"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.min.js"></script>

        <title>Login Page</title>

    </head>

    <body style="background:none!important;">

        <div class="bg11">

        </div>

        <div class="container mb-3 " style="margin-top: 10px;">

            <div class="col-sm-12 col-md-8 col-lg-6 offset-lg-3 offset-md-2">

                <div class="card mt-5">


                    <div class="card-block">

                        <!--Header-->
                        <div class="form-header card-header white-text py-4 px-5" style="background-color:#30d1c9;">

                            <h5 class="text-center">
                                <center><strong><h2 class="text-white text-center" style="font-weight:400; font-family: 'Righteous', regular; text-align: center;"><i class="fa fa-lock mt-1 faf"></i> &nbsp; Login here!</h2></strong></center>
                            </h5>
                        </div>



                        <!--Msg section-->


                        <div class="myform form">

                            <form class="text-center border border-light p-5" action="LoginServlet" method="post" name="login">

                                <div class="form-group col-md-12 md-form">
                                    <!--<label for="inputEmail4">Email</label>-->
                                    <div class="float-left pull-left">
                                        <i class="fa fa-envelope prefix active faf  mt-2"></i>
                                    </div>
                                    <div class="">
                                        <input type="email" class="form-control mb-4 alsa" id="inputEmail4" aria-describedby="emailHelp" placeholder="Email" name="email" required>
                                    </div>
                                </div>


                                <div class="form-group col-md-12 md-form">
                                    <!--<label for="inputPassword4">Password</label>-->
                                    <div class="float-left pull-left">

                                    <i class="fa fa-lock prefix active faf mt-2"></i>
                                    </div>
                                    <div class="">
                                    <input type="password" class="form-control mb-4 alsa" id="inputPassword4" placeholder="Password" name="password" required>
                                    </div>
                                </div>


                                <div class="d-flex justify-content-around">
                                    <div>
                                        <!-- Remember me -->
                                        <div class="custom-control custom-checkbox mb-4">
                                            <input type="checkbox" class="custom-control-input" id="defaultLoginFormRemember">
                                            <label class="custom-control-label" for="defaultLoginFormRemember">Remember me</label>
                                        </div>
                                    </div>

                                </div>


                                <div class="form-group">
                                    <p class="text-center">By signing up you accept our <a href="#">Terms Of Use</a></p>
                                </div>

                                <div class="col-md-12 text-center">
                                    <button type="submit" class=" btn btn-block mybtn text-white tx-tfm my-4" style="background-color:#30d1c9;">Login</button>
                                </div>

                                <div class="col-md-12">
                                    <div class="login-or">
                                        <hr class="hr-or">
                                        <span class="span-or">or</span>
                                    </div>
                                </div>
                                <div class="col-md-12 mb-3">
                                    <p class="text-center">
                                        <a href="javascript:void();" class="google btn mybtn">
                                            <i class="fa fa-google-plus">
                                            </i> &nbsp;Signup using Google
                                        </a>
                                    </p>
                                </div>

                                

                                <div class="col-md-12 form-group mb-4">
                                    <p class="text-center">Don't have account? <a href="signuppage.jsp" id="signup"><i class="fa fa-user" style="color:#30d1c9;"></i>&nbsp; Sign up here</a></p>
                                </div>





                                <!-- Register -->
                                <div class="col-md-12 form-group mb-4">
                                    <!-- Social login -->

                                    <p class="text-center" style="text-align:center;margin:auto;">Follows us on:</p>


                                    <a type="button" class="light-blue-text mx-2">
                                        <i class="fa fa-facebook" style="color:#30d1c9;"></i>
                                    </a>
                                    <a type="button" class="light-blue-text mx-2">
                                        <i class="fa fa-twitter" style="color:#30d1c9;"></i>
                                    </a>
                                    <a type="button" class="light-blue-text mx-2">
                                        <i class="fa fa-linkedin" style="color:#30d1c9;"></i>
                                    </a>
                                    <a type="button" class="light-blue-text mx-2">
                                        <i class="fa fa-github" style="color:#30d1c9;"></i>
                                    </a>
                                </div>
                                
                                
                                <div class="col-md-12 form-group pull-right mb-4">
                                    <p class="text-right">
                                        <a href="forgetpassword.jsp" id="forgotpassword">Forgot username or password?</a>
                                    </p>
                                </div>
                            </form>
                        </div>

                    </div>

                </div>

                <!-- Default form login -->
            </div>
        </div>

    </div>


</body>
</html>
