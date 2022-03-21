<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String info = request.getParameter("info");
%>
입력하신 내용 : <%= info %> <br>
<%= "입력하신 내용 : " + info %>