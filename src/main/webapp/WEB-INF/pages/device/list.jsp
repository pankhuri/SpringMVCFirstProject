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

    <section>
      <div class="row-fluid iotdevices">
        <div class="container">
          <h1><span class="icons"></span>Devices
            <button class="pull-right btngreenicon uploadDevice" type="button">Upload  your device(.xls)</button>
          </h1>

          <table class="table table-striped">
            <thead>
            <tr class="headline">
              <th width="1%"></th>
              <th width="89%">Device Name</th>
              <th width="10%" align="center">&nbsp;</th>
            </tr>
            </thead>
            <tbody>
            <!-- iterate devices -->
            <tr>
              <td></td>
              <td>
                <div>Device.DeviceId </div>
                <div class="row-fluid">
                  <div class="span8">
                    <small class="smallText muted">Purchase Date: Device.PurchaseDate |
                    </small>
                    <small class="smallText muted">Purchase Location: Device.Location  |
                    </small>
                    <small class="smallText muted">Product Identifier: Device.ProductIdentifier
                    </small>
                  </div>
                    <div class="span3">

                </div>
                  <div class="span6">

                  </div>
                </div>
              </td>
              <td class="viewicons"><a  href="#device_edit" class="edit"></a><a href="Javascript:void(0)" onclick="return TriggerDelete('#Device.Id')" class="delete"></a></td>
            </tr>

            <!-- else  -->
            <tr>
              <td colspan="3">No Record found</td>
            </tr>

            </tbody>

          </table>
          <div class="pull-right">
           
          </div>
        </div>
      </div>
    </section>


    <div id="divUploadDevice" class="modal cutom_changes myaction hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      File upload
      <div class="modal-header ">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
        <h3 id="myModalLabel">Upload Device</h3>
      </div>
      <div class="modal-body">
        <div class="input-append custom">

          <input class="span2" type="text" id="txtDummyFileName" />
          <button class="btn btngreen btn-large" id="btnUploadDevice" onclick="return InitializeUploadControl()" value="Select">Select</button>
          <input type="file" id="inputUpLoadDevice" name="inputUpLoadDevice" style="width: 0px; height: 0px;" onchange="getFileName(this);" />
        </div>
      </div>
      <div class="modal-footer">
        <button class="btn btn-large blackbtn" onclick="ShowLoader()">Confirm</button>
        <button class="btn btn-large blackbtn" data-dismiss="modal">Cancel</button>
      </div>

    </div>


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