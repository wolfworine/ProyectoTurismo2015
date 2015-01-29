package persistencia.mybatis.mapper;

import java.util.List;

import model.Cliente;

public interface ClienteMapper {

	
	List<Cliente> buscar(Cliente cliente);

	Cliente obtener(String codigo);

	Cliente obtenerDetalle(String codigo);	  

	void insertar(Cliente cliente);	

	void eliminar(String codigo);

	void actualizar(Cliente cliente);

	
}
