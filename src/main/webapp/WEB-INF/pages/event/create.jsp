<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="../resources/css/site.css" rel="stylesheet"/>
<link href="../resources/css/style.css" rel="stylesheet"/>
<link href="../resources/css/bootstrap.css" rel="stylesheet"/>
<link href="../resources/css/bootstrap-responsive.css" rel="stylesheet"/>
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
            <div class="row-fluid iotdevices event">
                <div class="container">

                    <h1><span class="icons"></span>Create Event
                    </h1>
                    <div class="create_event">
                        <div class="form-horizontal">
                            <div class="control-group">
                                <label class="control-label" for="inputEmail">Name</label>
                                <div class="controls">
                                    <input type="text" id="inputEmail" placeholder="Enter Name" class="input-xxlarge">
                                    <!-- validations required-->

                                </div>
                            </div>
                            <div class="control-group">
                                <label for="inputEmail" class="control-label">Protocol</label>
                                <div class="controls">
                                    <select id="EventRequestType" name="EventRequestType"><option value="1">XML</option>
                                        <option value="2">JSON</option>
                                        <option value="3">CSV</option>
                                    </select>
                                    <button type="button" class="btngreen">Preview</button>
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label" for="inputPassword">Sample XML</label>
                                <div class="controls">
                                    <textarea class="input-xxlarge" placeholder = "Enter Description"></textarea>
                                </div>

                                <div class="checkbox extract-info">
                                    <label>
                                        <input type="checkbox" id="attributesIncluded">
                                        Include Attributes
                                    </label>
                                    <button id="extractInfo" class="btn btn-default btn-primary" onclick="return false;">Extract Info</button>
                                </div>

                            </div>
                            <div id="tree" name="selNodes" class="control-group">
                            </div>
                        </div>
                        <div class="row-fluid">
                            <div class="span8">
                                <div id="attributes" style="display:none;">
                                    <table class="tblDynamic event-table" width="95%">

                                        <tr>
                                            <th colspan="3">
                                                <div class="greyblock">Attributes<!--<a href="javascript:void(0)" class="pull-right AddNewRow"><span class="addrow"></span>Add</a>!--></div>
                                            </th>
                                        </tr>

                                    </table>
                                    <div class="scroll_box">
                                        <table class="tblDynamic event-table attributes" data-table-name="attributes" width="95%">
                                            <tbody>
                                            <tr class="noRecordFound" style="display: none;">

                                                <td colspan="2">Please add a row</td>

                                            </tr>
                                            @*<tr class="prevRow">

                                                <td class="" width="66%"><textbox id = "txtPropName" class="input-xlarge"></textbox>
                                                </td>
                                                <td class="" width="26%">
                                                    <select class="valid" id="ddlPropertyDataType" >
                                                        <option value="1">Number</option>
                                                        <option selected="selected" value="2">Text</option>
                                                        <option value="3">Datetime</option>
                                                    </select>
                                                </td>
                                                <td align="center"><a href="javascript:void(0)" onclick="DeletePropertyRow(this)" class="rowdel"></a></td>
                                            </tr>
                                            *@
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div id="nodes" style="display:none;">
                                    <table class="tblDynamic event-table" width="95%">
                                        <tr>
                                            <th colspan="3">
                                                <div class="greyblock">Nodes<!--<a href="javascript:void(0)" class="pull-right AddNewRow"><span class="addrow"></span>Add</a>!--></div>
                                            </th>
                                        </tr>
                                    </table>
                                    <div class="scroll_box">
                                        <table class="tblDynamic event-table nodes" data-table-name="nodes" width="95%">
                                            <tbody>
                                            <tr class="noRecordFound" style="display: none;">
                                                <td colspan="2">Please add a row</td>
                                            </tr>
                                            @*<tr class="prevRow">

                                                <td class=""> <textbox id = "txtPropName" class="input-xlarge"></textbox> </td>
                                                <td class="">
                                                    <select class="valid" id="ddlPropertyDataType" >
                                                        <option value="1">Number</option>
                                                        <option selected="selected" value="2">Text</option>
                                                        <option value="3">Datetime</option>
                                                    </select>
                                                </td>
                                                <td align="center"><a href="javascript:void(0)" onclick="DeletePropertyRow(this)" class="rowdel"></a></td>
                                            </tr>
                                            *@

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="btn_div">
                                    <button class="btngreen pull-right" onclick="return ValidateEntries();" value="Save" type="button">Save</button>
                                    <button class="btngrey pull-right" onclick="" value="Cancel" type="button">Cancel</button>

                                </div>
                            </div>
                        </div>
                    </div>
                    }
                </div>
            </div>
            <div id="clone" style="display: none">
                <div id="propName"><textbox id = "txtPropName" class="input-xlarge"></div>
                <div id="propDataType">
                    <select class="valid" id="ddlPropertyDataType" >
                        <option value="1">Number</option>
                        <option selected="selected" value="2">Text</option>
                        <option value="3">Datetime</option>
                    </select>
                </div>
                <div id="propDisplayOrder"> </div>
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