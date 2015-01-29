<%@ taglib prefix="s"  uri="/struts-tags" %>

<!-- Start formato común -->
        <!-- page heading start-->
        <div class="page-heading">
            <h3>
                Area de Mantenimiento de Clientes
            </h3>
            <ul class="breadcrumb">
                <li>
                    <a href="<s:url action="inicializarCliente" namespace="/cliente"/>"> Modulo Cliente</a>
                </li>
                <li>
                    <a href="<s:url action="inicializarCliente" namespace="/cliente"/>"> Mantenimiento Cliente</a>
                </li>
                <li class="active"> Detalle de Cliente </li>
            </ul>
        </div>
        <!-- page heading end-->

         <!--body wrapper start-->
        <div class="wrapper">
             <div class="row">
                <div class="col-sm-12">
                <section class="panel">
                <header class="panel-heading">
                    Detalle de Cliente
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
                
                 <!-- enlace a actualizar-->
				<s:a action="cargarCliente"  id="actualizar"  namespace="/cliente">
					<s:text name="accion.actualizar.cliente"/> <s:param name="cliente.id"><s:property value="cliente.id"/></s:param>
				</s:a>
				
			
					 		<s:url action="cargarCliente"
					 			   id="actualizar"
					 			   namespace="/cliente">
					 			<s:param name="cliente.id">
					 				<s:property value="cliente.id"/>
					 			</s:param>
					 		</s:url>
					 		<s:a href="%{actualizar}"> <i class="fa fa-pencil"></i></s:a>
					
				

		
		<table>
		
		
			<tr>
				<td> <s:text name="label.codigo"/>:</td>
				<td> <s:property value="cliente.id"/> </td>	
			</tr>	 	
			<tr>
				<td> <s:text name="label.nombre"/>:</td>
				<td> <s:property value="cliente.nombre"/> </td>
			</tr>			
			<tr>
				<td> <s:text name="label.apellidoPaterno"/>:</td>
				<td> <s:property value="cliente.apellidoPaterno"/> </td>
			</tr>
			<tr>
				<td> <s:text name="label.apellidoMaterno"/>:</td>
				<td> <s:property value="cliente.apellidoMaterno"/> </td>
			</tr>
			
			<tr>
				<td> <s:text name="label.direccion"/>:</td>
				<td> <s:property value="cliente.direccion"/> </td>
			</tr>
			<tr>
				<td> <s:text name="label.genero"/>: </td>
				<td> <s:select list="generos" value="cliente.genero" disabled="true" theme="simple"/> </td>
			</tr>
			<tr>
				<td> <s:text name="label.dni"/>:</td>
				<td> <s:property value="cliente.dni"/> </td>
			</tr>
			<tr>
				<td> <s:text name="label.estado"/>: </td>
				<td> <s:select list="estados" value="cliente.estado" disabled="true" theme="simple"/> </td>
			</tr>		
			
			<%-- <tr>
				<td> <s:text name="label.estado"/>:</td>
				<td> <s:property value="cliente.estado"/> </td>
			</tr> --%>
			<tr>
				<td> <s:text name="label.fechaNacimiento"/>:</td>
				<td> <s:property value="cliente.fecha"/> </td>
			</tr>
			
			<tr>
				<td> <s:text name="label.clave"/>:</td>
				<td> <s:property value="cliente.pass"/> </td>
			</tr>
			<tr>
				<td> <s:text name="label.email"/>:</td>
				<td> <s:property value="cliente.email"/> </td>
			</tr>
			
			
		</table>

		
		  </div>
                </div>
                </section>
                </div>
                </div>
        </div>
        <!--body wrapper end-->