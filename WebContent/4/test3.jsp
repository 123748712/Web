<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

이곳으로 textarea와 select-option데이터를 찍어줄꼬야... <br><br>
<%
	request.setCharacterEncoding("utf-8");
	String txtarea = request.getParameter("tt");
	//개행문자 변환처리
	txtarea = txtarea.replace("\r", "").replace("\n","<br>");
	
	String[] car = request.getParameterValues("cars");
	String cars = "";
	for(int i=0; i<car.length; i++){
		cars += car[i] + " ";
	}
%>
<%=txtarea %> <br>
<%=cars %>
</body>
</html>