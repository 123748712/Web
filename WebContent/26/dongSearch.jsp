<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String dongVal = request.getParameter("dong");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe"; 
	Connection conn =DriverManager.getConnection(url, "ddit", "java");
	Statement stmt = conn.createStatement();
	String sql = "select * from ziptb where dong like '%"+ dongVal +"%'";
	ResultSet rs = stmt.executeQuery(sql);
%>
[	
<%
	int i = 0;
	while(rs.next()){
		String zip = rs.getString("zipCode");
		String sido = rs.getString("sido");
		String gugun = rs.getString("gugun");
		String dong = rs.getString("dong");
		String bunji = rs.getString("bunji");
		
		if(bunji == null) bunji = "";
		if(i>0) out.print(",");
%>
		{
			"code"  : "<%=zip %>",
			"addr"  : "<%=sido%><%=gugun%><%=dong%>",
			"bunji" : "<%=bunji %>"
		}
<%		
	i++;
	}//while end
%>
]










