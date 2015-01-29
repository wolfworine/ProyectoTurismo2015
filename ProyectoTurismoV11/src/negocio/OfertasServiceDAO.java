package negocio;

import java.util.List;

import model.Ofertas;

import org.apache.ibatis.session.SqlSession;

import persistencia.mybatis.mapper.OfertasMapper;
import util.MyBatisUtil;



public class OfertasServiceDAO implements OfertasService {

	@Override
	public void registrar(Ofertas ofertas) throws Exception {
		// TODO Auto-generated method stub
		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		
		OfertasMapper ofertasMapper=session.getMapper(OfertasMapper.class);
		ofertasMapper.insertar(ofertas);
		
		session.commit();
		session.close(); 
		
	}

	@Override
	public List<Ofertas> buscar(Ofertas ofertas) throws Exception {

		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		OfertasMapper ofertasMapper=session.getMapper(OfertasMapper.class);
		List<Ofertas> Lofertas=ofertasMapper.buscar(ofertas);
		session.close();
		
		return Lofertas;
	}

	@Override
	public Ofertas obtener(String codigo) throws Exception {
		// TODO Auto-generated method stub
		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		OfertasMapper ofertasMapper=session.getMapper(OfertasMapper.class);
		Ofertas ofertas=ofertasMapper.obtener(codigo);
		session.close();
		
		return ofertas;
	}

	@Override
	public Ofertas obtenerDetalle(String codigo) throws Exception {
		// TODO Auto-generated method stub
		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		OfertasMapper ofertasMapper=session.getMapper(OfertasMapper.class);
		Ofertas ofertas=ofertasMapper.obtenerDetalle(codigo);
		session.close();
		
		return ofertas;
	}

	@Override
	public void eliminar(String codigo) throws Exception {
		// TODO Auto-generated method stub
		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		OfertasMapper ofertasMapper=session.getMapper(OfertasMapper.class);
		ofertasMapper.eliminar(codigo);
		session.commit();
		session.close();
	}

	@Override
	public void actualizar(Ofertas ofertas) throws Exception {
		// TODO Auto-generated method stub
		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		OfertasMapper ofertasMapper=session.getMapper(OfertasMapper.class);
		ofertasMapper.actualizar(ofertas);
		session.commit();
		session.close();
	}

	

}
