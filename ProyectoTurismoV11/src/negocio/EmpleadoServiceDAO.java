package negocio;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import persistencia.mybatis.mapper.EmpleadoMapper;
import persistencia.mybatis.mapper.VendedorMapper;
import util.MyBatisUtil;
import model.Empleado;


public class EmpleadoServiceDAO implements EmpleadoService {


	public void registrar(Empleado empleado) throws Exception {
		
		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		
		EmpleadoMapper empleadoMapper=session.getMapper(EmpleadoMapper.class);
		empleadoMapper.insertar(empleado);
		
		session.commit();
		session.close(); 

	}
	
	
	@Override
	public List<Empleado> buscar(Empleado empleado) throws Exception {

		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		EmpleadoMapper empleadoMapper=session.getMapper(EmpleadoMapper.class);
		List<Empleado> empleados=empleadoMapper.buscar(empleado);
		session.close();
		
		return empleados;
	}

	@Override
	public Empleado obtener(Integer codigo) throws Exception {

		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		EmpleadoMapper empleadoMapper=session.getMapper(EmpleadoMapper.class);
		Empleado empleado=empleadoMapper.obtener(codigo);
		session.close();
		
		return empleado;
	}

	@Override
	public Empleado obtenerDetalle(Integer codigo) throws Exception {

		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		EmpleadoMapper empleadoMapper=session.getMapper(EmpleadoMapper.class);
		Empleado empleado=empleadoMapper.obtenerDetalle(codigo);
		session.close();
		
		return empleado;
	}
	
	@Override
	public Empleado obtenerDetalle2(String usuario) throws Exception {

		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		EmpleadoMapper empleadoMapper=session.getMapper(EmpleadoMapper.class);
		Empleado empleado=empleadoMapper.obtenerDetalle2(usuario);
		session.close();
		
		return empleado;
	}

	@Override
	public void eliminar(Integer codigo) throws Exception {
		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		EmpleadoMapper empleadoMapper=session.getMapper(EmpleadoMapper.class);
		empleadoMapper.eliminar(codigo);
		session.commit();
		session.close();
	}

	@Override
	public void actualizar(Empleado empleado) throws Exception {
		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		EmpleadoMapper empleadoMapper=session.getMapper(EmpleadoMapper.class);
		empleadoMapper.actualizar(empleado);
		session.commit();
		session.close();

	}


}
