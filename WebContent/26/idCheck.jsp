<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String mId = request.getParameter("mId");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe"; 
	Connection conn =DriverManager.getConnection(url, "ddit", "java");
	Statement stmt = conn.createStatement();
	String sql = "select mem_id from member where mem_id = '" + mId + "'";
	ResultSet rs = stmt.executeQuery(sql);
	
	if(rs.next()){
%>
		{
			"code" : "no",
			"msg"  : "사용불가"
		}
<%
	}else{
%>
		{
			"code" : "ok",
			"msg"  : "사용가능"
		}
<%
	}//if end
%>