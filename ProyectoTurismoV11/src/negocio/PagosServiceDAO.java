package negocio;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import persistencia.mybatis.mapper.PagosMapper;
import util.MyBatisUtil;
import model.Pagos;


public class PagosServiceDAO implements PagosService {

	@Override
	public void registrar(Pagos pagos) throws Exception {
		// TODO Auto-generated method stub
		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		PagosMapper pagosMapper=session.getMapper(PagosMapper.class);
		pagosMapper.insertar(pagos);
		
		session.commit();
		session.close(); 
		
	}

	@Override
	public List<Pagos> buscar(Pagos pagos) throws Exception {

		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		PagosMapper pagosMapper=session.getMapper(PagosMapper.class);
		List<Pagos> Lpagos=pagosMapper.buscar(pagos);
		session.close();
		
		return Lpagos;
	}

	@Override
	public Pagos obtener(String codigo) throws Exception {
		// TODO Auto-generated method stub
		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		PagosMapper pagosMapper=session.getMapper(PagosMapper.class);
		Pagos pagos=pagosMapper.obtener(codigo);
		session.close();
		
		return pagos;
	}

	@Override
	public Pagos obtenerDetalle(String codigo) throws Exception {
		// TODO Auto-generated method stub
		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		PagosMapper pagosMapper=session.getMapper(PagosMapper.class);
		Pagos pagos=pagosMapper.obtenerDetalle(codigo);
		session.close();
		
		return pagos;
	}

	@Override
	public void eliminar(String codigo) throws Exception {
		// TODO Auto-generated method stub
		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		PagosMapper pagosMapper=session.getMapper(PagosMapper.class);
		pagosMapper.eliminar(codigo);
		session.commit();
		session.close();
	}

	@Override
	public void actualizar(Pagos pagos) throws Exception {
		// TODO Auto-generated method stub
		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		PagosMapper pagosMapper=session.getMapper(PagosMapper.class);
		pagosMapper.actualizar(pagos);
		session.commit();
		session.close();
	}

}
