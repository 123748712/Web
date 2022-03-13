<%@page import="kr.or.ddit.Service"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <pre>
  	JDBC를 이용한 DB Connection
  	자바에서 데이터베이스에 접속하기위한 API
  	DB의 정보를 가져오기 위해 객체를 만들어 연결하는 방식
  </pre>
<%
	//요청데이터 받음
	String name = request.getParameter("name");

	/*처리과정
		service객체를 얻어와 메소드를 호출하여 결과 값을 전달받는다
		1. Service -> Dao호출
		2. Dao -> sql조회(를 위해 JDBCUtil 도움 받음)
		3. Dao -> Service로 값 반환
		4. Service -> jsp로 값 전달
	*/
	
	//service객체 얻어오기
	Service service = Service.getInstance();
	//메소드 호출하고 결과 받기
	Map<String,Object> map = service.selectMemberOne(name);
	String id = (String)map.get("id");
	String add1 = (String)map.get("add1");
	String add2 = (String)map.get("add2");
	String job = (String)map.get("job");
	String like = (String)map.get("like");
%>
이름정보 : <%=name %>
	<table border="1">
	  <tr>
	    <td>아이디</td>
	    <td>이름</td>
	    <td>주소</td>
	    <td>직업</td>
	    <td>취미</td>
	  </tr>
	  <tr>
	    <td><%= id%></td>
	    <td><%= name%></td>
	    <td><%= add1%><%= add2%></td>
	    <td><%= job%></td>
	    <td><%= like%></td>
	  </tr>
	</table>






</body>
</html>