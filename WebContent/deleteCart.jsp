<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Ramen" %>
<%@ page import="dao.RamenRepository" %>

<%
	String id = request.getParameter("cartId");
	if(id == null||id.trim().equals("")){
		response.sendRedirect("cart.jsp");
		return;
	}

	session.invalidate();

	response.sendRedirect("cart.jsp");
%>