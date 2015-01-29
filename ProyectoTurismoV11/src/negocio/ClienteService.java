package negocio;

import java.util.List;

import model.Cliente;

public interface ClienteService {
	public void registrar (Cliente cliente) throws Exception;
	
	public Cliente obtener(String codigo) throws Exception;

	public Cliente obtenerDetalle(String codigo) throws Exception;
	
	public List<Cliente> buscar(Cliente cliente) throws Exception;
	
	public void eliminar(String codigo) throws Exception;
	
	public void	actualizar(Cliente cliente) throws Exception;	
	

	

}
