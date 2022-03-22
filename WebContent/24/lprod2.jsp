<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	Connection conn = DriverManager.getConnection(url, "ddit", "java");
	Statement stmt = conn.createStatement(); //sql접근객체
	String sql = "select * from lprod";
	ResultSet rs = stmt.executeQuery(sql);
%>
	[
<%
	int i = 0;
	while(rs.next()){
		int id = rs.getInt("lprod_id");
		String gu = rs.getString("lprod_gu");
		String nm = rs.getString("lprod_nm");
		if(i>0) out.print(",");
%>		
		{
			"id" : "<%=id %>",
			"gu" : "<%=gu %>",
			"nm" : "<%=nm %>"
		}
<%
		i++;
	}//while end
%>]






