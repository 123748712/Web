package kr.or.ddit;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;

import kr.or.ddit.util.JDBCUtil;

public class Dao {

	/* 싱글톤패턴 활용
	 * 객체를 1회만 생성하고 메모리에 올려 공유하여 사용하는 패턴
	 * 특징 1. private 생성자 
	 * 특징 2. static 메소드
	 *  */
	private static Dao dao;
	
	//private constructor
	private Dao() {	
	}
	
	//static method
	public static Dao getInstance() {
		if(dao == null) {
			dao = new Dao();//최초 1회만 new 연산자를 통해 객체를 메모리에 할당한다
		}
		return dao;
	}
	
	
	//요청데이터를 이용해 상세정보를 조회하는 메소드
	//접근제한자 리턴타입 메소드명(매개변수)
	public Map<String,Object> selectMemberOne(String name){
		
		Map<String, Object> map = new HashMap<String, Object>();
		String sql = "select * from member where mem_name = '" + name + "'";
		
		Connection conn = JDBCUtil.getConnection();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				map.put("id", rs.getString("mem_id"));
				map.put("add1", rs.getString("mem_add1"));
				map.put("add2", rs.getString("mem_add2"));
				map.put("job", rs.getString("mem_job"));
				map.put("like", rs.getString("mem_like"));
			}
			JDBCUtil.close(conn, stmt, rs);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return map;
	}
}
