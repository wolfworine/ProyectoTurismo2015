<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">
    <link rel="shortcut icon" href="#" type="image/png">

    <title>Login</title>

 <link rel="stylesheet" href="<s:url value="/css/style.css"/>" type="text/css"/>
  <link rel="stylesheet" href="<s:url value="/css/style-responsive.css"/>" type="text/css"/>


    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->


</head>
<body class="login-body">
<div class="container">

    <s:form action="loginUsuario" theme="bootstrap" cssClass="form-signin"
                    namespace="/seguridad">
  

        <div class="form-signin-heading text-center">
            <h1 class="sign-title">Sign In</h1>
            <img src="<s:url value="/images/login-logo.png" />"  alt=""/>
        </div>
        <div class="login-wrap">
            <s:textfield  name="usuario.cuenta" cssClass="form-control" placeholder="User ID"  />
            <s:password name="usuario.contrasena" cssClass="form-control" placeholder="Password" />
            <button class="btn btn-lg btn-login btn-block" type="submit" value="%{getText('accion.login')}">
                <i class="fa fa-check"></i>
            </button>
                
            
            <div class="registration">
                Aún no se encuentra registrado?
                <a class="" href="registration.html">
                    Signup
                </a>
            </div>
            <label class="checkbox">
                <input type="checkbox" value="remember-me"> Recordar mis datos
                <span class="pull-right">
                    <a data-toggle="modal" href="#myModal"> Olvidó su clave?</a>

                </span>
            </label>

        </div>

        <!-- Modal -->
        <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Forgot Password ?</h4>
                    </div>
                    <div class="modal-body">
                        <p>Enter your e-mail address below to reset your password.</p>
                        <input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">

                    </div>
                    <div class="modal-footer">
                        <button data-dismiss="modal" class="btn btn-default" type="button">Cancel</button>
                        <button class="btn btn-primary" type="button">Submit</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- modal -->
 </s:form>

</div>



<!-- Placed js at the end of the document so the pages load faster -->

<!-- Placed js at the end of the document so the pages load faster -->
<script src="<s:url value="/js/jquery-1.10.2.min.js"/>"></script>
<script src="<s:url value="/js/bootstrap.min.js" />"></script>
<script src="<s:url value="/js/modernizr.min.js" />"></script>

</body>
</html>
