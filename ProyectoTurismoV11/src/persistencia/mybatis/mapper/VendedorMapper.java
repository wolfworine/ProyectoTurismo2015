/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia.mybatis.mapper;

import java.util.List;

import model.Vendedor;

/**
 * 
 * @author Administrador
 */
public interface VendedorMapper {

	List<Vendedor> buscar(Vendedor vendedor);

	Vendedor obtener(Integer codigo);

	Vendedor obtenerDetalle(Integer codigo);

	void insertar(Vendedor vendedor);

	void eliminar(Integer codigo);

	void actualizar(Vendedor vendedor);
}
