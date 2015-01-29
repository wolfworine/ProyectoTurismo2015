<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
  
    
    <section class="wrapper">
        <!-- page start-->

    <div class="row">
    <div class="col-lg-2">
    </div>
    
    <div class="col-lg-8">
    <section class="panel">
    
    <div class="row">
    <div class="col-lg-2">
    </div>    
    <div class="col-lg-8">
    
    
    
    <header class="panel-heading">
                        Formulario Paquetes
                    </header>
<s:form action="editarPaquetes" namespace="/paquetes" theme="bootstrap" method="post" cssClass="form-horizontal" enctype="multipart/form-data" >
   		<%-- <s:hidden name="paquetes.codigo_paq" /> --%>
   		<s:textfield key="label.codigo_paq" cssClass="form-control" name="paquetes.codigo_paq"/>
   		<s:textfield key="label.id_destino" cssClass="form-control" name="paquetes.id_dest"/>
   		<s:textfield key="label.descripcion" cssClass="form-control" name="paquetes.desc_paq"/>
   		<s:textfield key="label.fcIngreso" cssClass="form-control" name="paquetes.fecing_paq" title="MM/dd/yyyy"/>    		
   		<s:radio list="estados" key="label.estado" name="paquetes.estado_paq"/>	   
   		<s:textfield key="label.fcLimite" cssClass="form-control" name="paquetes.fecLim_paq" title="MM/dd/yyyy"/>    		
   		<s:textfield key="label.stock" cssClass="form-control" name="paquetes.stock_paq"/>
   		<s:textfield key="label.precio" cssClass="form-control" name="paquetes.precio_paq"/>   	
   		<s:radio list="tipos" key="label.tipo" name="paquetes.tipo_paq"/>	 	
   		<s:submit cssClass="btn btn-primary" value="%{getText('accion.grabar')}"/> 
   		
   	
   	</s:form> 
    
    </div>
  	<div class="col-lg-2">
    </div>
    </div> 
   
   	
 </section>
  </div>
  
  <div class="col-lg-2">
  </div>
  
  </div>
  </section>
     	
   	
   	