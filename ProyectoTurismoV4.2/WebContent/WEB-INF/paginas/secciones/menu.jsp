
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<%@ taglib prefix="s" uri="/struts-tags"%>

       <!-- MENU -->
            
      
<!--sidebar nav start-->
            <ul class="nav nav-pills nav-stacked custom-nav">
                <li><a href="index.html"><i class="fa fa-home"></i> <span>Inicio</span></a></li>
                <%-- <li class="menu-list nav-active"><a href=""><i class="fa fa-laptop"></i> <span>Layouts</span></a>
                    <ul class="sub-menu-list">
                        <li ><a href="blank_page.html"> Blank Page</a>
                       </li> 


                    </ul> --%>
<!-- START MODULOS -->
                </li>
                <li class="menu-list"><a href=""><i class="fa fa-book"></i> <span>Módulo Usuario</span></a>
                    <ul class="sub-menu-list">
                        <li><a	href="<s:url action="mainEmpleado" namespace="/empleado"/>"> Mantenimiento Empleados</a></li>
                        <li><a href="general.html"> Mantenimiento Clientes</a></li>

                    </ul>
                </li>
                
             
                
                
                
                <li class="menu-list"><a href=""><i class="fa fa-book"></i> <span>Módulo Paquetes</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="general.html"> General</a></li>

                    </ul>
                </li>
                
                <li class="menu-list"><a href=""><i class="fa fa-book"></i> <span>Módulo Ofertas</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="general.html"> General</a></li>

                    </ul>
                </li>
                
                <li class="menu-list"><a href=""><i class="fa fa-book"></i> <span>Módulo Pagos</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="general.html"> General</a></li>

                    </ul>
                </li>
 <!-- END MODULOS -->
                <%-- <li class="menu-list"><a href=""><i class="fa fa-cogs"></i> <span>Components</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="grids.html"> Grids</a></li>


                    </ul>
                </li>

                <li><a href="fontawesome.html"><i class="fa fa-bullhorn"></i> <span>Mantenimiento de Oferta</span></a></li>

                <li class="menu-list"><a href=""><i class="fa fa-envelope"></i> <span>Mail</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="mail.html"> Inbox</a></li>
                        <li><a href="mail_compose.html"> Compose Mail</a></li>
                        <li><a href="mail_view.html"> View Mail</a></li>
                    </ul>
                </li>

                <li class="menu-list"><a href=""><i class="fa fa-tasks"></i> <span>Mantenimiento de Cliente</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="form_layouts.html"> Form Layouts</a></li>
                        <li><a href="form_advanced_components.html"> Advanced Components</a></li>
                        <li><a href="form_wizard.html"> Form Wizards</a></li>
                        <li><a href="form_validation.html"> Form Validation</a></li>
                        <li><a href="editors.html"> Editors</a></li>
                        <li><a href="inline_editors.html"> Inline Editors</a></li>
                        <li><a href="pickers.html"> Pickers</a></li>
                        <li><a href="dropzone.html"> Dropzone</a></li>
                    </ul>
                </li>
                <li class="menu-list"><a href=""><i class="fa fa-bar-chart-o"></i> <span>Mantenimiento de Empleados</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="flot_chart.html"> Flot Charts</a></li>
                        <li><a href="morris.html"> Morris Charts</a></li>
                        <li><a href="chartjs.html"> Chartjs</a></li>
                        <li><a href="c3chart.html"> C3 Charts</a></li>
                    </ul>
                </li> --%>
                <li class="menu-list"><a href="#"><i class="fa fa-th-list"></i> <span>Reportes</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="basic_table.html"> Basic Table</a></li>
                        <li><a href="dynamic_table.html"> Advanced Table</a></li>
                        <li><a href="responsive_table.html"> Responsive Table</a></li>
                        <li><a href="editable_table.html"> Edit Table</a></li>
                    </ul>
                </li>

                <li class="menu-list"><a href="#"><i class="fa fa-map-marker"></i> <span>Maps</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="google_map.html"> Google Map</a></li>
                        <li><a href="vector_map.html"> Vector Map</a></li>
                    </ul>
                </li>
                
                <li><a href="<s:url action="logoutUsuario" namespace="/seguridad"/>"><i class="fa fa-sign-in"></i> <span>Login Page</span></a></li>

            </ul>
            <!--sidebar nav end-->

        1
        </div>
    </div>
    <!-- left side end-->
    
    <!-- main content start-->
    <div class="main-content" >

        <!-- header section start-->
        <div class="header-section">

        <!--toggle button start-->
        <a class="toggle-btn"><i class="fa fa-bars"></i></a>
        <!--toggle button end-->

       

        <!--notification menu start -->
        <div class="menu-right">
            <ul class="notification-menu">
                
                <li>
                    <a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                        <img src="<s:url value="/images/photos/user-avatar.png"/>" alt="" />
                        John Doe
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-usermenu pull-right">
                        <li><a href="#"><i class="fa fa-user"></i>  Profile</a></li>
                        <li><a href="#"><i class="fa fa-cog"></i>  Settings</a></li>
                        <li><a href="<s:url action="logoutUsuario" namespace="/seguridad"/>"><i class="fa fa-sign-out"></i> Log Out</a></li>
                    </ul>
                </li>

            </ul>
        </div>
        <!--notification menu end -->

    