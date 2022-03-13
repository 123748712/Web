package kr.or.ddit;


import java.util.Map;

public class Service {

	private Dao dao;
	private static Service service;
	
	//private constructor
	private Service() {
		dao = Dao.getInstance();
	}
	//static method
	public static Service getInstance() {
		if(service == null) {
			service = new Service();
		}
		return service;
	}
	
	//메소드
	public Map<String, Object> selectMemberOne(String name){
		
		Map<String, Object> map = dao.selectMemberOne(name);
		return map;
	}
	
	
}
