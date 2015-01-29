package negocio;

import java.util.List;

import model.Cargo;

import org.apache.ibatis.session.SqlSession;

import persistencia.mybatis.mapper.CargoMapper;
import util.MyBatisUtil;

public class CargoServiceDAO implements CargoService{
	
	
	public List<Cargo> getTodos() throws Exception{

		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		
		CargoMapper cargoMapper=session.getMapper(CargoMapper.class);
		List<Cargo> cargos=cargoMapper.getCargos();
		
		session.close();
		
		return cargos;
		
	}
}
