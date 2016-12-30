<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>

    <link type="text/css" href="<c:url value="/WEB-INF/contents/css/style.css" />" rel="stylesheet"/>

    <script type="text/javascript" src="http://www.amcharts.com/lib/3/amcharts.js"></script>
    <script type="text/javascript" src="http://www.amcharts.com/lib/3/pie.js"></script>
    <script type="text/javascript" src="http://www.amcharts.com/lib/3/serial.js"></script>
    <script type="text/javascript" src="http://www.amcharts.com/lib/3/themes/light.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style>
        .pull-left{
            padding-left: 20px;
        }
        .pull-right{
            padding-right: 20px;
        }
    </style>

</head>
<body>
<div class="container ">
    <div class="row">
        <div class="col-md-3"></div>

        <br> <br><br>

        <!-- Header -->
        <tiles:insertAttribute name="header"/>

        <!-- Menu Page -->
        <tiles:insertAttribute name="menu"/>


        <!-- Main Page -->
        <tiles:insertAttribute name="body"/>



            <!-- Footer Page -->
            <tiles:insertAttribute name="footer"/>

    </div>

</div>
</body>
</html>