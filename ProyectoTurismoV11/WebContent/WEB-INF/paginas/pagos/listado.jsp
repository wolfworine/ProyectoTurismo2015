
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>

<!-- page heading start-->
<div class="page-heading">
  <h3>Area de Mantenimiento de Pagos</h3>
  <ul class="breadcrumb">
    <li><a href="#">Modulo Pagos</a></li>
    <li><a href="#">Mantenimiento Pagos</a></li>
    <li class="active">Listado de Pagos</li>
  </ul>
</div>
<!-- page heading end-->

<!--body wrapper start-->
<div class="wrapper">
  <div class="row">
    <div class="col-sm-12">
      <section class="panel">
        <header class="panel-heading">
          Listado de Pagos <span class="tools pull-right"> <a
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
                  action="nuevoPagos" namespace="/pagos">
                  Nuevo Pago <i class="fa fa-plus"></i>
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

            <s:form action="buscarPagos" namespace="/pagos">
                 Buscar Pagos por codigo de Venta<s:textfield
                name="pagos.codigo_ven" />
              <s:submit value="%{getText('accion.buscar')}" />
            </s:form>




            <hr />
            <s:actionmessage escape="false" />
            <hr />

            <!-- listado de pagos-->
            <div class="space15"></div>
            <s:if test="!Lpagos.isEmpty">
              <table class="table table-striped table-hover table-bordered"
                id="editable-sample">
                <thead>
                  <tr>
                    <th><s:text name="label.codigo_ven" /></th>
                    <th><s:text name="label.codigo_paq" /></th>
                    <th><s:text name="label.descripcion_ven" /></th>
                    <th><s:text name="label.fecha_ven" /></th>
                    <th><s:text name="label.codigo_cli" /></th>
                    <th><s:text name="label.actualizar" /></th>
                    <th><s:text name="label.eliminar" /></th>
                    <th><s:text name="label.detalle" /></th>
                  </tr>
                </thead>
                <s:iterator value="Lpagos" status="status">
                  <tbody>
                    <tr
                      class="<s:if test="#status.even">par</s:if><s:else>impar</s:else>">
                      <td><s:property value="codigo_ven" /></td>
                      <td><s:property value="codigo_paq" /></td>
                      <td><s:property value="descripcion_ven" /></td>
                      <td><s:property value="fecha_ven" /></td>
                      <td><s:property value="codigo_cli" /></td>
                      <td align="center"><s:url action="cargarPagos"
                          id="actualizar" namespace="/pagos">
                          <s:param name="pagos.codigo_ven">
                            <s:property value="codigo_ven" />
                          </s:param>
                        </s:url> <s:a href="%{actualizar}">
                          <i class="fa fa-pencil"></i>
                        </s:a></td>
                      <td align="center"><s:url action="eliminarPagos"
                          id="eliminar" namespace="/pagos">
                          <s:param name="pagos.codigo_ven">
                            <s:property value="codigo_ven" />
                          </s:param>
                        </s:url> <s:a href="%{eliminar}">
                          <i class="fa fa-trash-o"></i>
                        </s:a></td>
                      <td><s:url action="detallePagos" id="detalle"
                          namespace="/pagos">
                          <s:param name="pagos.codigo_ven">
                            <s:property value="codigo_ven" />
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