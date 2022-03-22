package kr.or.ddit.prod.service;

import java.util.List;
import kr.or.ddit.prod.vo.ProdVO;

public interface IProdService {

	//메소드 선언
	//접근제한자 리턴받을타입 메소드명(넘겨줄 값)
	
	//제품목록 조회
	public List<ProdVO> prodNames(String gu);
	//제품 상세 조회
	public ProdVO prodDetails(String id);
}












