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
                        Formulario Empleado
                    </header>
<s:form action="editarEmpleado" namespace="/empleado" theme="bootstrap" method="post" cssClass="form-horizontal" enctype="multipart/form-data" >
   		<s:hidden name="empleado.codigo" />
   		<s:textfield key="label.usuario" cssClass="form-control" name="empleado.usuario"/>
   		<s:textfield key="label.nombre" cssClass="form-control" name="empleado.nombre"/>
   		<s:textfield key="label.apellidoPaterno" cssClass="form-control" name="empleado.apellidoPaterno"/>
   		<s:textfield key="label.apellidoMaterno" cssClass="form-control" name="empleado.apellidoMaterno"/>
   		<s:radio list="estadosCiviles" key="label.estadoCivil" name="empleado.estadoCivil"/>
   		<s:textfield key="label.direccion" cssClass="form-control" name="empleado.direccion"/>   
   		<s:radio list="generos" key="label.genero" name="empleado.genero"/>	
   		<s:textfield key="label.dni" cssClass="form-control" name="empleado.dni"/> 
   		<s:select list="cargos"  
   				key="label.cargo" 
   				name="empleado.cargo.codigo"
   				listKey="codigo"
   				listValue="descripcion"
   				cssClass="form-control"
   				/>	
   		<s:textfield key="label.fechaNacimiento" cssClass="form-control" name="empleado.fechaNacimiento" title="MM/dd/yyyy"/>
   		<s:textfield key="label.fechaIngreso" cssClass="form-control" name="empleado.fechaIngreso" title="MM/dd/yyyy"/>
   		<s:textfield key="label.clave" cssClass="form-control" name="empleado.clave"/>
   		<s:textarea key="label.labores" cssClass="form-control" name="empleado.labores"/>
   		<s:textfield key="label.email" cssClass="form-control" name="empleado.email" />  
   			 		
   		<s:file key="label.foto"  name="foto"/>
   		<div style="height:10px">   		
   		</div>
   		
   		<img src="<s:url action="mostrarFoto" namespace="/"/>" alt="foto" style="width: 80px; height: 80px"/>
   		
   		<div style="height:10px">   		
   		</div>
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
     	
   	
   	