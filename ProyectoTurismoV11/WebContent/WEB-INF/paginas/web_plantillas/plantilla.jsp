<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="tiles"  uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
  <meta name="keywords" content="admin, dashboard, bootstrap, template, flat, modern, theme, responsive, fluid, retina, backend, html5, css, css3">
  <meta name="description" content="">
  <meta name="author" content="ThemeBucket">
  <link rel="shortcut icon" href="#" type="image/png">

  <title>EyM Travel</title>

  <!--icheck--><!-- "<s:url value="/js/iCheck/skins/minimal/minimal.css" />"  -->
  <link href="<s:url value="/js/iCheck/skins/minimal/minimal.css" />" rel="stylesheet">
  <link href="<s:url value="/js/iCheck/skins/square/square.css" />" rel="stylesheet">
  <link href="<s:url value="/js/iCheck/skins/square/red.css" />" rel="stylesheet">
  <link href="<s:url value="/js/iCheck/skins/square/blue.css" />" rel="stylesheet">

  <!--dashboard calendar-->
  <link href="<s:url value="/css/clndr.css" />" rel="stylesheet">

  <!--Morris Chart CSS -->
  <link rel="stylesheet" href="<s:url value="/js/morris-chart/morris.css" />" >

  <!--common-->
  <link href="<s:url value="/web_css/style.css" />" rel="stylesheet">
  <link href="<s:url value="/css/style-responsive.css" />" rel="stylesheet">




  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
  <![endif]-->
</head>

<body class="horizontal-menu-page">
	<section class="panel">
    <!-- left side start-->
    <div class="navbar navbar-default" role="navigation">
        <div class="container-fluid">
            <!-- CABECERA -->
            <tiles:insertAttribute name="cabecera"/>    
          
       
        </div><!-- /.container-fluid -->
   
       <!-- left side end-->
    
   
		

        <!-- header section end-->

        <!-- page heading start-->
       
        <!-- page heading end-->
         <div class="container-fluid">
		<tiles:insertAttribute name="contenido"/>
      </div>
        <!--body wrapper end-->


        <!--footer section start-->
           <!-- PIE  -->
             <div class="container-fluid">
               <tiles:insertAttribute name="pie"/>  
           </div>
        <!--footer section end-->


    </div>
    <!-- main content end-->
</section>

<!-- Placed js at the end of the document so the pages load faster -->

<!-- Placed js at the end of the document so the pages load faster -->
<script src="<s:url value="/js/jquery-1.10.2.min.js"/>"></script>
<script src="<s:url value="/js/jquery-ui-1.9.2.custom.min.js"/>"></script>
<script src="<s:url value="/js/jquery-migrate-1.2.1.min.js"/>"></script>
<script src="<s:url value="/js/bootstrap.min.js"/>"></script>
<script src="<s:url value="/js/modernizr.min.js"/>"></script>
<script src="<s:url value="/js/jquery.nicescroll.js"/>"></script>

<!--easy pie chart-->
<script src="<s:url value="/js/easypiechart/jquery.easypiechart.js"/>"></script>
<script src="<s:url value="/js/easypiechart/easypiechart-init.js"/>"></script>

<!--Sparkline Chart-->
<script src="<s:url value="/js/sparkline/jquery.sparkline.js"/>"></script>
<script src="<s:url value="/js/sparkline/sparkline-init.js"/>"></script>

<!--icheck -->
<script src="<s:url value="/js/iCheck/jquery.icheck.js"/>"></script>
<script src="<s:url value="/js/icheck-init.js"/>"></script>

<!-- jQuery Flot Chart-->
<script src="<s:url value="/js/flot-chart/jquery.flot.js"/>"></script>
<script src="<s:url value="/js/flot-chart/jquery.flot.tooltip.js"/>"></script>
<script src="<s:url value="/js/flot-chart/jquery.flot.resize.js"/>"></script>


<!--Morris Chart-->
<script src="<s:url value="/js/morris-chart/morris.js"/>"></script>
<script src="<s:url value="/js/morris-chart/raphael-min.js"/>"></script>

<!--Calendar-->
<script src="<s:url value="/js/calendar/clndr.js"/>"></script>
<script src="<s:url value="/js/calendar/evnt.calendar.init.js"/>"></script>
<script src="<s:url value="/js/calendar/moment-2.2.1.js"/>"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.5.2/underscore-min.js"></script>

<!--common scripts for all pages-->
<script src="<s:url value="/js/scripts.js"/>"></script>

<!--Dashboard Charts-->
<script src="<s:url value="/js/dashboard-chart-init.js"/>"></script>

</body>
</html>











