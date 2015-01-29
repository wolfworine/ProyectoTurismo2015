/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia.mybatis.mapper;

import java.util.List;

import model.Empleado;


/**
 *
 * @author Administrador
 */
public interface EmpleadoMapper{
    
	List<Empleado> buscar(Empleado empleado);

	Empleado obtener(Integer codigo);

	Empleado obtenerDetalle(Integer codigo);
	
	Empleado obtenerDetalle2(String usuario);

	void insertar(Empleado empleado);	

	void eliminar(Integer codigo);

	void actualizar(Empleado empleado);

}
