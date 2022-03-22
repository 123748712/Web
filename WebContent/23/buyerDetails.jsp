<%@page import="kr.or.ddit.buyer.vo.BuyerVO"%>
<%@page import="com.ibatis.sqlmap.client.SqlMapClient"%>
<%@page import="kr.or.ddit.ibatis.config.BuildedSqlMapClient"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	//요청데이터 받기	
	String id = request.getParameter("id");
	//sqlMapClient객체얻기
	SqlMapClient smc = BuildedSqlMapClient.getSqlMapClient();
	BuyerVO vo = (BuyerVO)smc.queryForObject("buyer.buyerDetails", id);
	//JSON Object생성하기
%>
	{
		"lgu"	: "<%=vo.getBuyer_lgu() %>",
		"bk"	: "<%=vo.getBuyer_bank() %>",
		"bkno"	: "<%=vo.getBuyer_bankno() %>",
		"bkname" : "<%=vo.getBuyer_bankname() %>",
		"add1"	: "<%=vo.getBuyer_add1() %>",
		"add2"	: "<%=vo.getBuyer_add2() %>",
		"tel"	: "<%=vo.getBuyer_comtel() %>",
		"mail"	: "<%=vo.getBuyer_mail() %>"
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	