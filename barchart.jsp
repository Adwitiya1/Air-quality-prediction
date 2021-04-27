
<%@page import="weka.classifiers.Evaluation"%>
<%@page import="com.air.dblogic.AdminDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Bar Chart</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" href="assets/css/fonticons.css">
        <link rel="stylesheet" href="assets/fonts/stylesheet.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/plugins.css" />

        <link rel="stylesheet" href="assets/css/style.css">

        <link rel="stylesheet" href="assets/css/responsive.css" />
        <link rel="stylesheet" href="assets/css/custom.css" />
        <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
    </head>
    <body data-spy="scroll" data-target="#navmenu">
        <header id="main_menu" class="header">
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
                            <li><a href="pichart.jsp" class="btn btn-white">Pie-Chart</a></li>
                            <li><a href="barchart.jsp" class="btn btn-white">BarChart</a></li>
                            <li><a href="logout.jsp" class="btn btn-white">Logout</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <!--End of header -->
        <%
            Evaluation eval = null;
            if (session.getAttribute("eval") != null) {
                eval = (Evaluation) session.getAttribute("eval");
            }
        %>
        <section id="home" class="home">
            <h2>Model Statistics Report</h2>
            <div id="myDiv"></div>
        </section>
    </body>
    <script>
        var data = [
            {
                x: ['KAPPA', 'MAE', 'RMSE', 'RAE', 'RLSE'],
                y: [<%=eval.kappa()%>,<%=eval.meanAbsoluteError()%>,<%=eval.rootMeanSquaredError()%>,<%=eval.relativeAbsoluteError()%>,<%=eval.rootRelativeSquaredError()%>],
                type: 'bar',
                marker: {
                    color: 'rgb(247,50,50)'
                }
            }
        ];

        var layout = {
            title: 'Error Statistics Graph',
            font: {
                family: 'Raleway, sans-serif'
            },
            showlegend: false,
            xaxis: {
                tickangle: -45
            },
            yaxis: {
                zeroline: false,
                gridwidth: 1
            },
            bargap: 0.05
        };

        Plotly.newPlot('myDiv', data, layout);
    </script>
</html>
