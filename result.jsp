<%@page import="weka.classifiers.trees.RandomForest"%>
<%@page import="weka.classifiers.Evaluation"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>View Result</title>
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

    </head>
    <body data-spy="scroll" data-target="#navmenu">

        <div class='preloader'>
            <div class='loaded'>&nbsp;</div>
        </div>
        <!--Home page style-->
        <%
            String user = "";
            String msg = "";
            RandomForest forest = null;
            Evaluation evaluation = null;
            if (session.getAttribute("user") != null) {
                user = session.getAttribute("user").toString();
            }
            if (session.getAttribute("msg") != null) {
                msg = session.getAttribute("msg").toString();
            }
            if (session.getAttribute("eval") != null) {
                evaluation = (Evaluation) session.getAttribute("eval");
            }
            if (session.getAttribute("forest") != null) {
                forest = (RandomForest) session.getAttribute("forest");
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
                                            <li><a href="pichart.jsp" class="btn btn-white">PI-Chart</a></li>
                                            <li><a href="barchart.jsp" class="btn btn-white">BarChart</a></li>
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
                                    <table class="table-bordered">
                                        <tr>
                                            <th>Forest Details : </th>
                                            <td><%=forest%></td>
                                        </tr>
                                        <tr>
                                            <th>Total Number of Instances : </th>
                                            <td><%=evaluation.numInstances()%></td>
                                        </tr>
                                        <tr>
                                            <th>Correctly Classified Instances : </th>
                                            <td><%=evaluation.correct()%></td>
                                        </tr>
                                        <tr>
                                            <th> Incorrectly Classified Instances : </th>
                                            <td><%=evaluation.incorrect()%></td>
                                        </tr>
                                        <tr>
                                            <th>Kappa statistic : </th>
                                            <td><%=evaluation.kappa()%></td>
                                        </tr>
                                        <tr>
                                            <th>Mean absolute error : </th>
                                            <td><%=evaluation.meanAbsoluteError()%></td>
                                        </tr>
                                        <tr>
                                            <th>Root mean squared error : </th>
                                            <td><%=evaluation.rootMeanSquaredError()%></td>
                                        </tr>
                                        <tr>
                                            <th>Relative absolute error : </th>
                                            <td><%=evaluation.relativeAbsoluteError()%></td>
                                        </tr>
                                        <tr>
                                            <th>Root relative squared error : </th>
                                            <td><%=evaluation.rootRelativeSquaredError()%></td>
                                        </tr>
                                        <tr>
                                            <th>Error Rate : </th>
                                            <td><%=evaluation.errorRate()%></td>
                                        </tr>
                                        <tr>
                                            <th>Number of Instances Correctly Classified (%): </th>
                                            <td><%=evaluation.pctCorrect()%></td>
                                        </tr>
                                        <tr>
                                            <th>Number of Instances InCorrectly Classified (%): </th>
                                            <td><%=evaluation.pctIncorrect()%></td>
                                        </tr>
                                        <tr>
                                            <th>Results For Class 0 : </th>
                                            <tr>
                                                <th>Precision : </th>
                                                <td><%=evaluation.precision(0)%></td>
                                            </tr>
                                            <tr>
                                                <th>Recall : </th>
                                                <td><%=evaluation.recall(0)%></td>
                                            </tr>
                                            <tr>
                                                <th>F-Measure : </th>
                                                <td><%=evaluation.fMeasure(0)%></td>
                                            </tr>
                                        </tr>
                                        <tr>
                                            <th>Results For Class 1 : </th>
                                            <tr>
                                                <th>Precision : </th>
                                                <td><%=evaluation.precision(1)%></td>
                                            </tr>
                                            <tr>
                                                <th>Recall : </th>
                                                <td><%=evaluation.recall(1)%></td>
                                            </tr>
                                            <tr>
                                                <th>F-Measure : </th>
                                                <td><%=evaluation.fMeasure(1)%></td>
                                            </tr>
                                        </tr>
                                        <tr>
                                            <th>Results For Class 2 : </th>
                                            <tr>
                                                <th>Precision : </th>
                                                <td><%=evaluation.precision(2)%></td>
                                            </tr>
                                            <tr>
                                                <th>Recall : </th>
                                                <td><%=evaluation.recall(2)%></td>
                                            </tr>
                                            <tr>
                                                <th>F-Measure : </th>
                                                <td><%=evaluation.fMeasure(2)%></td>
                                            </tr>
                                        </tr>
                                        <tr>
                                            <th>Results For Class 3 : </th>
                                            <tr>
                                                <th>Precision : </th>
                                                <td><%=evaluation.precision(3)%></td>
                                            </tr>
                                            <tr>
                                                <th>Recall : </th>
                                                <td><%=evaluation.recall(3)%></td>
                                            </tr>
                                            <tr>
                                                <th>F-Measure : </th>
                                                <td><%=evaluation.fMeasure(3)%></td>
                                            </tr>
                                        </tr>
                                        <tr>
                                            <th>Results For Class 4 : </th>
                                            <tr>
                                                <th>Precision : </th>
                                                <td><%=evaluation.precision(4)%></td>
                                            </tr>
                                            <tr>
                                                <th>Recall : </th>
                                                <td><%=evaluation.recall(4)%></td>
                                            </tr>
                                            <tr>
                                                <th>F-Measure : </th>
                                                <td><%=evaluation.fMeasure(4)%></td>
                                            </tr>
                                        </tr>
                                    </table>
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
</html>
