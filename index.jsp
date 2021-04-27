
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Welcome Page</title>
        <meta charset="utf-8">
        <meta name="viewport"
              content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <link href="layout/styles/layout.css" rel="stylesheet" type="text/css"
              media="all">
    </head>
    <body id="top">
        <div class="wrapper row0"></div>
        <!-- Top Background Image Wrapper -->
        <div class="bgded overlay"
             style="background-image: url('images/ml.jpg');">
            <!-- ################################################################################################ -->
            <div class="wrapper row1">
                <header id="header" class="hoc clear">
                    <!-- ################################################################################################ -->
                    <div id="logo" class="fl_left">
                    </div>
                    <nav id="mainav" class="fl_right">
                        <ul class="clear">
                            <li class="active"><a href="index.jsp">Home</a></li>
                            <li><a href="plogin.jsp">Admin</a></li>
                            <li><a href="login.jsp">User</a></li>
                        </ul>
                    </nav>
                    <!-- ################################################################################################ -->
                </header>
            </div>
            <div id="pageintro" class="hoc clear">
                <!-- ################################################################################################ -->
                <div class="flexslider basicslider">
                    <ul class="slides">
                        <li>
                            <article>
                                <h3 class="heading">Air Quality Prediction System</h3>
                                <p>Urban Air Quality Prediction using Machine Learning Algorithm techniques</p>
                                <footer>
                                    <a class="btn" href="index.jsp">Air Quality Prediction</a>
                                </footer>
                            </article>
                        </li>
                        <li>
                            <article>
                                <h3 class="heading">Air Quality Prediction System</h3>
                                <p>using Random decision forest and linear regression. </p>
                                <footer>
                                    <a class="btn" href="index.jsp">Air Quality Prediction</a>
                                </footer>
                            </article>
                        </li>
                     </ul>
                </div>
                <!-- ################################################################################################ -->
            </div>
            <!-- ################################################################################################ -->
        </div>
        <!-- Footer Background Image Wrapper -->
        <div class="bgded overlay" style="background-color: #FE7D6A;">
            <!-- ################################################################################################ -->
            
            <div class="wrapper row5">
                <div id="copyright" class="hoc clear">
                    <!-- ################################################################################################ -->
                    <p class="fl_left">
                        Copyright &copy; 2020 - All Rights Reserved
                    </p>
                    <!-- ################################################################################################ -->
                </div>
            </div>
        </div>
        <a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
        <script src="layout/scripts/jquery.min.js"></script>
        <script src="layout/scripts/jquery.backtotop.js"></script>
        <script src="layout/scripts/jquery.mobilemenu.js"></script>
        <script src="layout/scripts/jquery.flexslider-min.js"></script>
    </body>
</html>