package dao;

import java.util.ArrayList;

import dto.Ramen;

public class RamenRepository {
	private ArrayList<Ramen> listOfRamens = new ArrayList<Ramen>();
	private static RamenRepository instance = new RamenRepository();

	public static RamenRepository getInstance() {
		return instance;
	}
	

	public RamenRepository() {
		Ramen Hotramen = new Ramen("R11","EggRamen",2550);
		Hotramen.setDescription("물을 3분간 끓이고 면부터 넣습니다. 그리고 스프를 넣고 맨 마지막에 계란을 젓지 않고 풀어줍니다.");
		Hotramen.setCategory("매운 라면");
		Hotramen.setManufacturer("진라면");
		Hotramen.setUnitPrice(2550);
		Hotramen.setMaterial("계란 1개, 물 500ml");
		Hotramen.setFilename("R11.jpeg");
		Hotramen.setSpicyDegree(3);

		Ramen Hotramen2 = new Ramen("R12","HackRamen",3500);
		Hotramen2.setDescription("물을 3분간 끓이고 면부터 넣습니다. 그리고 청양고추를 먼저 넣고 스프를 넣습니다. 그리고 계란을 따로 접시에 풀어서 그것을 라면에 넣어줍니다.");
		Hotramen2.setCategory("매운 라면");
		Hotramen2.setManufacturer("열라면");
		Hotramen2.setUnitPrice(4000);
		Hotramen2.setMaterial("계란 1개, 청양고추 2개, 물 550ml");
		Hotramen2.setFilename("R12.jpg");
		Hotramen2.setSpicyDegree(4);
		
		Ramen Hotramen3 = new Ramen("R13","ShrimpRamen",8000);
		Hotramen3.setDescription("새우 대하를 식초물에 넣습니다. 물기를 제거하고 냉동실에 보관합니다. 그 후 수염과 다리를 뜯어내고 껍질과 내장을 빼줍니다. 웍이 달궈지면 머리 다리 껍질을 넣고 볶음다음 으깨어 새우가루를 만듭니다. 웍에 야채수 물을 넣어 끓이고 스프를 넣고 면을 넣어 풀어지게 끓이고 콩나물, 새우, 팽이버섯, 약고추장, 새우가루, 굴소스 대파, 홍고추, 청고추를 순서대로 넣습니다. ");
		Hotramen3.setCategory("매운 라면");
		Hotramen3.setManufacturer("진라면");
		Hotramen3.setUnitPrice(8000);
		Hotramen3.setMaterial("새우, 야채수550ml, 콩나물,  새우,  팽이버섯, 약고추장, 새우가루, 굴소스 대파, 홍고추, 청고추 ");
		Hotramen3.setFilename("R13.jpg");
		Hotramen3.setSpicyDegree(3);	
	
		
		
		Ramen Blackramen = new Ramen("R21","ZZangRamen",2600);
		Blackramen.setDescription("물을 5분간 끓입니다.  그리고 면을 넣어 익힌다음 면이 촉촉해질 정도로만 물을 뺴줍니다. 그리고 짜장 스프와 고춧가루를 넣고 비벼줍니다. 그리고 후라이팬에 계란을 따로 부쳐서 라면과 같이 먹습니다.");
		Blackramen.setCategory("자장 라면");
		Blackramen.setManufacturer("진짜장");
		Blackramen.setUnitPrice(2600);
		Blackramen.setMaterial("계란 1개, 고춧가루, 물 500ml");
		Blackramen.setFilename("R21.jpeg");
		Blackramen.setSpicyDegree(2);
		
		Ramen Blackramen2 = new Ramen("R22","HOTBlackRamen",6600);
		Blackramen2.setDescription("베이컨을 한입 크기로 자르고 팬에 볶아줍니다. 베이컨이 익으면 꺼내주고, 그 기름에 계란을 써니사이드업으로 익혀줍니다. 물이 끓으면 면을 넣어 익힌우 적당량의 물을 남기고 물을 버려줍니다, 베이컨, 고춧가루 1T, 라면소스와 올리브오일을 모두 넣은 후 소스가 뭉치지 않도록 버무려주고  마지막에 치즈와 계란을 올려줍니다.");
		Blackramen2.setCategory("자장 라면");
		Blackramen2.setManufacturer("짜파게티");
		Blackramen2.setUnitPrice(6600);
		Blackramen2.setMaterial("고춧가루 1T, 베이컨 1줄, 계란 1개, 치즈 2장, 물 500ml");
		Blackramen2.setFilename("R22.jpg");
		Blackramen2.setSpicyDegree(4);
		
		Ramen Blackramen3 = new Ramen("R23","CheeseBlackRamen",4000);
		Blackramen3.setDescription("물이 끟으면 면과 건더기스프를 넣습니다. 면을 푹 익히지 말고 꼬들하니 덜 삶겨졌을 때 물을 따라 버립니다. 그리고 대파를 썰어 넣어 마저 끓입니다. 그 다음 분말 스프를 넣고 섞을 때에도 열기 그대로 유지되도록 가스불은 끄지 않습니다. 그리고 치즈를 올립니다.");
		Blackramen3.setCategory("자장 라면");
		Blackramen3.setManufacturer("짜파게티");
		Blackramen3.setUnitPrice(4000);
		Blackramen3.setMaterial("대파 1/2대, 슬라이스 체다치즈 1장");
		Blackramen3.setFilename("R23.jpg");
		Blackramen3.setSpicyDegree(1);
		
		Ramen Etcramen = new Ramen("R31","MayoRamen",5600);
		Etcramen.setDescription("끓는 물에 라면과 다시마 1조각을 넣어 삶아줍니다. 삶은 면을 따로 볼에 담아주세요. 팬에 기름을 두르고 약불에 대파와 마늘을 볶아줍니다. 마늘이 구워지면, 썰어 놓은 양배추와 숙주를 넣어 센불에서 빠르게 볶아주세요. 삶아 놓은 라면을 넣고 라면 스프와 굴소스를 넣어주세요. 소스와 면을 고루 섞어 중불에서 볶아주세요. 팬에 기름을 두르고 약불에서 대파와 마늘을 볶아주고 썰어 놓은 양배추와 숙주를 넣어 센불에서 빠르게 볶은 후 라면을 넣고 라면 스프와 굴소스를 부어 중불에서 함께 볶아줍니다. 볶은 라면을 그릇에 담고, 마요네즈를 뿌린 후 썰어 놓은 청양고추와 홍고추를 올리고 레드페퍼를 뿌린 후 마무리합니다.");
		Etcramen.setCategory("그외 라면");
		Etcramen.setManufacturer("라면사리");
		Etcramen.setUnitPrice(5600);
		Etcramen.setMaterial("다시마 1조각, 양배추 1/8개, 숙주 100g, 대파1/2대, 마늘 2쪽, 청양고추 1개, 홍고추 1개, 굴소스 2큰술, 마요네즈 3큰술, 레드페퍼");
		Etcramen.setFilename("R31.jpg");
		Etcramen.setSpicyDegree(2);
		
		
		
		listOfRamens.add(Hotramen);
		listOfRamens.add(Hotramen2);
		listOfRamens.add(Hotramen3);

		listOfRamens.add(Blackramen);
		listOfRamens.add(Blackramen2);
		listOfRamens.add(Blackramen3);
		
		listOfRamens.add(Etcramen);
		
	}
	public ArrayList<Ramen> getAllRamens(){
		return listOfRamens;
	}
	public Ramen getRamenById(String ramenId) {
		Ramen ramenById = null;
		
		for(int i =0;i<listOfRamens.size();i++) {
			Ramen ramen = listOfRamens.get(i);
			if(ramen !=null &&ramen.getRamenId() !=null &&ramen.
					getRamenId().equals(ramenId)) {
					ramenById = ramen;
					break;	
			
			}
		}
		return ramenById;
	}
	
	public void addRamen(Ramen ramen) {
		listOfRamens.add(ramen);
	}
	

	
}
