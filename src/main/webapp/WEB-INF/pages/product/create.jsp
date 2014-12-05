<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="../resources/css/site.css" rel="stylesheet"/>
<link href="../resources/css/bootstrap.css" rel="stylesheet"/>
<link href="../resources/css/bootstrap-responsive.css" rel="stylesheet"/>
<link href="../resources/css/style.css" rel="stylesheet"/>
<script src="../resources/javascripts/jquery-2.1.min.js"></script>

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
                    <a href="/account/dashboard" class="brand">
                        <img src="../resources/img/logo.png"></a>
                    <div class="nav-collapse collapse">
                        <div class="nav-collapse">
                            <ul class="nav pull-right menus">
                                <li rel="events"><a href="/event/list" >Events</a></li>
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

        <style type="text/css">
            .invalidEntry {
                border-color: red !important;
            }
        </style>
        <section>
            <div class="row-fluid iotdevices product">
                <div class="container">
                    <h1><span class="icons"></span>Create Product</h1>
                    <div class="row-fluid">

                        <div class="create_event">
                            <div class="row-fluid">
                                <div class="span2 spacer">

                                    <img id="LogoImg"  src="../resources/img/no-image.png" />
                                    <input type="file" name="inputUploadLogo" id="inputUploadLogo" style="height: 0px; width: 0px" />
                                    <span class="upload_img" > Upload New</span>

                                </div>

                                <form id = "createform" , class="form-horizontal span9">
                                    <div class="control-group">
                                        <label class="control-label">Product Identifier</label>
                                        <div class="controls">
                                            <input class="input-xlarge" id="ProductIdentifier" name="ProductIdentifier" placeholder="Enter Product Identifier" type="text" value="">
                                            <!-- validations -->
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="inputEmail">Name</label>
                                        <div class="controls">
                                            <input class="input-xlarge" id="Name" name="Name" placeholder="Enter Name" type="text" value="">
                                            <!-- validations -->

                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="inputPassword">Description</label>
                                        <div class="controls">
                                            <textarea class = "input-xxlarge", placeholder = "Enter Description"></textarea>
                                        </div>
                                    </div>
                                    <div class="">
                                    <div class="row-fluid">
                                        <div class="span10 fixed_width">
                                            <table class="eventdetail tblDynamic" width="100%">
                                                <thead>
                                                <tr>
                                                    <th colspan="4">
                                                        <div class="greyblock">Properties<a href="javascript:void(0)" id="AddNewRow" onclick="AddNewRow()" class="pull-right"><span class="addrow"></span>Add</a></div>
                                                    </th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr class="noRecordFound" style="display: none;">
                                                    <td colspan="3">Please add a property</td>
                                                </tr>
                                                <tr class="prevRow">

                                                    <td class="colm1">
                                                        <input class="input-xlarge" id="txtPropName" type="text" value="">
                                                        <span class="field-validation-valid"></span>

                                                    </td>



                                                    <td class="colm2">
                                                        <select id="ddlPropertyDataType"><option value="1">Number</option>
                                                            <option value="2">Text</option>
                                                            <option value="3">Datetime</option>
                                                        </select>
                                                    </td>


                                                    <td class="colm3">
                                                        <input class="input-xlarge" id="txtPropValue"  type="text" value="">
                                                    </td>
                                                    <td align="center"><a href="javascript:void(0)" class="rowdel"></a></td>
                                                </tr>

                                                <tr>
                                                    <td>
                                                        <button class="btngreen" type="submit">Save</button></td>
                                                    <td align="left"></td>
                                                    <td></td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                                </form>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div id="clone" style="display: none">
                <div id="propName"><textbox class="relName", id = "txtPropName" /></div>
                <div id="propDataType">
                    <select id="ddlPropertyDataType" name="Properties[0].DataType"  class="valid"><option value="1">Number</option>
                        <option value="2">Text</option>
                        <option value="3">Datetime</option>
                    </select>
                </div>
                <div  id="propValue"> <textbox class="relValue",  id = "txtPropValue" /></div>
                <div id="proprowdel"><a onclick="DeletePropertyRow(this)" class="rowdel"></a></div>
            </div>

        </section>


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