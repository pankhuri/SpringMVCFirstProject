<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="resources/css/application.css" rel="stylesheet"/>
<link href="resources/css/bootstrap.css" rel="stylesheet"/>
<link href="resources/css/bootstrap-responsive.css" rel="stylesheet"/>
<script src="resources/javascripts/jquery-2.1.min.js"></script>

<html>
<body>
<div class="body_wrapper">
    <header class="iothead">
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <button data-target=".nav-collapse" data-toggle="collapse" class="btn btn-navbar" type="button">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="#/Account/dashboard" class="brand">
                        <img src="resources/img/logo.png"></a>
                    <div class="nav-collapse collapse">
                    <div class="nav-collapse">
                        <ul class="nav pull-right menus">
                            <li rel="events"><a href="#Event/list" >Events</a></li>
                            <li rel="devices"><a href="#Device/List">Devices</a></li>
                            <li rel="products"><a href="#Product/List">Products</a></li>
                            <li><a href="#">Rules</a></li>
                            <li><a href="#">Reports</a></li>
                            <li><a href="#">Apps</a></li>
                            <li><a href="#">Settings</a></li>
                            <li class="dropdown active">

                            </li>
                        </ul>
                    </div>
                    <!--/.nav-collapse -->
                </div>
                </div>
            </div>
            <div class="clear"></div>
    </header>
    <!-- alerts  ---------->

    <div class="alert alert-success modify fade in" style="display: none;">
    <span class="close" type="button" onclick="hideThis(this)">×</span>
    <span class="alert-heading"></span>
    </div>
    <div class="alert modify alert-error fade in" style="display: none">
    <span class="close" type="button" onclick="hideThis(this)">×</span>
    <span class="alert-heading"></span>
    </div>

    <!-- alerts  close---------->
    <div class="container body-content">

        <!-- body starts -->

        <section><div class="row-fluid iotdashboard">
            <div class="container">
                <h1>Welcome to your Dashboard</h1>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas nec lacus ut nisi pulvinar tincidunt at vel felis. In eleifend cursus eros, nec suscipit tellus tincidunt quis. Suspendisse potenti. Aliquam ut rutrum orci. Cras lorem ante, porta at purus in, luctus iaculis ante. Maecenas eget nisi ut odio eleifend sollicitudin. Mauris eget ipsum sollicitudin, cursus turpis interdum, tempus sem. Aliquam erat volutpat. Curabitur congue nisi quis malesuada condimentum. Aliquam gravida malesuada diam eget feugiat. Phasellus nec commodo metus. Vivamus suscipit sem odio, sed congue eros commodo et.</p>
                <ul>
                    <li><div class="bluecircle event hollow"></div><strong>Events</strong></li>
                    <li><div class="bluecircle device hollow"></div><strong>Devices</strong></li>
                    <li><div class="bluecircle product hollow"></div><strong>Products</strong></li>
                    <li><div class="bluecircle rules hollow"></div><strong>Rules</strong></li>
                    <li><div class="bluecircle report hollow"></div><strong>Reports</strong></li>
                    <li><div class="bluecircle app hollow"></div><strong>Apps</strong></li>
                </ul>
            </div>
        </div>
        </section>
        <%--<script type="text/javascript">--%>
            <%--$(document).ready(function () {--%>
                <%--$('.bluecircle.event').bind("click", function () {--%>
                    <%--location.href = '@Url.Content("~/Event/List/")';;--%>
                <%--});--%>

                <%--$('.bluecircle.device').bind("click", function () {--%>
                    <%--location.href = '@Url.Content("~/Device/List")';;--%>
                <%--});--%>

                <%--$('.bluecircle.product').bind("click", function () {--%>
                    <%--location.href = '@Url.Content("~/Product/List")';;--%>
                <%--});--%>
            <%--});--%>

        <%--</script>--%>

        <!-- body ends -->

    </div>

    <script>

        function SetActiveClass(ctrl) {
            $(ctrl).addClass('active');
        }
        function hideThis(caller) {
            $(caller).closest('.alert').hide();
        }
        $('.nav li.dropdown').addClass('active');

        function showLoader() {
            $(".backdrop").show();
        }

        function hideLoader() {
            $(".backdrop").hide();
        }


    </script>

    <footer>Copyright 2014 iYogi Pvt. Ltd. All Rights Reserved.</footer>
</div>
</body>
</html>