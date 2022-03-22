package kr.or.ddit.prod.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.prod.vo.ProdVO;

public interface IProdDao {

	//제품목록조회
	public List<ProdVO> prodNames(String gu) throws SQLException;
	//제품상세조회
	public ProdVO prodDetails(String id) throws SQLException;
}
