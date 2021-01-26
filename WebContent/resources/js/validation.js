function CheckAddRamen(){
	var ramenId = document.getElementById("ramenId");
	var name = document.getElementById("name");
	var unitPrice = document.getElementById("unitPrice");
	var material = document.getElementById("material");
	var description = document.getElementById("description");
	var manufacturer = document.getElementById("manufacturer");
	var category = document.getElementById("category");
	
	if(!check(/^R[0-9]{1,9}$/,ramenId,
		"[라면 코드]\nR과 숫자를 조합하여 2~10자까지 입력하세요\n첫 글자는 반드시 R로 시작하세요"))
		return false;
	
	
	if(name.value.length<4||name.value.length>12){
		alert("[라면명]\n최소 4자에서 최대 12자까지 입력하세요");
		name.select();
		name.focus();
		return false;
	}
	if(unitPrice.value.length == 0 || isNaN(unitPrice.value)){
		alert("[재료비]\n숫자만 입력하세요");
		unitPrice.select();
		unitPrice.focus();
		return false;
	}
	if(unitPrice.value <0){
		alert("[재료비]\n음수는 입력할 수 없습니다.");
		unitPrice.select()
		unitPrice.focus();
		return false;
	}else if (!check(/^\d+(?:[.]?[\d]?[\d])?$/,unitPrice,"[가격]\n소수점 둘째 자리까지만 입력하세요"))
		return false;
	
	if(manufacturer.value.length == 0){
		alert("쓰인라면을 입력해주세요");
		manufacturer.select();
		manufacturer.focus();
		return false;
	}		
			
	if(material.value.length == 0 ){
		alert("재료를 입력해주세요");
		material.select();
		material.focus();
		return false;
	}		
			
	if(description.value.length == 0){
		alert("레시피 설명을 입력해주세요");
		description.select();
		description.focus();
		return false;
	}		
		
	if(category.value==""){
		alert("카테고리를 지정해주세요.");
		category.select();
		category.focus();
		return false;
	}		
		
		
	
	
	function check(regExp,e,msg){
	
		if(regExp.test(e.value)){
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
		
	}
	document.newRamen.submit()
	}
	
function CheckInfo(){
	
	var name = document.getElementById("name");
	var shippingPhone = document.getElementById("shippingPhone");
	var country = document.getElementById("country");
	var zipCode = document.getElementById("Zipcode");
	var addressName = document.getElementById("addressName");

	
		
			
	if(name.value.length == 0 ){
		alert("이름을 입력해주세요.");
		name.select();
		name.focus();
		return false;
	}		
		

	if(!check(/^\d{3}-\d{3,4}-\d{4}$/,shippingPhone,
		"000-0000-0000 형식으로 입력해주세요"))
		return false;
	
	if(country.value.length == 0){
		alert("국가명을 입력해주세요.");
		country.select();
		country.focus();
		return false;
	}		
		
	if(zipCode.value.length == 0 || isNaN(zipCode.value)){
		alert("우편번호를 확인해주세요.");
		zipCode.select();
		zipCode.focus();
		return false;
	}		
		
 	if(addressName.value.length == 0){
		alert("주소를 입력해주세요");
		addressName.select();
		addressName.focus();
		return false;
	}
		
	
	
	function check(regExp,e,msg){
	
		if(regExp.test(e.value)){
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
		
	}
	document.order.submit()
	}

