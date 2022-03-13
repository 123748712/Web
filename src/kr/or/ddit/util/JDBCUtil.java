package kr.or.ddit.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * JDBC드라이버를 로딩하고 Connection객체를 생성 및 
 * 사용한 객체반납 하는 기능 제공함.
 * @author sem
 */
public class JDBCUtil {
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("드라이버 로딩 완료!");
		}catch(ClassNotFoundException ex) {
			System.out.println("드라이버 로딩 실패!!!");
		}
	}
	
	public static Connection getConnection() {
		try {
			return DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe", 
					"ddit", 
					"java");
			
		}catch(SQLException ex) {
			ex.printStackTrace();
			return null;
		}
	}
	
	/**
	 * 자원 반납
	 * @param conn
	 * @param stmt
	 * @param pstmt
	 * @param rs
	 */
	public static void close(Connection conn, 
								Statement stmt,
								ResultSet rs) {
		if(rs != null) try {rs.close();} catch(SQLException ex) {}
		if(stmt != null) try {stmt.close();} catch(SQLException ex) {}
		if(conn != null) try {conn.close();} catch(SQLException ex) {}
	}
	
}
