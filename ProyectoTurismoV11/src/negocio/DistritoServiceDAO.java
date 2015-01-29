package negocio;

import java.util.List;

import model.Distrito;

import org.apache.ibatis.session.SqlSession;

import persistencia.mybatis.mapper.DistritoMapper;
import util.MyBatisUtil;

public class DistritoServiceDAO implements DistritoService{
	
	
	public List<Distrito> getTodos() throws Exception{

		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		
		DistritoMapper distritoMapper=session.getMapper(DistritoMapper.class);
		List<Distrito> distritos=distritoMapper.getDistritos();
		
		session.close();
		
		return distritos;
		
	}
}
