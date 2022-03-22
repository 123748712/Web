<%@page import="kr.or.ddit.prod.vo.ProdVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	ProdVO vo = (ProdVO)request.getAttribute("voValue");
	if(vo != null){
%>
		{
			"code"	: "ok",
			"id"	: "<%=vo.getProd_id() %>",
			"name"	: "<%=vo.getProd_name() %>",
			"lgu"	: "<%=vo.getProd_lgu() %>",
			"buyer"	: "<%=vo.getProd_buyer() %>",
			"color"	: "<%=vo.getProd_color() %>",
			"sale"	: "<%=vo.getProd_sale() %>",
			"price"	: "<%=vo.getProd_price() %>"
		}
<% 
	}else{
%>
		{
			"code" : "no"
		}
<%
	}//if end
%>