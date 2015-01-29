
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@taglib prefix="s" uri="/struts-tags" %>



         <div class="header">
		   <div class="col-sm-8 header-left">
					 <div class="logo">
						<img src="images/logoeym.jpg" alt=""/>
					 </div>
					 <div class="menu">
						  <a class="toggleMenu" href="#"><img src="images/nav.png" alt="" /></a>
						    <ul class="nav" id="nav">
						    	<li class="active"><a href="<s:url action="inicio"/>">Inicio</a></li>
						    	<li><a href="<s:url action="mision"/>">Conócenos</a></li>
						    	<li><a href="<s:url action="nacionales"/>">Paquetes y Tours</a></li>
						    	<li><a href="<s:url action="contactanos"/>">Contáctanos</a></li>
						    	<li><a href="<s:url action="inicioIntranet"/>">Intranet</a></li>
						    	
						    	<%-- <li><a href="<s:url action="nacionales"/>">Nacionales</a></li>
						    	<li><a href="<s:url action="internacionales"/>">Internacionales</a></li>
						    	<li><a href="<s:url action="cruceros"/>">Cruceros</a></li> 
						    	<li><a href="<s:url action="pago"/>">Pago</a></li>--%>
						    	
								<div class="clearfix"></div>
							</ul>
							<script type="text/javascript" src="js/responsive-nav.js"></script>
				    </div>	
			
				   			
	    		    <div class="clearfix"></div>
	    	    </div>
	            <div class="col-sm-4 header_right">
	    		      <div id="loginContainer"><a href="#" id="loginButton"><img src="images/login.png"><span>Logueo de Clientes</span></a>
						    <div id="loginBox">                
						        <form id="loginForm">
						                <fieldset id="body">
						                	<fieldset>
						                          <label for="email">Email</label>
						                          <input type="text" name="email" id="email">
						                    </fieldset>
						                    <fieldset>
						                            <label for="password">Password</label>
						                            <input type="password" name="password" id="password">
						                     </fieldset>
						                    <input type="submit" id="login" value="Ingresar">
						                	<label for="checkbox"><input type="checkbox" id="checkbox"> <i>Recordarme</i></label>
						            	</fieldset>
						                 <span><a href="#">Perdiste tu password?</a></span>
							      </form>
				              </div>
			             </div>
		                 <div class="clearfix"></div>
	                 </div>
	                <div class="clearfix"></div>
   </div>