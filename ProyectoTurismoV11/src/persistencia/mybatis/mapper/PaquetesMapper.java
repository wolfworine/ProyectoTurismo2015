package persistencia.mybatis.mapper;

import java.util.List;

import model.Paquetes;

public interface PaquetesMapper {
	
	List<Paquetes> buscar(Paquetes paquetes);

	Paquetes obtener(String codigo);

	Paquetes obtenerDetalle(String codigo);	  

	void insertar(Paquetes paquetes);	

	void eliminar(String codigo);

	void actualizar(Paquetes paquetes);
}
