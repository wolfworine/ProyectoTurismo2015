/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia.mybatis.mapper;

import model.Usuario;



/**
 *
 * @author Administrador
 */
public interface UsuarioMapper{
    
    String getUltimaFechaAcceso(Usuario usuario);

	String getNombreAcceso(Usuario usuario);
	    

}
