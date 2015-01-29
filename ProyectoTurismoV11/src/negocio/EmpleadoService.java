package negocio;

import java.util.List;

import model.Empleado;

public interface EmpleadoService {
	public void registrar (Empleado empleado) throws Exception;
	
	public Empleado obtener(Integer codigo) throws Exception;

	public Empleado obtenerDetalle(Integer codigo) throws Exception;
	
	public Empleado obtenerDetalle2(String usuario) throws Exception;
	
	public List<Empleado> buscar(Empleado empleado) throws Exception;
	
	public void eliminar(Integer codigo) throws Exception;
	
	public void	actualizar(Empleado empleado) throws Exception;	
	
	

}
