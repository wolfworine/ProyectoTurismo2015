package action;

import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import util.Constantes;

import com.opensymphony.xwork2.ActionSupport;

import negocio.LoginService;
import negocio.LoginServiceDAO;
import model.Usuario;

public class UsuarioAction extends ActionSupport implements SessionAware{
	
	private static final long serialVersionUID = 1470228705843594914L;
	
	//atributos I/O
	private Usuario usuario;
	private SessionMap<String, Object> session;
	
	public void setSession(Map<String, Object> session) {
		this.session = (SessionMap<String, Object>)session;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public String login() throws Exception{
	
		String vista="";
		
	
		LoginService loginService=new LoginServiceDAO();
		String fecha=loginService.isCredencialesValidas(usuario);
		
		if(fecha!=null){//caso credenciales correctas
			
			session.put("cuenta", getUsuario().getCuenta());

			//mensaje informativo
			String[] params=new String[]{fecha};
			addActionMessage(getText(Constantes.MENSAJE_LOGIN_EXITO,params) ); 
			
			vista=SUCCESS;
		}else{//caso credenciales incorrectas
			addActionError(getText(Constantes.MENSAJE_LOGIN_VALIDACION)); //mensaje de error
			vista=LOGIN;
		}
	
		//retorna result
		return vista;
	}
	
	public String logout() throws Exception {
       
        
        //invalidamos sesion
        session.invalidate();
        
        return LOGIN;
	}
	
	/*@Override
	public void validate() {
		if ( getUsuario().getCuenta().equals("") ) {
			addFieldError("usuario.cuenta","Dato requerido");
		}
		if ( getUsuario().getContrasena().equals("") ) {
			addFieldError("usuario.contrasena","Dato requerido");
		}

	}*/
}
