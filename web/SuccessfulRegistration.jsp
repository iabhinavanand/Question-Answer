<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Successful Registration</title>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0,shrink-to-fit=no">

        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>



        <style>

            .container
            {
                background-color: #3feee6;
                background-image: url('img/brilliant.png');
            }

            .clock{
                margin-top: 15px;
            }
            body{
                width:100%;
                height:100%;
                padding: 0px;
                margin: 0px;
            }
            .navbar-brand{
                margin-left: 20px;
            }

            .navbar-toggler>.navbar-toggler-icon{
                color:black;
                background-color: white;
            }
            #navbarNavDropdown>.navbar-nav>li
            {
                margin-right: 20px;
            }


            #navbarNavDropdown>.navbar-nav>li>a{
                color:#05386B;
                font-weight: 600;
                text-transform: uppercase;
                padding: 20px;
            }
            #navbarNavDropdown>.navbar-nav>li>a:hover
            {
                color:gray;
            }





        </style>
        
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

        
    </head>

    <body>
        <%@include file="commonnavbar.jsp"%>

        <div class="container">
            <div class="row mt-4" style="padding-top:50px;">
                <div class="col-sm-12 pt-4">
                    <center><h1><b><strong>Successful Registration</strong></b></h1></center>
                    <br>
                    <br>

                    <p style="text-align:left;">
                    <pre>
            HEY THERE,
YOUR ACCOUNT HAS BEEN CREATED!
Please, verify it by clicking the activation link that has been sent to your email.
If the email doesn't appear shortly, please be sure to check your spam
                    </pre>
                    </p>
                    
                    <button class="btn btn-primary text-center text-white" type="button">Send Mail Again</button>
                </div>
            </div>
        </div>
    </body>

</html>
