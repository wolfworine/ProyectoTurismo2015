<%@ taglib prefix="s"  uri="/struts-tags" %>

<!-- Start formato común -->
        <!-- page heading start-->
        <div class="page-heading">
            <h3>
                Area de Mantenimiento de Paquetes
            </h3>
            <ul class="breadcrumb">
                <li>
                    <a href="<s:url action="inicializarPaquete" namespace="/cliente"/>"> Modulo Paquetes</a>
                </li>
                <li>
                    <a href="<s:url action="inicializarPaquete" namespace="/cliente"/>"> Mantenimiento Paquetes</a>
                </li>
                <li class="active"> Detalle de Paquetes </li>
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
				<td> <s:property value="paquetes.codigo_paq"/> </td>	
			</tr>	 	
			<tr>
				<td> <s:text name="label.paquete.destino"/>:</td>
				<td> <s:property value="paquetes.id_dest"/> </td>
			</tr>			
			<tr>
				<td> <s:text name="label.descripcion"/>:</td>
				<td> <s:property value="paquetes.desc_paq"/> </td>
			</tr>
			<tr>
				<td> <s:text name="label.fcIngreso"/>:</td>
				<td> <s:property value="paquetes.fecing_paq"/> </td>
			</tr>					
			
			<tr>
				<td> <s:text name="label.estado"/>: </td>
				<td> <s:select list="estados" value="paquetes.estado" disabled="true" theme="simple"/> </td>
			</tr>	
			
			<tr>
				<td> <s:text name="label.fcLimite"/>:</td>
				<td> <s:property value="paquetes.fecLim_paq"/> </td>
			</tr>		
			
			
			<tr>
				<td> <s:text name="label.stock"/>:</td>
				<td> <s:property value="paquetes.stock_paq"/> </td>
			</tr>
			
			<tr>
				<td> <s:text name="label.precio"/>:</td>
				<td> <s:property value="paquetes.precio_paq"/> </td>
			</tr>
			
			<tr>
				<td> <s:text name="label.tipo"/>:</td>
				<td> <s:property value="paquetes.tipo_paq"/> </td>
			</tr>
			
			
			
		</table>

		
		  </div>
                </div>
                </section>
                </div>
                </div>
        </div>
        <!--body wrapper end-->