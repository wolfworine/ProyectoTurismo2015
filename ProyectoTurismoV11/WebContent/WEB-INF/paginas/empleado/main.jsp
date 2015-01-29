<%@ taglib prefix="s" uri="/struts-tags" %>

     <div class="wrapper">
     <div class="text-center price-head">
                        <h1 class="color-terques"> Área de Mantenimiento de Personal </p>
                    </div>
            <div class="row">
                  <div class="col-md-6">
                    <!--statistics start-->
                    <div class="row state-overview">
                        <div class="col-md-6 col-xs-12 col-sm-6">
                        
                            <div class="panel purple">
                                <div class="symbol">
                                    <i class="fa fa-plus-circle"></i>
                                </div>
                                <div class="state-value">
                                <div class="price-actions">
                                 <!-- <a href="javascript:;" class="btn"><div class="value">Registrar</div></a> -->
                            	<a href="<s:url action="inicializarEmpleado" namespace="/empleado"/>"> <div class="value">Registrar Empleado</div></a>
                            	</div>                                    
                                </div>
                            </div>
                           
                        </div>
                        <div class="col-md-6 col-xs-12 col-sm-6">
                            <div class="panel red">
                                <div class="symbol">
                                    <i class="fa fa-refresh"></i>
                                </div>
                                <div class="state-value">
                                <div class="price-actions">
                                <a href="<s:url action="inicializarEmpleado" namespace="/empleado"/>"> <div class="value">Actualizar Empleado</div></a>
                            	
                                <!-- <a href="javascript:;" class="btn"><div class="value">Actulizar</div></a> -->
                            	</div>                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row state-overview">
                        <div class="col-md-6 col-xs-12 col-sm-6">
                            <div class="panel blue">
                                <div class="symbol">
                                    <i class="fa fa-trash-o"></i>
                                </div>
                                <div class="state-value">
                                <div class="price-actions">
                                <a href="<s:url action="inicializarEmpleado" namespace="/empleado"/>"> <div class="value">Eliminar Empleado</div></a>
                            	
                                <!-- <a href="javascript:;" class="btn"><div class="value">Eliminar</div></a> -->
                            	</div>                                    
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-xs-12 col-sm-6">
                            <div class="panel purple">
                                <div class="symbol">
                                    <i class="fa fa-bars"></i>
                                </div>
                                <div class="state-value">
                                <div class="price-actions">
                                <a href="<s:url action="inicializarEmpleado" namespace="/empleado"/>"> <div class="value">Listar Empleados</div></a>
                            	
                                <!-- <a href="javascript:;" class="btn"><div class="value">Listado</div></a> -->
                            	</div>                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    
                     </div>
                <div class="col-md-6">
                    <!--more statistics box start-->
                    <div class="col-md-2 col-sm-2"></div>
                  <div class="col-md-8 col-sm-8">
                  
                    <div class="panel">
                        <div class="panel-body">
                            <div class="calendar-block ">
                                <div class="cal1">

                                </div>
                            </div>

                        </div>
                    </div>
               </div>
               <div class="col-md-2 col-sm-2"></div>
               
                    </div>
                    <!--more statistics box end-->
                </div>               
                
            </div>

