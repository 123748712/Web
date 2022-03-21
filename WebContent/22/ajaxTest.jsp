<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
//JAVA SERVER PAGE - 현재 CONTROLLER(데이터의 처리)역할의 PAGE로 활용.. 
%>

<%-- 자바스크립트 Object >> JSON형식으로 파싱되지 않음 --%>
{name : "홍길동", addr : "대전", tel : "010-1234-5678"}

<%-- JSON Object의 형태 : 배열 --%>
<%-- ["홍길동","고길동","민길동","정길동","황길동"] --%>

<%-- JSON Object의 형태 : JSON Object --%>
<%-- {"name":"홍길동","address":"서울","tel":"010-1111-2222"} --%>

<%-- JSON Object의 형태 : JSON Object Array--%>
<%-- [{"name":"홍길동","address":"서울","tel":"010-1111-2222"},
{"name":"가길동","address":"대전","tel":"010-1111-2244"},
{"name":"김길동","address":"강릉","tel":"010-1111-2225"},
{"name":"공길동","address":"평창","tel":"010-1111-2226"},
{"name":"정길동","address":"대구","tel":"010-1111-2227"}] --%>

