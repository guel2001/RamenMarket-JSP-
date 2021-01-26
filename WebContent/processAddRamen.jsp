<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>
<%@ page import="dto.Ramen" %>
<%@ page import="dao.RamenRepository" %>
<%

	request.setCharacterEncoding("UTF-8");

	
	String filename = "";
	String realFolder =  "C://Users/JEC/eclipse-workspace/project_final/WebContent/resources/images";
	String encType="utf-8";
	int maxSize= 5*1024*1024;
	
	MultipartRequest multi = new MultipartRequest(request,realFolder,maxSize,encType,new DefaultFileRenamePolicy());
	
	String ramenId = multi.getParameter("ramenId");
	String name = multi.getParameter("name");
	String unitPrice = multi.getParameter("unitPrice");
	String description = multi.getParameter("description");
	String manufacturer= multi.getParameter("manufacturer");
	String category = multi.getParameter("category");
	String SpicyDegree = multi.getParameter("SpicyDegree");
	String material = multi.getParameter("material");


	
	Integer spicy;

	spicy = Integer.valueOf(SpicyDegree);
	
	Integer price;
	
	if(unitPrice.isEmpty())
		price = 0;
	else
		price = Integer.valueOf(unitPrice);
	
	
	Enumeration files = multi.getFileNames();
	String fname = (String)files.nextElement();
	String fileName=multi.getFilesystemName(fname); 
	
	RamenRepository dao = RamenRepository.getInstance();
	
	Ramen newRamen = new Ramen();
	
	newRamen.setRamenId(ramenId);
	newRamen.setRname(name);
	newRamen.setUnitPrice(price);
	newRamen.setDescription(description);
	newRamen.setManufacturer(manufacturer);
	newRamen.setCategory(category);
	newRamen.setSpicyDegree(spicy);
	newRamen.setFilename(fileName);
	newRamen.setMaterial(material);
	
	
	
	PreparedStatement pstmt = null;
	
	String sql = "insert into ramen values(?,?,?,?,?,?,?,?,?)";
	
	pstmt = conn.prepareStatement(sql);
	
	pstmt.setString(1,ramenId);
	pstmt.setString(2,name);
	pstmt.setInt(3,price);
	pstmt.setString(4,category);
	pstmt.setString(5,description);
	pstmt.setString(6,manufacturer);
	pstmt.setString(7,material);
	pstmt.setInt(8,spicy);
	pstmt.setString(9,fileName);
	pstmt.executeUpdate();
	
	
	

	if(pstmt != null)
		pstmt.close();
	if(conn !=null)
		conn.close();
	
	dao.addRamen(newRamen);
	
	if(newRamen.getCategory().equals("매운 라면"))
		response.sendRedirect("hot_ramen.jsp");
	
	else if(newRamen.getCategory().equals("자장 라면"))
		response.sendRedirect("black_ramen.jsp");

	else if(newRamen.getCategory().equals("그외 라면"))
		response.sendRedirect("etc_ramen.jsp");
%>