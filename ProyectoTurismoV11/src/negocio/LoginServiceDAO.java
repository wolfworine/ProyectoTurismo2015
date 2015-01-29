package negocio;

import org.apache.ibatis.session.SqlSession;

import persistencia.mybatis.mapper.UsuarioMapper;
import util.MyBatisUtil;
import model.Usuario;

public class LoginServiceDAO implements LoginService{

	
	public String isCredencialesValidas(Usuario usuario) throws Exception{

		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		
		UsuarioMapper usuarioMapper=session.getMapper(UsuarioMapper.class);
		String fecha=usuarioMapper.getUltimaFechaAcceso(usuario);
		
		session.close();
	          
		return fecha;
	}
	
	public String isCredencialesValidasNombre(Usuario usuario)throws Exception{

		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		
		UsuarioMapper usuarioMapper=session.getMapper(UsuarioMapper.class);
		String nombre=usuarioMapper.getNombreAcceso(usuario);
		
		session.close();
	          
		return nombre;
	}

}
