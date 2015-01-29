
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>

<!-- page heading start-->
<div class="page-heading">
  <h3>Area de Mantenimiento de Paquetes</h3>
  <ul class="breadcrumb">
    <li><a href="#">Modulo Paquetes</a></li>
    <li><a href="#">Mantenimiento Paquetes</a></li>
    <li class="active">Listado de Paquetes</li>
  </ul>
</div>
<!-- page heading end-->

<!--body wrapper start-->
<div class="wrapper">
  <div class="row">
    <div class="col-sm-12">
      <section class="panel">
        <header class="panel-heading">
          Listado de Paquetes <span class="tools pull-right"> <a
            href="javascript:;" class="fa fa-chevron-down"></a> <a
            href="javascript:;" class="fa fa-times"></a>
          </span>
        </header>
        <div class="panel-body">
          <div class="adv-table editable-table ">
            <div class="clearfix">
            
              <!-- enlace a nuevo-->           
              <%-- 
              <s:a action="nuevoPaquetes"  namespace="/paquetes">
					<s:text name="accion.nuevo.paquete"/>
				</s:a> --%>
				
				<%-- <div class="btn-group">
                <button id="editable-sample_new" class="btn btn-primary"
                  action="nuevoPaquetes" namespace="/paquetes">
                  Nuevo Paquete <i class="fa fa-plus"></i>
                </button>
              </div>
            
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
					 		<s:a href="%{actualizar}"> <i class="fa fa-pencil"></i></s:a> --%>
              
              
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

            <s:form action="buscarPaquetes" namespace="/paquetes">
                 
                 <s:label value="%{getText('label.paquete.destino')}" cssStyle="color: #000000;"/>
                 <s:textfield name="paquetes.id_dest" /><br>                 
                 <s:label value="%{getText('label.paquete.tipo')}" cssStyle="color: #000000;"/>                
                <s:textfield name="paquetes.tipo_paq" />
              <s:submit value="%{getText('accion.buscar')}" />
            </s:form>




            <hr />
            <s:actionmessage escape="false" />
            <hr />

            <!-- listado de paquetes-->
            <div class="space15"></div>
            <s:if test="!Lpaquetes.isEmpty">
              <table class="table table-striped table-hover table-bordered"
                id="editable-sample">
                <thead>
                  <tr>
                    <th><s:text name="label.codigo_paq" /></th>
                    <th><s:text name="label.id_dest" /></th>
                    <th><s:text name="label.desc_paq" /></th>
                    <th><s:text name="label.estado_paq" /></th>
                    <th><s:text name="label.stock_paq" /></th>
                    <th><s:text name="label.precio_paq" /></th>
                    <th><s:text name="label.tipo_paq" /></th>
                    <%-- <th><s:text name="label.actualizar" /></th>
                    <th><s:text name="label.eliminar" /></th> --%>
                    <th><s:text name="label.detalle" /></th>
                  </tr>
                </thead>
                <s:iterator value="Lpaquetes" status="status">
                  <tbody>
                    <tr
                      class="<s:if test="#status.even">par</s:if><s:else>impar</s:else>">
                      <td><s:property value="codigo_paq" /></td>
                      <td><s:property value="id_dest" /></td>
                      <td><s:property value="desc_paq" /></td>
                      <td><s:property value="estado_paq" /></td>
                      <td><s:property value="stock_paq" /></td>
                      <td><s:property value="precio_paq" /></td>
                      <td><s:property value="tipo_paq" /></td>
                     <%--  <td align="center"><s:url action="cargarPaquetes"
                          id="actualizar" namespace="/paquetes">
                          <s:param name="paquetes.codigo_paq">
                            <s:property value="codigo_paq" />
                          </s:param>
                        </s:url> <s:a href="%{actualizar}">
                          <i class="fa fa-pencil"></i>
                        </s:a></td>
                      <td align="center"><s:url action="eliminarPaquetes"
                          id="eliminar" namespace="/paquetes">
                          <s:param name="paquetes.codigo_paq">
                            <s:property value="codigo_paq" />
                          </s:param>
                        </s:url> <s:a href="%{eliminar}">
                          <i class="fa fa-trash-o"></i>
                        </s:a></td> --%>
                      <td><s:url action="detallePaquetes" id="detalle"
                          namespace="/paquetes">
                          <s:param name="paquetes.codigo_paq">
                            <s:property value="codigo_paq" />
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