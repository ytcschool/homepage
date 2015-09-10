<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	request.setAttribute("title", "YTC School Site");
	request.setAttribute("body", "../index-main.jsp");
%>

<jsp:include page="templates/template.jsp" />