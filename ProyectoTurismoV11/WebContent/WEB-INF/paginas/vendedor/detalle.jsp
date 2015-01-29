<%@ taglib prefix="s"  uri="/struts-tags" %>

		<h1>
			<s:text name="titulo.vendedor.detalle"/>
		</h1>
		<table>
			<tr>
				<td> <s:text name="label.codigo"/>:</td>
				<td> <s:property value="vendedor.codigo"/> </td>	
			</tr>
			<tr>
				<td> <s:text name="label.nombre"/>:</td>
				<td> <s:property value="vendedor.nombre"/> </td>
			</tr>
			<tr>
				<td> <s:text name="label.apellido"/>:</td>
				<td> <s:property value="vendedor.apellido"/> </td>
			</tr>
			<tr>
				<td> <s:text name="label.genero"/>: </td>
				<td> <s:select list="generos" value="vendedor.genero" disabled="true" theme="simple"/> </td>
			</tr>
			<tr>
				<td> <s:text name="label.distrito"/>:</td>
				<td> <s:property value="vendedor.distrito.descripcion"/></td>
			</tr>	
			
			<tr>
				<td> <s:text name="label.foto"/>:</td>
				<td> <img src="<s:url action="mostrarFoto" namespace="/"/>" alt="foto" style="width: 80px; height: 80px"/></td>
			</tr>	
		</table>
