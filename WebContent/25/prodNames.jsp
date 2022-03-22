<%@page import="kr.or.ddit.prod.vo.ProdVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//지금까지 임의의 데이터를 만들어 사용했지만 실제 데이터로 JSON데이터를 가공
List<ProdVO> list = (List<ProdVO>)request.getAttribute("listValue");

if(list != null && list.size() > 0){
%>
	{
		"code" : "ok",
		"data" : [
<%
		for(int i=0; i<list.size(); i++){
			ProdVO vo = list.get(i);
			if(i>0) out.print(",");
%>
			{
				"id" : "<%=vo.getProd_id() %>",
				"nm" : "<%=vo.getProd_name() %>"
			}
<%
		}//for end
%>
		]
	}
<%
}else{//data없음
%>
	{
		"code" : "no"
	}
<%
}
%>