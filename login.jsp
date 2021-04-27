<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>User Login Page</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <link rel="stylesheet" href="assets/css/fonticons.css">
        <link rel="stylesheet" href="assets/fonts/stylesheet.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/plugins.css" />

        <link rel="stylesheet" href="assets/css/style.css">

        <link rel="stylesheet" href="assets/css/responsive.css" />
        <link rel="stylesheet" href="assets/css/custom.css" />

    </head>
    <body data-spy="scroll" data-target="#navmenu">
        <div class='preloader'>
            <div class='loaded'>&nbsp;</div>
        </div>
        <!--Home page style-->
        <%
            String user = "";
            String msg = "";
            if (session.getAttribute("uid") != null) {
                user = session.getAttribute("uid").toString();
            }
            if (session.getAttribute("msg") != null) {
                msg = session.getAttribute("msg").toString();
            }
        %>
        <header id="main_menu" class="header">
            <div class="main_menu_bg navbar-fixed-top">
                <div class="container">
                    <div class="row">
                        <div class="nave_menu wow fadeInUp" data-wow-duration="1s">
                            <nav class="navbar navbar-default" id="navmenu">
                                <div class="container-fluid">
                                    <!-- Brand and toggle get grouped for better mobile display -->
                                    <div class="navbar-header">
                                        <button type="button" class="navbar-toggle collapsed"
                                                data-toggle="collapse"
                                                data-target="#bs-example-navbar-collapse-1"
                                                aria-expanded="false">
                                            <span class="sr-only">Toggle navigation</span> <span
                                                class="icon-bar"></span> <span class="icon-bar"></span> <span
                                                class="icon-bar"></span>
                                        </button>
                                        <a class="navbar-brand" href="index.jsp"><img
                                                src="images/logo.jpg" alt="Logo" /></a>
                                    </div>

                                    <!-- Collect the nav links, forms, and other content for toggling -->
                                    <div class="collapse navbar-collapse"
                                         id="bs-example-navbar-collapse-1">

                                        <ul class="nav navbar-nav navbar-right">
                                            <li><a href="index.jsp" class="btn btn-white">Home</a></li>
                                            <li><a href="login.jsp" class="btn btn-white">Login</a></li>
                                            <li><a href="register.jsp" class="btn btn-white">SignUp</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </nav>
                        </div>
                    </div>

                </div>

            </div>
        </header>
        <!--End of header -->



        <section id="home" class="home">
            <div class="home-overlay-fluid">
                <div class="container">
                    <div class="row">
                        <div class="main_slider_area">
                            <div class="slider">
                                <div class="single_slider wow fadeIn" data-wow-duration="2s">

                                    <h3><%=user%>
                                        <%=msg%></h3>

                                    <br />
                                    <form action="./Login" method="post">
                                        <table class="table-bordered">
                                            <tr>
                                                <th>Username :</th>
                                                <td><input type="email" name="uname" id="uname"
                                                           placeholder="Enter your Email" required /></td>
                                            </tr>
                                            <tr>
                                                <th>Password :</th>
                                                <td><input type="password" name="pass" id="pass"
                                                           pattern="([a-zA-Z0-9]){6,}" required
                                                           title="Atleast contains 6 characters" /></td>
                                            </tr>
                                        </table>
                                        <input type="submit" class="btn btn-group" value="Submit" />
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <footer id="coppyrights" class="coppyrights">
            <div class="container-fluid">
                <div class="row">
                    <div class="coppyright">
                        <p>2020. All Rights Reserved</p>
                    </div>
                </div>
            </div>
        </footer>

        <%
            session.removeAttribute("msg");
        %>

        <script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
        <script src="assets/js/vendor/bootstrap.min.js"></script>
        <script src="assets/js/jquery.easypiechart.min.js"></script>

        <script src="assets/js/plugins.js"></script>
        <script src="assets/js/main.js"></script>

    </body>
</html>
