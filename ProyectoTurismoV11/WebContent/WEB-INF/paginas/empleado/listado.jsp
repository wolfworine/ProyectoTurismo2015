<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<!-- Start formato común -->
        <!-- page heading start-->
        <div class="page-heading">
            <h3>
                Area de Mantenimiento de Empleados
            </h3>
            <ul class="breadcrumb">
                <li>
                    <a href="<s:url action="inicializarEmpleado" namespace="/empleado"/>"> Modulo Empleado</a>
                </li>
                <li>
                    <a href="<s:url action="inicializarEmpleado" namespace="/empleado"/>"> Mantenimiento Empleados</a>
                </li>
                <li class="active"> Listado de Empleados </li>
            </ul>
        </div>
        <!-- page heading end-->

         <!--body wrapper start-->
        <div class="wrapper">
             <div class="row">
                <div class="col-sm-12">
                <section class="panel">
                <header class="panel-heading">
                    Listado de Empleados
                    <span class="tools pull-right">
                        <a href="javascript:;" class="fa fa-chevron-down"></a>
                        <a href="javascript:;" class="fa fa-times"></a>
                     </span>
                </header>
                <div class="panel-body">
                <div class="adv-table editable-table ">
                <div class="clearfix"> 
                    <div class="btn-group pull-right">
                        <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">Tools <i class="fa fa-angle-down"></i>
                        </button>
                        <ul class="dropdown-menu pull-right">
                            <li><a href="#">Print</a></li>
                            <li><a href="#">Save as PDF</a></li>
                            <li><a href="#">Export to Excel</a></li>
                        </ul>
                    </div>
                </div>
                
                <!-- Fin del formato común -->


				<!-- FORMULARIO DE BUSQUEDA -->
				<s:form action="buscarEmpleado" namespace="/empleado">
				Buscar Empleado por Nombre<s:textfield name="empleado.nombre"/>
					<s:submit value="%{getText('accion.buscar')}"/>
				</s:form>			
		<!-- SAPEEEEEEEEEEEE 3.11 AM -->
                               

                <!-- enlace a nuevo-->
				<s:a action="nuevoEmpleado"  namespace="/empleado">
					<s:text name="accion.nuevo.empleado"/>
				</s:a>
				
				<hr/>
				<s:actionmessage escape="false"/>
				<hr/>

                <!-- listado de Clientes-->
                <div class="space15"></div>
                <!-- listado de Vendedores-->
		<s:if test="!empleados.isEmpty">
			<table class="table table-striped table-hover table-bordered" id="editable-sample">
                <thead>
				
					<tr class="titulos">
						<th><s:text name="label.codigo"/></th>
						<th><s:text name="label.usuario"/></th>
						<th><s:text name="label.nombre"/></th>
						<th><s:text name="label.apellidoPaterno"/></th>
						
						<th><s:text name="label.apellidoMaterno"/></th>
						
						
						<th><s:text name="label.actualizar"/></th>
						<th><s:text name="label.eliminar"/></th>
						<th><s:text name="label.detalle"/></th>
					</tr>
				</thead>
				<s:iterator value="empleados" status="status">	
					<tr class="<s:if test="#status.even">par</s:if><s:else>impar</s:else>">
					 <td><s:property value="codigo"/>	</td>
					 <td><s:property value="usuario"/>	</td>
					 <td><s:property value="nombre"/>	</td>
					 <td><s:property value="apellidoPaterno"/>	</td>
					 <td><s:property value="apellidoMaterno"/>	</td>					 
					 
					 
					 
					 
					 
					 
					 <td align="center">
					 		<s:url action="cargarEmpleado"
					 			   id="actualizar"
					 			   namespace="/empleado">
					 			<s:param name="empleado.codigo">
					 				<s:property value="codigo"/>
					 			</s:param>
					 		</s:url>
					 		<s:a href="%{actualizar}"> <i class="fa fa-pencil"></i></s:a>
					 </td>
					 <td align="center">	
					 		<s:url action="eliminarEmpleado"
					 			   id="eliminar" 
					 			   namespace="/empleado">
					 			<s:param name="empleado.codigo">
					 				<s:property value="codigo"/>
					 			</s:param>
					 		</s:url>
					 		<s:a href="%{eliminar}"><i class="fa fa-trash-o"></i></s:a>
					 </td>
					 <td>	
					 		<s:url action="detalleEmpleado"
					 			   id="detalle"
					 			   namespace="/empleado">
					 			<s:param name="empleado.codigo">
					 				<s:property value="codigo"/>
					 			</s:param>
					 		</s:url>
					 		<s:a href="%{detalle}"><s:text name="accion.detalle"/></s:a>     
					 </td>
					</tr>
				</s:iterator>
			</table>
		</s:if>
                
                
                </div>
                </div>
                </section>
                </div>
                </div>
        </div>
        <!--body wrapper end-->