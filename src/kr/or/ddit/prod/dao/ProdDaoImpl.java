package kr.or.ddit.prod.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.ibatis.config.BuildedSqlMapClient;
import kr.or.ddit.prod.vo.ProdVO;

public class ProdDaoImpl implements IProdDao {

	private SqlMapClient smc; 
	private static ProdDaoImpl dao;
	
	//싱글톤 방식 특징1. private Constructor
	private ProdDaoImpl() {
		smc = BuildedSqlMapClient.getSqlMapClient();
	}
	//싱글톤 방식 특징2. static method
	public static ProdDaoImpl getDao() {
		
		if(dao == null) dao = new ProdDaoImpl();
		return dao;
	}
	
	@Override
	public List<ProdVO> prodNames(String gu) throws SQLException {
		//sqlMapClient객체를 생성하고 sql실행
		List<ProdVO> list = smc.queryForList("prod.prodNames",gu);
		return list;
	}
	@Override
	public ProdVO prodDetails(String id) throws SQLException {
		// TODO Auto-generated method stub
		ProdVO vo = (ProdVO) smc.queryForObject("prod.prodDetails",id);
		return vo;
	}
}








