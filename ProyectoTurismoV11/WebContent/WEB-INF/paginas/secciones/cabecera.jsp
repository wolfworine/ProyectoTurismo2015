
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!--logo and iconic logo start-->
        <div class="logo">
            <a href="index.html"><img src="<s:url value="/images/logoeym.jpg"/>" alt=""></a>
        </div>

        <div class="logo-icon text-center">
            <a href="index.html"><img src="<s:url value="/images/logo_icon.png"/>" alt=""></a>
        </div>
        <!--logo and iconic logo end-->

        <div class="left-side-inner">

            <!-- visible to small devices only -->
            <div class="visible-xs hidden-sm hidden-md hidden-lg">
                <div class="media logged-user">
                    <a ><img  src="<s:url value="/images/avatar-mini.jpg"/>" class="media-object" alt=""></a>
                    <div class="media-body">
                        <h4><a href="#"><s:actionmessage escape="true"/></a></h4>
                        <span>"Hello There..."</span>
                    </div>
                </div>

                <h5 class="left-nav-title">Account Information</h5>
                <ul class="nav nav-pills nav-stacked custom-nav">
                  <li><a href="#"><i class="fa fa-user"></i> <span>Profile</span></a></li>
                  <li><a href="#"><i class="fa fa-cog"></i> <span>Settings</span></a></li>
                  <li><a href="#"><i class="fa fa-sign-out"></i> <span>Sign Out</span></a></li>
                </ul>
            </div>

   