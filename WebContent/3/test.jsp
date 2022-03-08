<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%	
	//post방식으로 데이터를 전달받을 경우 한글처리 해야 함
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id"); 
	String pw = request.getParameter("pw"); 
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
pre {
  background-color: lightgreen;
}
</style>
</head>
<body>
<pre>
  <h3>JSP : Java Server Page</h3>
  &lt;% %> 기호 안쪽에 java코드를 작성할        수 있으며,
    그 외 영역에 HTML코드도 함께 병행하여 작성 가능한 페이지
</pre>

ID = <%=id %> 님의 비밀번호는 "<%=pw %>"군요?
</body>
</html>






