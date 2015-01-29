
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

        <!-- page heading start-->
        <div class="page-heading">
            <h3>
                Area de Mantenimiento de Clientes
            </h3>
            <ul class="breadcrumb">
                <li>
                    <a href="#">Moduelo Usuario</a>
                </li>
                <li>
                    <a href="#">Mantenimiento Cliente</a>
                </li>
                <li class="active"> Listado de Clientes </li>
            </ul>
        </div>
        <!-- page heading end-->

         <!--body wrapper start-->
        <div class="wrapper">
             <div class="row">
                <div class="col-sm-12">
                <section class="panel">
                <header class="panel-heading">
                    Listado de Clientes
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

                <!-- FORMULARIO DE BUSQUEDA -->

                <s:form action="buscarCliente" >
                 <s:text name="label.nombre" /> <s:textfield name="cliente.nombre"/>

                 <s:text name="label.apellidoPaterno" /><s:textfield name="cliente.apellidoPaterno" key="label.apellidoPaterno" />

                    <s:submit value="%{getText('accion.buscar')}" />

                </s:form>

                <hr />
                <s:actionmessage escape="false" />
                <hr />

                <!-- listado de Clientes-->
                <div class="space15"></div>
                <s:if test="!clientes.isEmpty">
                <table class="table table-striped table-hover table-bordered" id="editable-sample">
                <thead>
                <tr>
                    <th><s:text name="label.id" /></th>
                    <th><s:text name="label.nombre" /></th>
                    <th><s:text name="label.apellidoPaterno" /></th>
                    <th><s:text name="label.apellidoMaterno" /></th>
                    <th><s:text name="label.direccion" /></th>
                    <th><s:text name="label.genero" /></th>
                    <th><s:text name="label.dni" /></th>
                    <th><s:text name="label.estado" /></th>
                    <th><s:text name="label.eliminar" /></th>
                </tr>
                </thead>
                <s:iterator value="clientes" status="status">
                <tbody>
                   <tr
                      class="<s:if test="#status.even">par</s:if><s:else>impar</s:else>">
                      <td><s:property value="id" /></td>
                      <td><s:property value="nombre" /></td>
                      <td><s:property value="apellidoPaterno" /></td>
                      <td><s:property value="apellidoMaterno" /></td>
                      <td><s:property value="direccion" /></td>
                      <td><s:property value="genero" /></td>
                      <td><s:property value="dni" /></td>
                      <td><s:property value="estado" /></td>
                      <td><s:url action="eliminarClientes" id="eliminar">
                              <s:param name="cliente.Id_cli">
                                  <s:property value="Id_cli" />
                              </s:param>
                          </s:url> <s:a href="%{eliminar}">
                              <s:text name="accion.eliminar.inicial" />
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