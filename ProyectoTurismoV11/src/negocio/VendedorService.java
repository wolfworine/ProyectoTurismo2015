package negocio;

import java.util.List;

import model.Vendedor;



public interface VendedorService {

	
	
	public Vendedor obtener(Integer codigo) throws Exception;

	public Vendedor obtenerDetalle(Integer codigo) throws Exception;
	
	public List<Vendedor> buscar(Vendedor vendedor) throws Exception;
	
	public void eliminar(Integer codigo) throws Exception;
	
	public void	actualizar(Vendedor vendedor) throws Exception;
	
	public void registrar(Vendedor vendedor) throws Exception;

	
}
