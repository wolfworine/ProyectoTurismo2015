
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>

<!-- page heading start-->
<div class="page-heading">
	<h3>Area de Mantenimiento de Ofertas</h3>
	<ul class="breadcrumb">
		<li><a href="#">Modulo Ofertas</a></li>
		<li><a href="#">Mantenimiento Ofertas</a></li>
		<li class="active">Listado de Ofertas</li>
	</ul>
</div>
<!-- page heading end-->

<!--body wrapper start-->
<div class="wrapper">
	<div class="row">
		<div class="col-sm-12">
			<section class="panel">
				<header class="panel-heading">
					Listado de Ofertas <span class="tools pull-right"> <a
						href="javascript:;" class="fa fa-chevron-down"></a> <a
						href="javascript:;" class="fa fa-times"></a>
					</span>
				</header>
				<div class="panel-body">
					<div class="adv-table editable-table ">
						<div class="clearfix">
							<!-- enlace a nuevo-->
							<div class="btn-group">
								<button id="editable-sample_new" class="btn btn-primary"
									action="nuevoOfertas" namespace="/ofertas">
									Nueva Oferta <i class="fa fa-plus"></i>
								</button>
							</div>
							<br> <br>
							<div class="btn-group pull-right">
								<button class="btn btn-default dropdown-toggle"
									data-toggle="dropdown">
									Tools <i class="fa fa-angle-down"></i>
								</button>
								<ul class="dropdown-menu pull-right">
									<li><a href="#">Print</a></li>
									<li><a href="#">Save as PDF</a></li>
									<li><a href="#">Export to Excel</a></li>
								</ul>
							</div>
						</div>

						<!-- FORMULARIO DE BUSQUEDA -->

						<s:form action="buscarOfertas" namespace="/ofertas">
                 Buscar Ofertas por Descripcion<s:textfield
								name="ofertas.descripcion" />
							<s:submit value="%{getText('accion.buscar')}" />
						</s:form>




						<hr />
						<s:actionmessage escape="false" />
						<hr />

						<!-- listado de Ofertas-->
						<div class="space15"></div>
						<s:if test="!Lofertas.isEmpty">
							<table class="table table-striped table-hover table-bordered"
								id="editable-sample">
								<thead>
									<tr>
										<th><s:text name="label.codigo" /></th>
										<th><s:text name="label.descripcion" /></th>
										<th><s:text name="label.duracion" /></th>
										<th><s:text name="label.porcentaje" /></th>
										<th><s:text name="label.actualizar" /></th>
										<th><s:text name="label.eliminar" /></th>
										<th><s:text name="label.detalle" /></th>
									</tr>
								</thead>
								<s:iterator value="Lofertas" status="status">
									<tbody>
										<tr
											class="<s:if test="#status.even">par</s:if><s:else>impar</s:else>">
											<td><s:property value="codigo" /></td>
											<td><s:property value="descripcion" /></td>
											<td><s:property value="duracion" /></td>
											<td><s:property value="porcentaje" /></td>
											<td align="center"><s:url action="cargarOfertas"
													id="actualizar" namespace="/ofertas">
													<s:param name="ofertas.codigo">
														<s:property value="codigo" />
													</s:param>
												</s:url> <s:a href="%{actualizar}">
													<i class="fa fa-pencil"></i>
												</s:a></td>
											<td align="center"><s:url action="eliminarOfertas"
													id="eliminar" namespace="/ofertas">
													<s:param name="ofertas.codigo">
														<s:property value="codigo" />
													</s:param>
												</s:url> <s:a href="%{eliminar}">
													<i class="fa fa-trash-o"></i>
												</s:a></td>
											<td><s:url action="detalleOfertas" id="detalle"
													namespace="/ofertas">
													<s:param name="ofertas.codigo">
														<s:property value="codigo" />
													</s:param>
												</s:url> <s:a href="%{detalle}">
													<s:text name="accion.detalle" />
												</s:a></td>
										</tr>
									</tbody>
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