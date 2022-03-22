<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String idValue = request.getParameter("id");
	String pwValue = request.getParameter("pw");
	
	//요청 데이터로 id와 pw 값을 받음
	//요청 데이터를 이용해 DB에 접근하여 로그인 성공 여부에 대한 값을 받아와야 하지만
	//현재는 생략하고 임의의 데이터를 생성하여 사용한다
	String ss = "1";	//로그인 성공시 1, 실패시 0코드가 넘어온다.. 라고 가정
	
	//결과 데이터 생성하여 ajax로 넘겨주기
	if(ss.equals("1")){ //성공시
%>
<%-- 		{"rst" : "로그인 성공"} --%>
		{"code" : "ok"},
<%
	}else { //실패시
%>
<%-- 		{"rst" : "로그인 실패"} --%>
		{"code" : "no"}
<%
	}
%>













