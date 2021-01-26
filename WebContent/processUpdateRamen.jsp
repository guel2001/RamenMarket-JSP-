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
	String realFolder = request.getSession().getServletContext().getRealPath("/resources/images");
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
	
	ArrayList<Ramen> listOfRamens =dao.getAllRamens();
	
 		for(int i =0;i<listOfRamens.size();i++){
 			Ramen ramen = listOfRamens.get(i);
 			if(ramen.getRamenId().equals(ramenId)){			
 				ramen.setRamenId(ramenId);
 				ramen.setRname(name);
 				ramen.setUnitPrice(price);
 				ramen.setDescription(description);
 				ramen.setManufacturer(manufacturer);
 				ramen.setCategory(category);
 				ramen.setSpicyDegree(spicy);
 				ramen.setFilename(fileName);
 				ramen.setMaterial(material);
 			
 			}
 		
 	}
 			

	
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql = "select * from ramen where r_id = ?";
	
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,ramenId);
	rs = pstmt.executeQuery();
	
	if(rs.next()){
		if(fileName != null){
		sql = "UPDATE ramen SET r_name = ?, r_unitPrice=?, r_category=?, r_description=?, r_manufacturer=?, R_material=?, R_spicyDegree=?, r_filename=? WHERE r_id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,name);
		pstmt.setInt(2,price);
		pstmt.setString(3,category);
		pstmt.setString(4,description);
		pstmt.setString(5,manufacturer);
		pstmt.setString(6,material);
		pstmt.setInt(7,spicy);
		pstmt.setString(8,fileName);                                                                                        
		pstmt.setString(9,ramenId);
		pstmt.executeUpdate();
		
		}else{   
			sql = "UPDATE ramen SET r_name = ?, r_unitPrice=?,r_category=?,r_description=?,r_manufacturer=?,R_material=?,R_spicyDegree=? WHERE r_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,name);
			pstmt.setInt(2,price);
			pstmt.setString(3,category);
			pstmt.setString(4,description);
			pstmt.setString(5,manufacturer);
			pstmt.setString(6,material);
			pstmt.setInt(7,spicy);
			pstmt.setString(8,ramenId);
			
			pstmt.executeUpdate();
		
		}
			
	}
	
	if(rs !=null)
		rs.close();
	if(pstmt != null)
		pstmt.close();
	if(conn !=null)
		conn.close();
	
	response.sendRedirect("editRamen.jsp?edit=update");

%>