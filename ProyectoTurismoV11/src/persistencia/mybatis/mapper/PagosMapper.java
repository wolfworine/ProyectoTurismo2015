package persistencia.mybatis.mapper;

import java.util.List;

import model.Pagos;

public interface PagosMapper {

	List<Pagos> buscar(Pagos pagos);

	Pagos obtener(String codigo);

	Pagos obtenerDetalle(String codigo);	  

	void insertar(Pagos pagos);	

	void eliminar(String codigo);

	void actualizar(Pagos pagos);
	
}
