<%@page import="kr.or.ddit.buyer.vo.BuyerVO"%>
<%@page import="java.util.List"%>
<%@page import="com.ibatis.sqlmap.client.SqlMapClient"%>
<%@page import="kr.or.ddit.ibatis.config.BuildedSqlMapClient"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//iBatis활용하여 데이터 가져오기
SqlMapClient smc = BuildedSqlMapClient.getSqlMapClient();
List<BuyerVO> list = smc.queryForList("buyer.buyerNames");
%>
[
<%
	for(int i=0; i<list.size(); i++){
		BuyerVO vo = list.get(i);
		if(i>0) out.print(",");
	%>	
		{
			"id"	: "<%=vo.getBuyer_id()%>",
			"name"	: "<%=vo.getBuyer_name() %>"
		}
	<%	
	}//for end
%>
]





