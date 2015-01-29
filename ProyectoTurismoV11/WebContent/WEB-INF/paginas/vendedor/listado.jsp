<%@ taglib prefix="s"  uri="/struts-tags" %>

		<h2><s:text name="titulo.vendedor.busqueda"/></h2>
		
		<!-- FORMULARIO DE BUSQUEDA -->
		<s:form action="buscarVendedor" namespace="/vendedor">
			<s:textfield name="vendedor.nombre"  key="label.nombre"/>
			<s:submit value="%{getText('accion.buscar')}"/>
		</s:form>
		
		
		<!-- enlace a nuevo-->
		<s:a action="nuevoVendedor"  namespace="/vendedor">
			<s:text name="accion.nuevo"/>
		</s:a>
		
		<hr/>
		<s:actionmessage escape="false"/>
		<hr/>
		
		<!-- listado de Vendedores-->
		<s:if test="!vendedores.isEmpty">
			<table class="tabla">
				<thead>
					<tr class="titulos">
						<th><s:text name="label.codigo"/></th>
						<th><s:text name="label.nombre"/></th>
						<th><s:text name="label.apellido"/></th>
						<th><s:text name="label.actualizar"/></th>
						<th><s:text name="label.eliminar"/></th>
						<th><s:text name="label.detalle"/></th>
					</tr>
				</thead>
				<s:iterator value="vendedores" status="status">	
					<tr class="<s:if test="#status.even">par</s:if><s:else>impar</s:else>">
					 <td><s:property value="codigo"/>	</td>
					 <td><s:property value="nombre"/>	</td>
					 <td><s:property value="apellido"/>	</td>
					 <td>
					 		<s:url action="cargarVendedor"
					 			   id="actualizar"
					 			   namespace="/vendedor">
					 			<s:param name="vendedor.codigo">
					 				<s:property value="codigo"/>
					 			</s:param>
					 		</s:url>
					 		<s:a href="%{actualizar}"><s:text name="accion.actualizar.inicial"/></s:a>
					 </td>
					 <td>	
					 		<s:url action="eliminarVendedor"
					 			   id="eliminar" 
					 			   namespace="/vendedor">
					 			<s:param name="vendedor.codigo">
					 				<s:property value="codigo"/>
					 			</s:param>
					 		</s:url>
					 		<s:a href="%{eliminar}"><s:text name="accion.eliminar.inicial"/></s:a>
					 </td>
					 <td>	
					 		<s:url action="detalleVendedor"
					 			   id="detalle"
					 			   namespace="/vendedor">
					 			<s:param name="vendedor.codigo">
					 				<s:property value="codigo"/>
					 			</s:param>
					 		</s:url>
					 		<s:a href="%{detalle}"><s:text name="accion.detalle"/></s:a>     
					 </td>
					</tr>
				</s:iterator>
			</table>
		</s:if>
