<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setAttribute("title", "YTC School Site");
	request.setAttribute("body", "../index-main.jsp");
%>

<jsp:include page="templates/template.jsp" />