1. project_final.WAR 파일을 이클립스에 import 한다.

2. 경로가 PC마다 다르므로 파일업로드 지정을 PC에서 프로젝트안의 resources/images폴더가 위치한  경로(????/project_final/WebContent/resources/images)를 변경한다.
(processAddRamen.jsp 에서 String realFolder =  "C://Users/JEC/eclipse-workspace/project_final/WebContent/resources/images"; 부분을 변경)

3.ramenmall 데이터베이스를 생성하여 MySql_5.1 /ramenmall.conn/ramenmall 으로 connection 후 ramen, orderinfo 테이블 생성(MySQL 설정을 utf8로 바꿔야된다.)
-> 프로젝트 내 sql 폴더 안 ramenmall.sql을 연결하여 작성된 쿼리문을 적용

create table if not exists ramen(

r_id varchar(10) not null,
r_name varchar(20),
r_unitPrice INTEGER,
r_category VARCHAR(10),
r_description LONGTEXT,
r_manufacturer VARCHAR(20),
R_material LONGTEXT,
R_spicyDegree INTEGER,
r_filename VARCHAR(20),
PRIMARY KEY (r_id)
);

create table if not exists orderinfo(
s_cartId varchar(50) not null,
s_name varchar(10),
s_shippingPhone varchar(20), s_country VARCHAR(10),
s_zipCode INTEGER,
s_addressName TEXT,
PRIMARY KEY (s_cartId)
);

*기본으로 등록된 ramen 레시피 insert

insert into ramen values('R11','EggRamen',2550,'매운 라면','물을 3분간 끓이고 면부터 넣습니다. 그리고 스프를 넣고 맨 마지막에 계란을 젓지 않고 풀어줍니다.','진라면','계란 1개, 물 500ml',3,'R11.jpeg');
insert into ramen values('R12','HackRamen',3500,'매운 라면','물을 3분간 끓이고 면부터 넣습니다. 그리고 청양고추를 먼저 넣고 스프를 넣습니다. 그리고 계란을 따로 접시에 풀어서 그것을 라면에 넣어줍니다.','열라면','계란 1개, 청양고추 2개, 물 550ml',4,'R12.jpg');

insert into ramen values('R13','ShrimpRamen',8000,'매운 라면','새우 대하를 식초물에 넣습니다. 물기를 제거하고 냉동실에 보관합니다. 그 후 수염과 다리를 뜯어내고 껍질과 내장을 빼줍니다. 웍이 달궈지면 머리 다리 껍질을 넣고 볶음다음 으깨어 새우가루를 만듭니다. 웍에 야채수 물을 넣어 끓이고 스프를 넣고 면을 넣어 풀어지게 끓이고 콩나물, 새우, 팽이버섯, 약고추장, 새우가루, 굴소스 대파, 홍고추, 청고추를 순서대로 넣습니다.','진라면','새우, 야채수550ml, 콩나물, 새우, 팽이버섯, 약고추장, 새우가루, 굴소스 대파, 홍고추, 청고추',3,'R13.jpg');



insert into ramen values('R21','ZZangRamen',2600,'자장 라면','물을 5분간 끓입니다.  그리고 면을 넣어 익힌다음 면이 촉촉해질 정도로만 물을 빼줍니다. 그리고 짜장 스프와 고춧가루를 넣고 비벼줍니다. 그리고 후라이팬에 계란을 따로 부쳐서 라면과 같이 먹습니다.','진짜장','계란 1개, 고춧가루, 물 500ml',2,'R21.jpeg');

insert into ramen values('R22','HotBlackRamen',6600,'자장 라면','베이컨을 한입 크기로 자르고 팬에 볶아줍니다. 베이컨이 익으면 꺼내주고, 그 기름에 계란을 써니사이드업으로 익혀줍니다. 물이 끓으면 면을 넣어 익힌우 적당량의 물을 남기고 물을 버려줍니다, 베이컨, 고춧가루 1T, 라면소스와 올리브오일을 모두 넣은 후 소스가 뭉치지 않도록 버무려주고  마지막에 치즈와 계란을 올려줍니다.','짜파게티','고춧가루 1T, 베이컨 1줄, 계란 1개, 치즈 2장, 물 500ml',4,'R22.jpg');
insert into ramen values('R23','CheeseBlackRamen',4000,'자장 라면','물이 끟으면 면과 건더기스프를 넣습니다. 면을 푹 익히지 말고 꼬들하니 덜 삶겨졌을 때 물을 따라 버립니다. 그리고 대파를 썰어 넣어 마저 끓입니다. 그 다음 분말 스프를 넣고 섞을 때에도 열기 그대로 유지되도록 가스불은 끄지 않습니다. 그리고 치즈를 올립니다.','짜파게티','대파 1/2대, 슬라이스 체다치즈 1장',1,'R23.jpg');
insert into ramen values('R31','MayoRamen',5600,'그외 라면','끓는 물에 라면과 다시마 1조각을 넣어 삶아줍니다. 삶은 면을 따로 볼에 담아주세요. 팬에 기름을 두르고 약불에 대파와 마늘을 볶아줍니다. 마늘이 구워지면, 썰어 놓은 양배추와 숙주를 넣어 센불에서 빠르게 볶아주세요. 삶아 놓은 라면을 넣고 라면 스프와 굴소스를 넣어주세요. 소스와 면을 고루 섞어 중불에서 볶아주세요. 팬에 기름을 두르고 약불에서 대파와 마늘을 볶아주고 썰어 놓은 양배추와 숙주를 넣어 센불에서 빠르게 볶은 후 라면을 넣고 라면 스프와 굴소스를 부어 중불에서 함께 볶아줍니다. 볶은 라면을 그릇에 담고, 마요네즈를 뿌린 후 썰어 놓은 청양고추와 홍고추를 올리고 레드페퍼를 뿌린 후 마무리합니다.','라면사리','다시마 1조각, 양배추 1/8개, 숙주 100g, 대파1/2대, 마늘 2쪽, 청양고추 1개, 홍고추 1개, 굴소스 2큰술, 마요네즈 3큰술, 레드페퍼',2,'R31.jpg');


4.톰켓 서버의 tomcat-users.xml 에서  
<role rolename="admin"/>
<user username="admin" password="admin1234" roles="admin"/> 추가

5. 프로젝트 폴더안에 이미지 파일을 업로드 하므로 바로 새로고침이 되기 위해 Window - Preferences - General - Workspace - Refresh using native hooks or polling 체크
