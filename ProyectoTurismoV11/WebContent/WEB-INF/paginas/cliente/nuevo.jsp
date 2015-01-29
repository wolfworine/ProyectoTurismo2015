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
                        Formulario Cliente
                    </header>
<s:form action="editarCliente" namespace="/cliente" theme="bootstrap" method="post" cssClass="form-horizontal" enctype="multipart/form-data" >
   		<s:hidden name="cliente.id" />
   		
   		<s:textfield key="label.nombre" cssClass="form-control" name="cliente.nombre"/>
   		<s:textfield key="label.apellidoPaterno" cssClass="form-control" name="cliente.apellidoPaterno"/>
   		<s:textfield key="label.apellidoMaterno" cssClass="form-control" name="cliente.apellidoMaterno"/>
   		
   		<s:textfield key="label.direccion" cssClass="form-control" name="cliente.direccion"/>   
   		<s:radio list="generos" key="label.genero" name="cliente.genero"/>	
   		<s:textfield key="label.dni" cssClass="form-control" name="cliente.dni"/>
   		<s:radio list="estados" key="label.estado" name="cliente.estado"/>	   		
   		<s:textfield key="label.fechaNacimiento" cssClass="form-control" name="cliente.fecha" title="MM/dd/yyyy"/>
   		<s:textfield key="label.clave" cssClass="form-control" name="cliente.pass"/>
   		<s:textfield key="label.email" cssClass="form-control" name="cliente.email" />  
   		
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
     	
   	
   	