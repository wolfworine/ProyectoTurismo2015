package persistencia.mybatis.mapper;

import java.util.List;

import model.Ofertas;

public interface OfertasMapper {

	List<Ofertas> buscar(Ofertas ofertas);

	Ofertas obtener(String codigo);

	Ofertas obtenerDetalle(String codigo);	  

	void insertar(Ofertas ofertas);	

	void eliminar(String codigo);

	void actualizar(Ofertas ofertas);
}
