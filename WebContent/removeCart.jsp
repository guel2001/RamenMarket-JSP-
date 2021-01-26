<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Ramen" %>
<%@ page import="dao.RamenRepository" %>

<%

	String id = request.getParameter("id");
	if( id == null || id.trim().equals("")){
		response.sendRedirect("products.jsp");
		return;
	}
	
	
	RamenRepository dao = RamenRepository.getInstance();
	
	Ramen product = dao.getRamenById(id);
	if(product==null){
	response.sendRedirect("exceptionNoProductId.jsp");
	}
	
	ArrayList<Ramen> cartList = (ArrayList<Ramen>) session.getAttribute("cartlist");
	Ramen goodsQnt = new Ramen();
	for(int i = 0; i< cartList.size(); i++){
		goodsQnt = cartList.get(i);
		if (goodsQnt.getRamenId().equals(id)){
			cartList.remove(goodsQnt);
		}
	}
	response.sendRedirect("cart.jsp");
	%>