<%@page import="com.login.bean.UserLoginBean"%>
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

        <title>Edit Profile Page</title>

    </head>

    <body style="background:none!important;">

        <div class="bg11">

        </div>

        <div class="container mb-3 " style="margin-top: 10px;">

            <center>
            <div class="col-md-12">

                <div class="card mt-5">


                    <div class="card-block">

                        <!--Header-->
                        <div class="form-header card-header white-text py-4 px-5" style="background-color:#30d1c9;">

                            <h5 class="text-center">
                                <center><strong><h2 class="text-white text-center" style="font-weight:200; font-size: 30px; font-family: 'Righteous', regular; text-align: center;"><i class="fa fa-user mt-1 faf"></i> &nbsp; Edit Photo:</h2></strong></center>
                            </h5>
                        </div>


                        <%
                            UserLoginBean user2 = (UserLoginBean) session.getAttribute("current-user");
                            if (user2 != null) {
                        %>
                        <!--Msg section-->


                        <div class="myform form">

                            <form class="text-center border border-light p-5" action="ProfileUpdateServlet" method="post" name="profileupdate" enctype="multipart/form-data">


                                <img src="img/<%=user2.getUprofilepic()%>" class="img-thumbnail circle img-fluid mx-auto d-block mb-4" name="pic" style="top:0px;width:200px;height:200px;border-radius:50%;">
                                <div>
                                    <!--<button class="btn btn-primary" for="files">Select Picture</button>-->
                                    <label class="control-label" for="files">Select</label>
                                    <input type="file" name="pic" id="files" style="visibility:hidden;"/>
                                </div>

                                <div class="form-group mt-3">
                                    <p class="text-center">Profile photo will be changed automatically.</p>
                                </div>


   
                                <div class="form-group mb-4">
                                    <h3 class="text-left mt-0">Personal Information:</h3>
                                </div>

                                <div class="form-row col-md-12 mb-4">
                                    <div class="col mr-4">

                                        <label class="control-label" for="firstname">First Name:</label>
                                        <input type="text" class="form-control" id="inputFirstName4" name="firstname" value="<%= user2.getUfirstname()%>" required placeholder="First name">
                                    </div>
                                    <div class="col">

                                        <label class="control-label" for="lastname">Last Name:</label>
                                        <input type="text" class="form-control" id="inputSurname4" name="secondname" value="<%= user2.getUsurname()%>" required placeholder="Surname">
                                    </div>
                                </div>

                                <div class="form-group col-md-12 md-form">
                                    <label class="control-label" for="email"><i class="fa fa-envelope prefixoneditpage active faf"></i></label>
                                    <!--<label for="inputEmail4">Email</label>
                                    <div class="float-left pull-left">
                                        
                                    </div>-->
                                    <div class="">
                                        <input type="email" class="form-control mb-4 alsa" id="inputEmail4" value="<%= user2.getEmail()%>" aria-describedby="emailHelp" placeholder="Email" name="email" required>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <h3 class="text-left">Change Password:</h3>
                                </div>

                                <div class="form-group col-md-12 mb-4 md-form">
                                    <label class="control-label" for="password"><i class="fa fa-lock prefixoneditpage active faf"></i></label>

                                    <div class="">
                                        <input type="password" class="form-control" id="inputPassword4" value="<%= user2.getPassword()%>" placeholder="Password" name="password" required>
                                    </div>
                                </div>


                                <div class="form-group col-md-12 mb-4 md-form">
                                    <label class="control-label" for="telephone"><i class="fa fa-phone prefixoneditpage active faf"></i></label>

                                    <div class="">
                                        <input type="tel" class="form-control" id="inputMobilePhoneNumber" value="<%= user2.getUmobilephonenumber()%>" name="usermobilephonenumber" placeholder="Mobile Phone Number" required>
                                    </div>
                                </div>

                                <div class="form-group col-md-12">
                                    <label class="control-label" for="birthday">Birthday:</label>
                                    <div class="form-row col-md-12 mb-4 md-form">


                                        <div class="col mr-4">

                                            <select id="inputMonth" class="form-control" name="userbirthmonth">
                                                <option selected><%= user2.getUbirthmonth()%></option>
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

                                        <div class="col mr-4">

                                            <input type="text" class="form-control" id="inputDay" placeholder="Day" name="userbirthday" value="<%= user2.getUbirthday()%>" required>
                                        </div>

                                        <div class="col">

                                            <input type="text" class="form-control" id="inputYear" placeholder="Year" name="userbirthyear" value="<%= user2.getUbirthyear()%>" required>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group col-md-12">

                                    <select id="inputGender" class="form-control" name="usergender" disabled="">
                                        <option selected>Gender...</option>
                                        <option>Female</option>
                                        <option>Male</option>

                                    </select>

                                </div>



                                <div class="col-md-12 text-center">
                                    <button type="submit" class=" btn btn-block mybtn text-white tx-tfm my-4" style="background-color:#30d1c9;transition: .2s ease-out;">GENERATE NEW PASSWORD</button>
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
                            </form>
                        </div>

                    </div>

                </div>

            </div>


        </div>

        <% }%>


    </body>
</html>
