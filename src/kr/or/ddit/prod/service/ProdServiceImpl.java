package kr.or.ddit.prod.service;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.prod.dao.ProdDaoImpl;
import kr.or.ddit.prod.vo.ProdVO;

public class ProdServiceImpl implements IProdService {
	
	private ProdDaoImpl dao;
	private static ProdServiceImpl service;
	
	//1.private constructor
	private ProdServiceImpl() {
		dao = ProdDaoImpl.getDao();
	}
	//2.static method
	public static ProdServiceImpl getService() {
		if(service == null) service = new ProdServiceImpl();
		return service;
	}

	@Override
	public List<ProdVO> prodNames(String gu) {
		// TODO Auto-generated method stub
		List<ProdVO> list = null;
		try {
			list = dao.prodNames(gu);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public ProdVO prodDetails(String id) {
		ProdVO vo = null;
		try {
			vo = dao.prodDetails(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vo;
	}
}












