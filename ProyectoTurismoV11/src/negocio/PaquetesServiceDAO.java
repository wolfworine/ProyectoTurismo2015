package negocio;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import persistencia.mybatis.mapper.PaquetesMapper;
import util.MyBatisUtil;
import model.Paquetes;


public class PaquetesServiceDAO implements PaquetesService {

	@Override
	public void registrar(Paquetes paquetes) throws Exception {
		// TODO Auto-generated method stub
		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		PaquetesMapper paquetesMapper=session.getMapper(PaquetesMapper.class);
		paquetesMapper.insertar(paquetes);
		
		session.commit();
		session.close(); 
		
	}

	@Override
	public List<Paquetes> buscar(Paquetes paquetes) throws Exception {

		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		PaquetesMapper paquetesMapper=session.getMapper(PaquetesMapper.class);
		List<Paquetes> Lpaquetes=paquetesMapper.buscar(paquetes);
		session.close();
		
		return Lpaquetes;
	}

	@Override
	public Paquetes obtener(String codigo) throws Exception {
		// TODO Auto-generated method stub
		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		PaquetesMapper paquetesMapper=session.getMapper(PaquetesMapper.class);
		Paquetes paquetes=paquetesMapper.obtener(codigo);
		session.close();
		
		return paquetes;
	}

	@Override
	public Paquetes obtenerDetalle(String codigo) throws Exception {
		// TODO Auto-generated method stub
		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		PaquetesMapper paquetesMapper=session.getMapper(PaquetesMapper.class);
		Paquetes paquetes=paquetesMapper.obtenerDetalle(codigo);
		session.close();
		
		return paquetes;
	}

	@Override
	public void eliminar(String codigo) throws Exception {
		// TODO Auto-generated method stub
		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		PaquetesMapper paquetesMapper=session.getMapper(PaquetesMapper.class);
		paquetesMapper.eliminar(codigo);
		session.commit();
		session.close();
	}

	@Override
	public void actualizar(Paquetes Paquetes) throws Exception {
		// TODO Auto-generated method stub
		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		PaquetesMapper paquetesMapper=session.getMapper(PaquetesMapper.class);
		paquetesMapper.actualizar(Paquetes);
		session.commit();
		session.close();
	}

	


}
