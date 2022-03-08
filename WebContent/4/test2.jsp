<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String nm = request.getParameter("name");
	String gd = request.getParameter("gender");
	String hdn = request.getParameter("hdn");
	String[] food = request.getParameterValues("food");
	
	String foods = ""; 
	for(int i=0; i<food.length; i++){
		foods += food[i];
	}
	
	String file = request.getParameter("file");
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=nm %>님 환영해요~~ <br>
당신의 성별은 <%=gd %>이군요! <br>
당신이 좋아하는 것은 <%=foods %>!! <br><br>
(<%=file %>)을 전송하였습니다..<br><br>
비밀리에 전달되는 값 [<%=hdn %>]
</body>
</html>