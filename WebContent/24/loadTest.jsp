<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

load() : 서버에서 전송된 <span>응답데이터</span>를 셀렉터를 이용해 특정 노드에 붙임 <br>

<%
	String a = request.getParameter("a");
	String b = request.getParameter("b");
%>   
<%= a%> - <%=b%>