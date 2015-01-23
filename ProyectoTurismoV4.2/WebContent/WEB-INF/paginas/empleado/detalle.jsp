<%@ taglib prefix="s"  uri="/struts-tags" %>

		<h1>
			<s:text name="titulo.empleado.detalle"/>
		</h1>
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
