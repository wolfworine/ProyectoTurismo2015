package negocio;

import java.util.List;

import model.Ofertas;

public interface OfertasService {
	
	public void registrar (Ofertas ofertas) throws Exception;
	
	public Ofertas obtener(String codigo) throws Exception;

	public Ofertas obtenerDetalle(String codigo) throws Exception;
	
	public List<Ofertas> buscar(Ofertas ofertas) throws Exception;
	
	public void eliminar(String codigo) throws Exception;
	
	public void	actualizar(Ofertas ofertas) throws Exception;	
	
	

}
