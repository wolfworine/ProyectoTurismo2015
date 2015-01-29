package action;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import java.util.HashMap;
import java.util.Map;
import java.util.List;
import java.io.File;
import java.io.FileInputStream;

import org.apache.commons.io.IOUtils;

import util.Constantes;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;

import negocio.CargoService;
import negocio.CargoServiceDAO;
import negocio.EmpleadoService;
import negocio.EmpleadoServiceDAO;
import model.Empleado;
import model.Cargo;



public class EmpleadoAction extends ActionSupport implements Preparable{	
	

	private static final long serialVersionUID = 1470228705843594914L;
	
	//atributos I/O
	//private Empleado empleado;
	//private Usuario usuario;
	private SessionMap<String, Object> session;
	private List<Cargo> cargos;
	private Map<String, String> generos;
	private Map<String, String> estadosCiviles;
	
	private List<Empleado> empleados;
	private Empleado empleado=new Empleado();
	//private Empleado empleado;
	private File foto;
	
	
	/*Esto le aumentó*/
	public void setEmpleado(Empleado empleado) {
		this.empleado = empleado;
	}
	
	private EmpleadoService empleadoService= new EmpleadoServiceDAO();

		
	public void setSession(Map<String, Object> session) {
		this.session = (SessionMap<String, Object>)session;
	}	
	
	public Map<String, String> getEstadosCiviles() {
		return estadosCiviles;
	}

	public void setEstadosCiviles(Map<String, String> estadosCiviles) {
		this.estadosCiviles = estadosCiviles;
	}

	public List<Cargo> getCargos() {
		return cargos;
	}
	
	public SessionMap<String, Object> getSession() {
		return session;
	}

	public void setSession(SessionMap<String, Object> session) {
		this.session = session;
	}

	public List<Empleado> getEmpleados() {
		return empleados;
	}

	public void setEmpleados(List<Empleado> empleados) {
		this.empleados = empleados;
	}

	public File getFoto() {
		return foto;
	}

	public void setFoto(File foto) {
		this.foto = foto;
	}

	public Empleado getEmpleado() {
		return empleado;
	}

	public void setCargos(List<Cargo> cargos) {
		this.cargos = cargos;
	}

	public Map<String, String> getGeneros() {
		return generos;
	}

	public void setGeneros(Map<String, String> generos) {
		this.generos = generos;
	}

	public String buscar() throws Exception{
		empleados=empleadoService.buscar(empleado);
		return SUCCESS;
	}
	
	
public String editar() throws Exception {
	
	if(empleado.getCodigo()==null){
		
		if(foto!=null){
			empleado.setFoto(IOUtils.toByteArray(new FileInputStream(foto)));
		}
		
		//delega a servicio
		//EmpleadoService empleadoService=new EmpleadoServiceDAO();
		empleadoService.registrar(empleado);
		
		//set de mensaje informativo
		String[] params=new String[]{getText(Constantes.MODULO_EMPLEADO)};		
		addActionMessage(getText(Constantes.MENSAJE_INSERT_OK,params));
		
	}
	else{
		if(foto!=null){
			empleado.setFoto(IOUtils.toByteArray(new FileInputStream(foto)));
		}
		empleadoService.actualizar(empleado);
		String[] params=new String[]{
				getText(Constantes.MODULO_EMPLEADO),
				empleado.getCodigo().toString()};
		
		addActionMessage(getText(Constantes.MENSAJE_UPDATE_OK,params));
	}
	return SUCCESS;
	
	}

	public String detalle2() throws Exception{
	empleado=empleadoService.obtenerDetalle2(empleado.getUsuario());
	
	ActionContext.getContext().getSession().put("foto", empleado.getFoto());
	
	return SUCCESS;
}


	public String detalle() throws Exception{
		empleado=empleadoService.obtenerDetalle(empleado.getCodigo());
		//empleado=empleadoService.obtenerDetalle2(empleado.getUsuario());
	
	ActionContext.getContext().getSession().put("foto", empleado.getFoto());
	
	return SUCCESS;
}
	
	public String eliminar() throws Exception{
		empleadoService.eliminar(empleado.getCodigo());
		
		String[] params=new String[]{
				getText(Constantes.MODULO_EMPLEADO),
				empleado.getCodigo().toString()};
		
		addActionMessage(getText(Constantes.MENSAJE_DELETE_OK,params));
		
		return SUCCESS;
	}
	



@Override
public void prepare() throws Exception {
		
	CargoService cargoService=new CargoServiceDAO();
	cargos=cargoService.getTodos();
	
	generos= new HashMap<String, String>();
	generos.put(Constantes.GENERO_FEMENINO_COD, getText(Constantes.GENERO_FEMENINO_DES));
	generos.put(Constantes.GENERO_MASCULINO_COD, getText(Constantes.GENERO_MASCULINO_DES));

	estadosCiviles= new HashMap<String, String>();
	estadosCiviles.put(Constantes.EC_SOLTERO_COD,  getText(Constantes.EC_SOLTERO_DES));
	estadosCiviles.put(Constantes.EC_CASADO_COD,  getText(Constantes.EC_CASADO_DES));
	
	
	if(empleado.getCodigo()!=null)
		empleado=empleadoService.obtener(empleado.getCodigo());
	
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
