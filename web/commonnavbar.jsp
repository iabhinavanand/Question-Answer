<%@page import="com.login.bean.UserLoginBean"%>
<% UserLoginBean user1 = (UserLoginBean) session.getAttribute("current-user"); %>

<!--Navbar-->
<nav class="navbar navbar-expand-lg navbar-light black fixed-top" style="margin:0px;padding:0px;">
    <div class="container-fluid">

        <!-- Navbar brand -->
        <a class="navbar-brand" href="#"><img src="img/Logo.png" alt="" /></a>

        <!-- Collapse button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbar-collapse" aria-controls="basicExampleNav"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>



        <!-- Collapsible content -->
        <div class="collapse navbar-collapse justify-content-end" id="basicExampleNav">

            <!-- Links -->
            <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="#" id="NavbarLinks">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" id="NavbarLinks">Answers</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" id="NavbarLinks">Notifications</a>
                    </li>

                    <li>
                        <div class="clock">
                            <img src="img/dg8.gif" name="hr1"><img src="img/dg8.gif" name="hr2"><img src="img/dgc.gif"><img src="img/dg8.gif" name="mn1"><img src="img/dg8.gif" name="mn2"><img src="img/dgc.gif"><img src="img/dg8.gif" name="se1"><img src="img/dg8.gif" name="se2"><img src="img/dgam.gif" name="ampm">
                        </div>

                    </li>




                    <% if (user1 != null) {
                    %>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <b><strong><span style="color:#05386B"><%=user1.getUfirstname()%>&nbsp;<%=user1.getUsurname()%></span></strong></b>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="#" id="NavbarInnerLinks">Account Info</a>
                            <!-- Button to Open the Profile Update Modal -->
                            <button type="button" data-toggle="modal" data-target="#profile-update-modal">
                                <a class="dropdown-item" href="#" id="NavbarInnerLinks">Update Profile</a></button>

                            <a class="dropdown-item" href="#" id="NavbarInnerLinks">Help</a>
                            <a class="dropdown-item" href="#" id="NavbarInnerLinks">Suggestions</a>
                            <a class="dropdown-item" href="#" id="NavbarInnerLinks">Send Feedback</a>
                            <a class="dropdown-item" href="LogoutServlet" id="NavbarInnerLinks">Logout</a>
                        </div>
                    </li>

                    <li class="nav-item">

                        <!-- Button to Open the Ask Question Modal -->
                        <button type="button" data-toggle="modal" data-target="#do-post-modal" id="nextbtnForAddQuestion">
                            <a class="nav-link" href="#" >Add Question</a></button>
                    </li>

                </ul>



            </div>

            <% }%>

        </div>
        <!-- Links -->

        <!--Search Box Addition
                    <form class="form-inline">
                        <div class="md-form mt-0">
                            <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
                        </div>
                    </form>
        -->
    </div>

    <!-- Collapsible content -->
</nav>
<!--/.Navbar-->
