
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<!-- start: PAGE -->

 <!-- page heading start-->
        <div class="page-heading">
            <h3>
                <s:text name="titulo.principal"/>
            </h3>
   
            <ul class="breadcrumb">
                <li>
                    <a href="#"><i class="fa fa-home"></i> <span>Inicio</span></a>
                </li>
                <li class="active"><span>Bienvenido</span></li>
                 <s:actionmessage escape="false"/>
            </ul>
        </div>
        <!-- page heading end-->

				<div class="container">
					
                    <div class="row">
                        <div class="col-md-6">
                            <!--modal start-->
                            <section class="panel">
                                <header class="panel-heading">
                               	<div class="fa-hover col-md-3 col-sm-4"><i class="fa fa-book"></i> </div> 
                                    Modulo Usuario
                                    <span class="tools pull-right">
                                        <a class="fa fa-chevron-down" href="javascript:;"></a>
                                
                                        <a class="fa fa-times" href="javascript:;"></a>
                                    </span>
                                </header>
                                <div class="panel-body">
		                                    <div class="row">
								<div class="col-sm-6">
									<div class="core-box">
										<div class="content">
											Permite consultar,registrar nuevos clientes y empleados, brindandoles la opcion de actualizar datos o recuperar su password.
										</div>
										<br>
									<button class="btn btn-primary" type="button">Cliente</button>
                                    <button class="btn btn-primary" type="button">Empleado</button>
									</div>
								</div>

                                </div>
                            </section>
                            <!--modal end-->
                        </div>
                  
                        <div class="col-md-6">
                            <!--modal start-->
                            <section class="panel">
                                <header class="panel-heading">
                               	<div class="fa-hover col-md-3 col-sm-4"><i class="fa fa-book"></i> </div> 
                                    Modulo Paquetes
                                    <span class="tools pull-right">
                                        <a class="fa fa-chevron-down" href="javascript:;"></a>
                                
                                        <a class="fa fa-times" href="javascript:;"></a>
                                    </span>
                                </header>
                                <div class="panel-body">
		                                    <div class="row">
								<div class="col-sm-6">
									<div class="core-box">
									<div class="content">
											Permite consultar,registrar nuevos paquetes turistico, como tambien actualizarlos.
										</div>
										<br>
									<button class="btn btn-primary" type="button">Paquetes</button>
									</div>
								</div>

                                </div>
                            </section>
                            <!--modal end-->
                        </div>
                    </div>
 					<div class="row">
                        <div class="col-md-6">
                            <!--modal start-->
                            <section class="panel">
                                <header class="panel-heading">
                               	<div class="fa-hover col-md-3 col-sm-4"><i class="fa fa-book"></i> </div> 
                                    Mantenimiento Ofertas
                                    <span class="tools pull-right">
                                        <a class="fa fa-chevron-down" href="javascript:;"></a>
                                
                                        <a class="fa fa-times" href="javascript:;"></a>
                                    </span>
                                </header>
                                <div class="panel-body">
		                                    <div class="row">
								<div class="col-sm-6">
									<div class="core-box">
										<div class="content">
									   Permite consultar,registrar nuevas ofertas, como tambien actualizarlos.
										</div>
										<br>
										<button class="btn btn-primary" type="button">Ofertas</button>
									</div>
								</div>

                                </div>
                            </section>
                            <!--modal end-->
                        </div>
                  
                        <div class="col-md-6">
                            <!--modal start-->
                            <section class="panel">
                                <header class="panel-heading">
                                <div class="fa-hover col-md-3 col-sm-4"><i class="fa fa-book"></i> </div> 
                                    Mantenimiento Pagos
                                    <span class="tools pull-right">
                                        <a class="fa fa-chevron-down" href="javascript:;"></a>
                                
                                        <a class="fa fa-times" href="javascript:;"></a>
                                    </span>
                                </header>
                                <div class="panel-body">
		                                    <div class="row">
								<div class="col-sm-6">
									<div class="core-box">
										<div class="content">
									  Permite consultar,registrar nuevas pagos, como tambien actualizarlos.
										</div>
										<br>
										<button class="btn btn-primary" type="button">Pagos</button>
									</div>
								</div>

                                </div>
                            </section>
                            <!--modal end-->
                        </div>
                    </div>

 					<div class="row">
                        <div class="col-md-6">
                            <!--modal start-->
                            <section class="panel">
                                <header class="panel-heading">
                                       <div class="fa-hover col-md-3 col-sm-4"><i class="fa fa-book"></i> </div> 
                                       Reportes
                                    <span class="tools pull-right">
                                        <a class="fa fa-chevron-down" href="javascript:;"></a>
                                
                                        <a class="fa fa-times" href="javascript:;"></a>
                                    </span>
                                </header>
                                <div class="panel-body">
		                                    <div class="row">
								<div class="col-sm-6">
									<div class="core-box">
										
										<div class="content">
											Permite generar reportes de cada modulo, en base a un consulta previa.
										</div>
										<br>
										<button class="btn btn-primary" type="button">Procesar</button>
									</div>
								</div>

                                </div>
                            </section>
                            <!--modal end-->
                        </div>
                  
                     <div class="col-md-6">
                            <!--modal start-->
                            <section class="panel">
                                <header class="panel-heading">
                                       <div class="fa-hover col-md-3 col-sm-4"><i class="fa fa-book"></i> </div> 
                                       Reportes
                                    <span class="tools pull-right">
                                        <a class="fa fa-chevron-down" href="javascript:;"></a>
                                
                                        <a class="fa fa-times" href="javascript:;"></a>
                                    </span>
                                </header>
                                <div class="panel-body">
                                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="core-box">
                                        
                                        <div class="content">
                                            Permite registrar nuevos suministros de los clientes, brindandoles servicio de agua potable y alcantarillado.
                                        </div>
                                        <br>
                                        <button class="btn btn-primary" type="button">Reportes</button>
                                    </div>
                                </div>

                                </div>
                            </section>
                            <!--modal end-->
                        </div>

                    </div>



				</div>
		
			<!-- end: PAGE -->