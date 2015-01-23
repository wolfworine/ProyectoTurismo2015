<%@ taglib prefix="s"  uri="/struts-tags" %>

		<h2><s:text name="titulo.empleado.busqueda"/></h2>
		
		<!-- FORMULARIO DE BUSQUEDA -->
		<s:form action="buscarEmpleado" namespace="/empleado">
			<s:textfield name="empleado.nombre"  key="label.nombre"/>
			<s:submit value="%{getText('accion.buscar')}"/>
		</s:form>			
		
		
		<!-- enlace a nuevo-->
		<s:a action="nuevoEmpleado"  namespace="/empleado">
			<s:text name="accion.nuevo"/>
		</s:a>
		
		<hr/>
		<s:actionmessage escape="false"/>
		<hr/>
		ghgggggggggggggggggg
		<!-- listado de Vendedores-->
		<s:if test="!empleados.isEmpty">
			<table class="tabla" border="1">
				<thead>
					<tr class="titulos">
						<th><s:text name="label.codigo"/></th>
						<th><s:text name="label.nombre"/></th>
						<th><s:text name="label.apellidoPaterno"/></th>
						<th><s:text name="label.actualizar"/></th>
						<th><s:text name="label.eliminar"/></th>
						<th><s:text name="label.detalle"/></th>
					</tr>
				</thead>
				<s:iterator value="empleados" status="status">	
					<tr class="<s:if test="#status.even">par</s:if><s:else>impar</s:else>">
					 <td><s:property value="codigo"/>	</td>
					 <td><s:property value="nombre"/>	</td>
					 <td><s:property value="apellidoPaterno"/>	</td>
					 <td>
					 		<s:url action="cargarEmpleado"
					 			   id="actualizar"
					 			   namespace="/empleado">
					 			<s:param name="empleado.codigo">
					 				<s:property value="codigo"/>
					 			</s:param>
					 		</s:url>
					 		<s:a href="%{actualizar}"><s:text name="accion.actualizar.inicial"/></s:a>
					 </td>
					 <td>	
					 		<s:url action="eliminarEmpleado"
					 			   id="eliminar" 
					 			   namespace="/empleado">
					 			<s:param name="empleado.codigo">
					 				<s:property value="codigo"/>
					 			</s:param>
					 		</s:url>
					 		<s:a href="%{eliminar}"><s:text name="accion.eliminar.inicial"/></s:a>
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
