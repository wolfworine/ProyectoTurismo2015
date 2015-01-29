package action;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;

import util.Constantes;
import model.Cargo;
import model.Cliente;
import model.Empleado;
import negocio.CargoService;
import negocio.CargoServiceDAO;
import negocio.ClienteService;
import negocio.ClienteServiceDAO;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;


public class ClienteAction extends ActionSupport implements Preparable{
	
	private static final long serialVersionUID = -3268883425542327144L;
	
	private SessionMap<String, Object> session;	
	private Map<String, String> generos;
	private Map<Integer, String> estados;
	
	private List<Cliente> clientes;
	private Cliente cliente=new Cliente();
	
	private ClienteService clienteService= new ClienteServiceDAO();
	
	
	
	
	public Map<Integer, String> getEstados() {
		return estados;
	}


	public void setEstados(Map<Integer, String> estados) {
		this.estados = estados;
	}


	public SessionMap<String, Object> getSession() {
		return session;
	}


	public void setSession(SessionMap<String, Object> session) {
		this.session = session;
	}


	public Map<String, String> getGeneros() {
		return generos;
	}


	public void setGeneros(Map<String, String> generos) {
		this.generos = generos;
	}


	public ClienteService getClienteService() {
		return clienteService;
	}


	public void setClienteService(ClienteService clienteService) {
		this.clienteService = clienteService;
	}


	public Cliente getCliente() {
		return cliente;
	}


	public List<Cliente> getClientes() {
		return clientes;
	}


	public void setClientes(List<Cliente> clientes) {
		this.clientes = clientes;
	}


	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}


	public String buscar() throws Exception{
		clientes=clienteService.buscar(cliente);
		return SUCCESS;
	}
	
	
	public String editar() throws Exception {
	
			if(cliente.getId()==null){
		
		clienteService.registrar(cliente);
		
		//set de mensaje informativo
		String[] params=new String[]{getText(Constantes.MODULO_CLIENTE)};		
		addActionMessage(getText(Constantes.MENSAJE_INSERT_OK,params));
		
	}
	else{
		clienteService.actualizar(cliente);
		String[] params=new String[]{
				getText(Constantes.MODULO_CLIENTE),
				cliente.getId().toString()};
		
		addActionMessage(getText(Constantes.MENSAJE_UPDATE_OK,params));
	}
	return SUCCESS;
	
	}


	public String detalle() throws Exception{
	cliente=clienteService.obtenerDetalle(cliente.getId());

	return SUCCESS;
	
	}
	
	



	@Override
	public void prepare() throws Exception {
		
		generos= new HashMap<String, String>();
		generos.put(Constantes.GENERO_FEMENINO_COD, getText(Constantes.GENERO_FEMENINO_DES));
		generos.put(Constantes.GENERO_MASCULINO_COD, getText(Constantes.GENERO_MASCULINO_DES));

		estados= new HashMap<Integer, String>();
		estados.put(Constantes.ESTADO_ACTIVO_COD, getText(Constantes.ESTADO_ACTIVO_DES));
		estados.put(Constantes.ESTADO_INACTIVO_COD, getText(Constantes.ESTADO_INACTIVO_DES));

		

	
	if(cliente.getId()!=null)
		cliente=clienteService.obtener(cliente.getId());
	
	}
	
	
	


	
}
