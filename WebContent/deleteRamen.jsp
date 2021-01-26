<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp" %>

<%
	String ramenId = request.getParameter("id");

	PreparedStatement pstmt =null;
	ResultSet rs = null;
	
	String sql = "select * from ramen";
	pstmt = conn.prepareStatement(sql);
	rs=pstmt.executeQuery();
	
	
	if(rs.next()){
		sql = "delete from ramen where r_id =?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,ramenId);
		pstmt.executeUpdate();
	}else
		out.println("일치하는 라면이 없습니다.");
	
	if(rs != null)
		rs.close();
	
	if(pstmt != null)
		pstmt.close();
	
	if(conn != null)
		conn.close();
	
	response.sendRedirect("editRamen.jsp?edit=delete");
%>