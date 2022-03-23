<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String uId = (String)request.getAttribute("uId");
	if(uId != null){
%>
		{
			"code" : "ok",
			"id"   : "<%=uId %>"
		}
<%
	}else{
%>
		{ "code" : "no" }
<%
	}
%>