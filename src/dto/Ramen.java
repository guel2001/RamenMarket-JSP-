package dto;
import java.io.Serializable;


public class Ramen implements Serializable {
private static final long serialVersionUID = -4274700572038677000L;
	
	private String RamenId;
	private String Rname;
	private Integer unitPrice;
	private String description;
	private String manufacturer;
	private String category;
	private String material;
	private Integer SpicyDegree;
	
	private int quantity;
	
	


	public int getQuantity() {
		return quantity;
	}


	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}




	private String filename; //Ãß°¡
	
	
	
	public Ramen() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Integer getSpicyDegree() {
		return SpicyDegree;
	}




	public void setSpicyDegree(Integer spicyDegree) {
		SpicyDegree = spicyDegree;
	}



	public String getRamenId() {
		return RamenId;
	}




	public void setRamenId(String ramenId) {
		RamenId = ramenId;
	}




	public String getRname() {
		return Rname;
	}




	public void setRname(String rname) {
		Rname = rname;
	}




	public Integer getUnitPrice() {
		return unitPrice;
	}




	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}




	public String getDescription() {
		return description;
	}




	public void setDescription(String description) {
		this.description = description;
	}




	public String getManufacturer() {
		return manufacturer;
	}




	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}




	public String getCategory() {
		return category;
	}




	public void setCategory(String category) {
		this.category = category;
	}




	public String getMaterial() {
		return material;
	}




	public void setMaterial(String material) {
		this.material = material;
	}




	public String getFilename() {
		return filename;
	}




	public void setFilename(String filename) {
		this.filename = filename;
	}




	public Ramen(String RamenId, String Rname, Integer unitPrice) {
		super();
		this.RamenId = RamenId;
		this.Rname = Rname;
		this.unitPrice = unitPrice;
	}

	
}
