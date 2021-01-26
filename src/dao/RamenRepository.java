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
		Hotramen.setDescription("���� 3�а� ���̰� ����� �ֽ��ϴ�. �׸��� ������ �ְ� �� �������� ����� ���� �ʰ� Ǯ���ݴϴ�.");
		Hotramen.setCategory("�ſ� ���");
		Hotramen.setManufacturer("�����");
		Hotramen.setUnitPrice(2550);
		Hotramen.setMaterial("��� 1��, �� 500ml");
		Hotramen.setFilename("R11.jpeg");
		Hotramen.setSpicyDegree(3);

		Ramen Hotramen2 = new Ramen("R12","HackRamen",3500);
		Hotramen2.setDescription("���� 3�а� ���̰� ����� �ֽ��ϴ�. �׸��� û����߸� ���� �ְ� ������ �ֽ��ϴ�. �׸��� ����� ���� ���ÿ� Ǯ� �װ��� ��鿡 �־��ݴϴ�.");
		Hotramen2.setCategory("�ſ� ���");
		Hotramen2.setManufacturer("�����");
		Hotramen2.setUnitPrice(4000);
		Hotramen2.setMaterial("��� 1��, û����� 2��, �� 550ml");
		Hotramen2.setFilename("R12.jpg");
		Hotramen2.setSpicyDegree(4);
		
		Ramen Hotramen3 = new Ramen("R13","ShrimpRamen",8000);
		Hotramen3.setDescription("���� ���ϸ� ���ʹ��� �ֽ��ϴ�. ���⸦ �����ϰ� �õ��ǿ� �����մϴ�. �� �� ������ �ٸ��� ���� ������ ������ ���ݴϴ�. ���� �ޱ����� �Ӹ� �ٸ� ������ �ְ� �������� ������ ���찡�縦 ����ϴ�. ���� ��ä�� ���� �־� ���̰� ������ �ְ� ���� �־� Ǯ������ ���̰� �ᳪ��, ����, ���̹���, �������, ���찡��, ���ҽ� ����, ȫ����, û���߸� ������� �ֽ��ϴ�. ");
		Hotramen3.setCategory("�ſ� ���");
		Hotramen3.setManufacturer("�����");
		Hotramen3.setUnitPrice(8000);
		Hotramen3.setMaterial("����, ��ä��550ml, �ᳪ��,  ����,  ���̹���, �������, ���찡��, ���ҽ� ����, ȫ����, û���� ");
		Hotramen3.setFilename("R13.jpg");
		Hotramen3.setSpicyDegree(3);	
	
		
		
		Ramen Blackramen = new Ramen("R21","ZZangRamen",2600);
		Blackramen.setDescription("���� 5�а� ���Դϴ�.  �׸��� ���� �־� �������� ���� �������� �����θ� ���� ���ݴϴ�. �׸��� ¥�� ������ ���尡�縦 �ְ� ���ݴϴ�. �׸��� �Ķ����ҿ� ����� ���� ���ļ� ���� ���� �Խ��ϴ�.");
		Blackramen.setCategory("���� ���");
		Blackramen.setManufacturer("��¥��");
		Blackramen.setUnitPrice(2600);
		Blackramen.setMaterial("��� 1��, ���尡��, �� 500ml");
		Blackramen.setFilename("R21.jpeg");
		Blackramen.setSpicyDegree(2);
		
		Ramen Blackramen2 = new Ramen("R22","HOTBlackRamen",6600);
		Blackramen2.setDescription("�������� ���� ũ��� �ڸ��� �ҿ� �����ݴϴ�. �������� ������ �����ְ�, �� �⸧�� ����� ��ϻ��̵������ �����ݴϴ�. ���� ������ ���� �־� ������ ���緮�� ���� ����� ���� �����ݴϴ�, ������, ���尡�� 1T, ���ҽ��� �ø�������� ��� ���� �� �ҽ��� ��ġ�� �ʵ��� �������ְ�  �������� ġ��� ����� �÷��ݴϴ�.");
		Blackramen2.setCategory("���� ���");
		Blackramen2.setManufacturer("¥�İ�Ƽ");
		Blackramen2.setUnitPrice(6600);
		Blackramen2.setMaterial("���尡�� 1T, ������ 1��, ��� 1��, ġ�� 2��, �� 500ml");
		Blackramen2.setFilename("R22.jpg");
		Blackramen2.setSpicyDegree(4);
		
		Ramen Blackramen3 = new Ramen("R23","CheeseBlackRamen",4000);
		Blackramen3.setDescription("���� ������ ��� �Ǵ��⽺���� �ֽ��ϴ�. ���� ǫ ������ ���� �����ϴ� �� ������� �� ���� ���� �����ϴ�. �׸��� ���ĸ� ��� �־� ���� ���Դϴ�. �� ���� �и� ������ �ְ� ���� ������ ���� �״�� �����ǵ��� �������� ���� �ʽ��ϴ�. �׸��� ġ� �ø��ϴ�.");
		Blackramen3.setCategory("���� ���");
		Blackramen3.setManufacturer("¥�İ�Ƽ");
		Blackramen3.setUnitPrice(4000);
		Blackramen3.setMaterial("���� 1/2��, �����̽� ü��ġ�� 1��");
		Blackramen3.setFilename("R23.jpg");
		Blackramen3.setSpicyDegree(1);
		
		Ramen Etcramen = new Ramen("R31","MayoRamen",5600);
		Etcramen.setDescription("���� ���� ���� �ٽø� 1������ �־� ����ݴϴ�. ���� ���� ���� ���� ����ּ���. �ҿ� �⸧�� �θ��� ��ҿ� ���Ŀ� ������ �����ݴϴ�. ������ ��������, ��� ���� ����߿� ���ָ� �־� ���ҿ��� ������ �����ּ���. ��� ���� ����� �ְ� ��� ������ ���ҽ��� �־��ּ���. �ҽ��� ���� ��� ���� �ߺҿ��� �����ּ���. �ҿ� �⸧�� �θ��� ��ҿ��� ���Ŀ� ������ �����ְ� ��� ���� ����߿� ���ָ� �־� ���ҿ��� ������ ���� �� ����� �ְ� ��� ������ ���ҽ��� �ξ� �ߺҿ��� �Բ� �����ݴϴ�. ���� ����� �׸��� ���, ������ �Ѹ� �� ��� ���� û����߿� ȫ���߸� �ø��� �������۸� �Ѹ� �� �������մϴ�.");
		Etcramen.setCategory("�׿� ���");
		Etcramen.setManufacturer("���縮");
		Etcramen.setUnitPrice(5600);
		Etcramen.setMaterial("�ٽø� 1����, ����� 1/8��, ���� 100g, ����1/2��, ���� 2��, û����� 1��, ȫ���� 1��, ���ҽ� 2ū��, ������� 3ū��, ��������");
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
