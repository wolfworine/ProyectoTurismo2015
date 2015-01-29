/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia.mybatis.mapper;

import java.util.List;

import model.Cargo;



/**
 *
 * @author Administrador
 */
public interface CargoMapper{
    
	    List<Cargo> getCargos();

}
