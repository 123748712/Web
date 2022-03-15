<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
	String nm = request.getParameter("name"); 
	String[] hb = request.getParameterValues("hobby");
	String hh = "";
	for(int i = 0; i < hb.length; i++){
		hh += hb[i] + " ";
	}

%>

<%=nm + "님 환영합니다<br>"%>
<%=nm %> 님 환영해요. <br>
취미 : <%=hh%>