<%@page import="java.sql.ResultSet"%><%@page import="javax.sql.DataSource"%><%@page import="javax.naming.*"%><%@page import="java.sql.PreparedStatement"%><%@page import="java.sql.Connection"%><%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%><%
	String member_id = request.getParameter("MEMBER_ID");
	// System.out.println(member_id);
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "SELECT * FROM MEMBER WHERE MEMBER_ID=?";
	// ID 중복 판단 변수
	String bool = "false";
	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/EmployeeDB");
		conn = ds.getConnection();
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, member_id);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			// System.out.println(rs.getString(1));
			if (rs.getString(1) != null && rs.getString(1) != "") {
				bool = "true";
				bool.trim();
			} else {
				bool = "false";
				bool.trim();
			}
		}
		out.print(bool);
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if (rs != null) { rs.close(); }
		if (pstmt != null) { pstmt.close(); }
		if (conn != null) { conn.close(); }
	}
%>