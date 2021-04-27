<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Admin Home</title>
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
        <script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
        <script type="text/javascript">
            function required()
            {
                var empty = document.form1.sel.value;
                if (empty === "select")
                {
                    window.alert("Please select any other options ...");
                    return false;
                } else
                {
                    return true;
                }
            }
        </script>
    </head>
    <body data-spy="scroll" data-target="#navmenu">

        <div class='preloader'>
            <div class='loaded'>&nbsp;</div>
        </div>
        <!--Home page style-->
        <%
            String user = "";
            String msg = "";
            if (session.getAttribute("user") != null) {
                user = session.getAttribute("user").toString();
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
                                    </div>

                                    <!-- Collect the nav links, forms, and other content for toggling -->
                                    <div class="collapse navbar-collapse"
                                         id="bs-example-navbar-collapse-1">

                                        <ul class="nav navbar-nav navbar-right">
                                            <li><a href="admin.jsp" class="btn btn-white">Home</a></li>
                                            <li><a href="detectspam.jsp" class="btn btn-white">Detect Spam </a></li>
                                            <li><a href="logout.jsp" class="btn btn-white">Logout</a></li>
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
                                    <h3><%=msg%></h3>
                                    <br /> <br />
                                    <form action="./Convert2Arff" name="form1" method="post" onsubmit=" return required();">
                                            <table class="table-bordered">
                                                <tr>
                                                    <th>Select CSV file :</th>
                                                    <td>
                                                        <select id="sel" name="type">
                                                            <option value="select">Select</option>
                                                            <option value="traindata">traindata.csv</option>
                                                            <option value="testdata">testdata.csv</option>
                                                        </select>
                                                    </td>
                                                </tr>
                                            </table>
                                            <input type="submit" class="btn btn-group" value="Submit"/>
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
            session.setAttribute("msg", "");
        %>

        <script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
        <script src="assets/js/vendor/bootstrap.min.js"></script>
        <script src="assets/js/jquery.easypiechart.min.js"></script>

        <script src="assets/js/plugins.js"></script>
        <script src="assets/js/main.js"></script>

    </body>
    <!--    <div class="loading">
            <img id="loading-image" src="images/ajax-loader.gif" alt="Loading..." />
        </div>-->
</html>
