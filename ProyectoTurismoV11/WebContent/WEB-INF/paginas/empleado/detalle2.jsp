<%@ taglib prefix="s"  uri="/struts-tags" %>

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
                <li class="active"> Detalle de Empleado </li>
            </ul>
        </div>
        <!-- page heading end-->

         <!--body wrapper start-->
        <div class="wrapper">
             <div class="row">
                <div class="col-sm-12">
                <section class="panel">
                <header class="panel-heading">
                    Detalle de Empleado
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


		
		<table>
			<tr>
				<td> <s:text name="label.codigo"/>:</td>
				<td> <s:property value="empleado.codigo"/> </td>	
			</tr>
			<tr>
				<td> <s:text name="label.usuario"/>:</td>
				<td> <s:property value="empleado.usuario"/> </td>	
			</tr>
			<tr>
				<td> <s:text name="label.nombre"/>:</td>
				<td> <s:property value="empleado.nombre"/> </td>
			</tr>			
			<tr>
				<td> <s:text name="label.apellidoPaterno"/>:</td>
				<td> <s:property value="empleado.apellidoPaterno"/> </td>
			</tr>
			<tr>
				<td> <s:text name="label.apellidoMaterno"/>:</td>
				<td> <s:property value="empleado.apellidoMaterno"/> </td>
			</tr>
			<tr>
				<td> <s:text name="label.estadoCivil"/>:</td>
				<%-- <td> <s:property value="empleado.estadoCivil"/> </td> --%>
				<td> <s:select list="estadosCiviles" value="empleado.estadoCivil" disabled="true" theme="simple"/> </td>
			</tr>
			<tr>
				<td> <s:text name="label.direccion"/>:</td>
				<td> <s:property value="empleado.direccion"/> </td>
			</tr>
			<tr>
				<td> <s:text name="label.genero"/>: </td>
				<td> <s:select list="generos" value="empleado.genero" disabled="true" theme="simple"/> </td>
			</tr>
			<tr>
				<td> <s:text name="label.dni"/>:</td>
				<td> <s:property value="empleado.dni"/> </td>
			</tr>		
			<tr>
				<td> <s:text name="label.cargo"/>:</td>
				<td> <s:property value="empleado.cargo.descripcion"/></td>
			</tr>	
			<tr>
				<td> <s:text name="label.fechaNacimiento"/>:</td>
				<td> <s:property value="empleado.fechaNacimiento"/> </td>
			</tr>
			<tr>
				<td> <s:text name="label.fechaIngreso"/>:</td>
				<td> <s:property value="empleado.fechaIngreso"/> </td>
			</tr>
			<tr>
				<td> <s:text name="label.labores"/>:</td>
				<td> <s:property value="empleado.labores"/> </td>
			</tr>
			<tr>
				<td> <s:text name="label.clave"/>:</td>
				<td> <s:property value="empleado.clave"/> </td>
			</tr>
			<tr>
				<td> <s:text name="label.email"/>:</td>
				<td> <s:property value="empleado.email"/> </td>
			</tr>
			
			<tr>
				<td> <s:text name="label.foto"/>:</td>
				<td> <img src="<s:url action="mostrarFoto" namespace="/"/>" alt="foto" style="width: 80px; height: 80px"/></td>
			</tr>	
		</table>

		
		  </div>
                </div>
                </section>
                </div>
                </div>
        </div>
        <!--body wrapper end-->