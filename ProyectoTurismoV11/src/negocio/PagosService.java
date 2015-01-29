package negocio;

import java.util.List;

import model.Pagos;

public interface PagosService {
	public void registrar (Pagos pagos) throws Exception;
	
	public Pagos obtener(String string) throws Exception;

	public Pagos obtenerDetalle(String codigo) throws Exception;
	
	public List<Pagos> buscar(Pagos pagos) throws Exception;
	
	public void eliminar(String codigo) throws Exception;
	
	public void	actualizar(Pagos pagos) throws Exception;	
	
	

}
