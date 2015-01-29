package negocio;

import java.util.List;

import model.Paquetes;

public interface PaquetesService {
	public void registrar (Paquetes paquetes) throws Exception;
	
	public Paquetes obtener(String codigo) throws Exception;

	public Paquetes obtenerDetalle(String codigo) throws Exception;
	
	public List<Paquetes> buscar(Paquetes paquetes) throws Exception;
	
	public void eliminar(String codigo) throws Exception;
	
	public void	actualizar(Paquetes paquetes) throws Exception;	
	
	

}
