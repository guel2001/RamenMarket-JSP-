<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Ramen" %>
<%@ page import="dao.RamenRepository" %>

<%

	String id = request.getParameter("id");

	if( id == null || id.trim().equals("")){
		response.sendRedirect("etc_ramen.jsp");
		return;
	}
	
	
	RamenRepository dao = RamenRepository.getInstance();
	
	Ramen ramen = dao.getRamenById(id);
	if(ramen==null){
	response.sendRedirect("exceptionNoRamenId.jsp");
	}
	
	ArrayList<Ramen> goodsList = dao.getAllRamens();
	Ramen goods = new Ramen();
	
	for(int i = 0;i < goodsList.size(); i++){
	goods = goodsList.get(i);
	if(goods.getRamenId().equals(id)){
	break;
	}
	}
	
	ArrayList<Ramen> list = (ArrayList<Ramen>) session.getAttribute("cartlist");
	
	if(list ==null){
	list = new ArrayList<Ramen>();
	session.setAttribute("cartlist",list);
	}
	
	int cnt = 0;
	Ramen goodsQnt = new Ramen();
	
	
	for(int i = 0 ;i <list.size();i++){
		goodsQnt = list.get(i);
		if(goodsQnt.getRamenId().equals(id)){
			cnt++;
			int orderQuantity = goodsQnt.getQuantity() + 1;
			goodsQnt.setQuantity(orderQuantity);
		}
	}
	if(cnt ==0){
		goods.setQuantity(1);
		list.add(goods);
	}
	
	response.sendRedirect("etc_ramen_info.jsp?id=" + id);
	return;
	%>