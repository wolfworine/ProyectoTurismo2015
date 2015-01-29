package negocio;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import persistencia.mybatis.mapper.VendedorMapper;
import util.MyBatisUtil;
import model.Vendedor;

public class VendedorServiceDAO implements VendedorService {


	@Override
	public List<Vendedor> buscar(Vendedor vendedor) throws Exception {

		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		VendedorMapper vendedorMapper=session.getMapper(VendedorMapper.class);
		List<Vendedor> vendedores=vendedorMapper.buscar(vendedor);
		session.close();
		
		return vendedores;
	}

	@Override
	public Vendedor obtener(Integer codigo) throws Exception {

		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		VendedorMapper vendedorMapper=session.getMapper(VendedorMapper.class);
		Vendedor vendedor=vendedorMapper.obtener(codigo);
		session.close();
		
		return vendedor;
	}

	@Override
	public Vendedor obtenerDetalle(Integer codigo) throws Exception {

		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		VendedorMapper vendedorMapper=session.getMapper(VendedorMapper.class);
		Vendedor vendedor=vendedorMapper.obtenerDetalle(codigo);
		session.close();
		
		return vendedor;
	}

	@Override
	public void eliminar(Integer codigo) throws Exception {
		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		VendedorMapper vendedorMapper=session.getMapper(VendedorMapper.class);
		vendedorMapper.eliminar(codigo);
		session.commit();
		session.close();
	}

	@Override
	public void actualizar(Vendedor vendedor) throws Exception {
		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		VendedorMapper vendedorMapper=session.getMapper(VendedorMapper.class);
		vendedorMapper.actualizar(vendedor);
		session.commit();
		session.close();

	}

	@Override
	public void registrar(Vendedor vendedor) throws Exception {
		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		VendedorMapper vendedorMapper=session.getMapper(VendedorMapper.class);
		vendedorMapper.insertar(vendedor);
		session.commit();
		session.close();
	}

}
