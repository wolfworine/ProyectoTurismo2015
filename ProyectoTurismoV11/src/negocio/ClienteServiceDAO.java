package negocio;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import persistencia.mybatis.mapper.ClienteMapper;
import util.MyBatisUtil;
import model.Cliente;


public class ClienteServiceDAO implements ClienteService {

	@Override
	public void registrar(Cliente cliente) throws Exception {
		// TODO Auto-generated method stub
		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		ClienteMapper clienteMapper=session.getMapper(ClienteMapper.class);
		clienteMapper.insertar(cliente);
		
		session.commit();
		session.close(); 
		
	}

	@Override
	public List<Cliente> buscar(Cliente cliente) throws Exception {

		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		ClienteMapper clienteMapper=session.getMapper(ClienteMapper.class);
		List<Cliente> clientes=clienteMapper.buscar(cliente);
		session.close();
		
		return clientes;
	}

	@Override
	public Cliente obtener(String codigo) throws Exception {
		// TODO Auto-generated method stub
		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		ClienteMapper clienteMapper=session.getMapper(ClienteMapper.class);
		Cliente cliente=clienteMapper.obtener(codigo);
		session.close();
		
		return cliente;
	}

	@Override
	public Cliente obtenerDetalle(String codigo) throws Exception {
		// TODO Auto-generated method stub
		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		ClienteMapper clienteMapper=session.getMapper(ClienteMapper.class);
		Cliente cliente=clienteMapper.obtenerDetalle(codigo);
		session.close();
		
		return cliente;
	}

	@Override
	public void eliminar(String codigo) throws Exception {
		// TODO Auto-generated method stub
		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		ClienteMapper clienteMapper=session.getMapper(ClienteMapper.class);
		clienteMapper.eliminar(codigo);
		session.commit();
		session.close();
	}

	@Override
	public void actualizar(Cliente cliente) throws Exception {
		// TODO Auto-generated method stub
		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		ClienteMapper clienteMapper=session.getMapper(ClienteMapper.class);
		clienteMapper.actualizar(cliente);
		session.commit();
		session.close();
	}





}
